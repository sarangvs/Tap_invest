part of 'organization_bloc.dart';

@freezed
class OrganizationEvent with _$OrganizationEvent {
  const factory OrganizationEvent.started() = _Started;
}
