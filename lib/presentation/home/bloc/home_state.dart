import 'package:equatable/equatable.dart';
import 'package:tap_invest/data/model/result_model.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<ResultModel> results;
  final List<ResultModel> filteredResults;

  HomeLoaded({required this.results, required this.filteredResults});

  HomeLoaded copyWith(
      {List<ResultModel>? results, List<ResultModel>? filteredResults}) {
    return HomeLoaded(
      results: results ?? this.results,
      filteredResults: filteredResults ?? this.filteredResults,
    );
  }

  @override
  List<Object> get props => [results, filteredResults];
}

class HomeError extends HomeState {
  final String message;
  HomeError(this.message);

  @override
  List<Object> get props => [message];
}
