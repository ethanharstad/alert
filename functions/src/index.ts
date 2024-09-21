import {FieldValue} from "firebase-admin/firestore";
import * as logger from "firebase-functions/logger";
import {
  onDocumentWrittenWithAuthContext,
} from "firebase-functions/v2/firestore";

exports.auditor = onDocumentWrittenWithAuthContext(
  "{collectionId}/{documentId}",
  (event) => {
    const eventData = event.data;
    const {authType, authId} = event;
    logger.info(
      "auditor",
      event.params.collectionId,
      event.params.documentId,
      authType,
      authId
    );
    if (!eventData) {
      return;
    }

    const snapshot = event.data?.after;
    if (!snapshot) {
      // No snapshot data
      return;
    }
    // const data = snapshot.data();
    const updates = new Map<string, unknown>();

    const before = eventData.before.exists;
    const after = eventData.after.exists;
    if (before === false && after === true) {
      // Create
      updates.set("createdBy", authId);
      updates.set("createdAt", FieldValue.serverTimestamp());
      updates.set("updatedBy", authId);
      updates.set("updatedAt", FieldValue.serverTimestamp());
    } else if (before === true && after === true) {
      // Update
      if (authType != "unknown") {
        updates.set("updatedBy", authId);
        updates.set("updatedAt", FieldValue.serverTimestamp());
      }
    } else if (before === true && after === false) {
      // Delete
      return;
    } else {
      throw new Error(
        `Unknown Firestore event! before:${before}, after:${after}`
      );
    }

    if (updates.size > 0) {
      return event.data?.after.ref.set(
        Object.fromEntries(updates),
        {merge: true},
      );
    }

    // No updates needed
    return;
  });

