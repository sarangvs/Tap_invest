import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'organization_event.dart';
part 'organization_state.dart';
part 'organization_bloc.freezed.dart';

class OrganizationBloc extends Bloc<OrganizationEvent, OrganizationState> {
  OrganizationBloc() : super(_Initial()) {
    on<OrganizationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
