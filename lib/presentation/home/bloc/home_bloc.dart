import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_invest/presentation/home/bloc/home_state.dart';
import 'package:tap_invest/presentation/home/domain/repositories/home_repository.dart';

part 'home_event.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository repository;

  HomeBloc(this.repository) : super(HomeLoading()) {
    on<FetchResults>((event, emit) async {
      emit(HomeLoading());
      try {
        final results = await repository.getResults();
        emit(HomeLoaded(results));
      } catch (e) {
        emit(HomeError("Failed to load data"));
      }
    });
  }
}
