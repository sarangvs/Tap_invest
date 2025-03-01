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
    on<FetchResults>(_onFetchResults);
    on<SearchResults>(_onSearchResults);
  }

  /// Handles fetching results from the repository
  Future<void> _onFetchResults(
      FetchResults event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      final results = await repository.getResults();
      emit(HomeLoaded(results: results, filteredResults: results));
    } catch (e) {
      emit(HomeError("Failed to load data"));
    }
  }

  /// Handles searching within locally available results
  Future<void> _onSearchResults(
      SearchResults event, Emitter<HomeState> emit) async {
    if (state is HomeLoaded) {
      final currentState = state as HomeLoaded;
      final query = event.query.toLowerCase();

      final filtered = query.isEmpty
          ? currentState.results
          : currentState.results
              .where((result) =>
                  result.companyName.toLowerCase().contains(query) ||
                  result.isin.toLowerCase().contains(query))
              .toList();
      await Future.delayed(const Duration(milliseconds: 100));
      emit(currentState.copyWith(filteredResults: filtered));
    }
  }
}
