part of 'organization_bloc.dart';

abstract class OrganizationState extends Equatable {
  @override
  List<Object> get props => [];
}

class OrganizationLoading extends OrganizationState {}

class OrganizationLoaded extends OrganizationState {
  final OrganisationModel organisationDetails;

  OrganizationLoaded({required this.organisationDetails});

  OrganizationLoaded copyWith({OrganisationModel? organisationDetails}) {
    return OrganizationLoaded(
      organisationDetails: organisationDetails ?? this.organisationDetails,
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
