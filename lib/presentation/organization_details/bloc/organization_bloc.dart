import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_invest/data/model/organization_details_model.dart';
import 'package:tap_invest/presentation/organization_details/domain/organization_repository.dart';

part 'organization_event.dart';
part 'organization_state.dart';

@injectable
class OrganizationBloc extends Bloc<OrganizationEvent, OrganizationState> {
  final OrganizationRepository repository;

  OrganizationBloc(this.repository) : super(OrganizationLoading()) {
    on<OrganizationDetails>(_onGetOrganizationDetails);
  }

  /// Handles fetching results from the repository
  Future<void> _onGetOrganizationDetails(
      OrganizationDetails event, Emitter<OrganizationState> emit) async {
    emit(OrganizationLoading());
    try {
      final results = await repository.getOrganizationDetails();
      emit(OrganizationLoaded(organisationDetails: results));
    } catch (e) {
      emit(OrganizationError("Failed to load data"));
    }
  }
}
