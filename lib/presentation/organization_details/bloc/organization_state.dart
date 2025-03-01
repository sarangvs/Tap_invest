part of 'organization_bloc.dart';

abstract class OrganizationState extends Equatable {
  @override
  List<Object> get props => [];
}

class OrganizationLoading extends OrganizationState {}

class OrganizationLoaded extends OrganizationState {
  final List<OrganisationModel> organisationDetails;

  OrganizationLoaded({required this.organisationDetails});

  OrganizationLoaded copyWith({List<OrganisationModel>? organisationResults}) {
    return OrganizationLoaded(
      organisationDetails: organisationResults ?? organisationDetails,
    );
  }

  @override
  List<Object> get props => [organisationDetails];
}

class OrganizationError extends OrganizationState {
  final String message;
  OrganizationError(this.message);

  @override
  List<Object> get props => [message];
}
