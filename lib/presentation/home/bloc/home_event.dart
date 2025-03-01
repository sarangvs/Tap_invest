part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchResults extends HomeEvent {}

class SearchResults extends HomeEvent {
  final String query;

  SearchResults(this.query);

  @override
  List<Object> get props => [query];
}
