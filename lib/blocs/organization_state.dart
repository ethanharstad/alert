part of 'organization_bloc.dart';

@freezed
sealed class OrganizationBlocState with _$OrganizationBlocState {
  const factory OrganizationBlocState.error() = OrganizationBlocError;

  const factory OrganizationBlocState.loading() = OrganizationBlocLoading;

  const factory OrganizationBlocState.empty() = OrganizationBlocEmpty;

  const factory OrganizationBlocState.data({
    required List<Organization> organizations,
    Organization? selectedOrganization,
  }) = OrganizationBlocData;
}
