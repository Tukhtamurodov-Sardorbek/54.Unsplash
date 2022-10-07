part of 'bloc.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class InitialState extends PostState {}

class LoadingState extends PostState {}

class LoadedState extends PostState {
  final List<LocalPost> posts;
  const LoadedState({required this.posts});
}

class ErrorState extends PostState {
  final String errorMessage;
  const ErrorState({required this.errorMessage});
}