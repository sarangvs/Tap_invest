import 'package:equatable/equatable.dart';
import 'package:tap_invest/data/model/result_model.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<ResultModel> results;
  HomeLoaded(this.results);

  @override
  List<Object> get props => [results];
}

class HomeError extends HomeState {
  final String message;
  HomeError(this.message);

  @override
  List<Object> get props => [message];
}
