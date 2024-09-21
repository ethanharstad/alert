import {FieldValue} from "firebase-admin/firestore";
import * as logger from "firebase-functions/logger";
import {
  onDocumentWrittenWithAuthContext,
} from "firebase-functions/v2/firestore";

exports.auditor = onDocumentWrittenWithAuthContext(
  "{collectionId}/{documentId}",
  (event) => {
    const snapshot = event.data?.after;
    if (!snapshot) {
      return;
    }

    const data = snapshot.data();
    const {authType, authId} = event;
    logger.info(
      "auditor",
      event.params.collectionId,
      event.params.documentId,
      authType,
      authId
    );
    if (data?.updatedBy != null) {
      return;
    }

    return event.data?.after.ref.set({
      updatedBy: authId,
      updatedAt: FieldValue.serverTimestamp(),
    },
    {merge: true}
    );
  });

