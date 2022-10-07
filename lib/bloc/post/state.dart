part of 'bloc.dart';

abstract class PostState extends Equatable {
  final List<LocalPost> posts;
  const PostState({required this.posts});

  @override
  List<Object> get props => [posts];
}

class InitialState extends PostState {
  InitialState() : super(posts: []);
}

class LoadingState extends PostState {
  LoadingState() : super(posts: []);
}

class LoadedState extends PostState {
  final List<LocalPost> posts;
  const LoadedState({required this.posts}) : super(posts: posts);
}

class ErrorState extends PostState {
  final String errorMessage;
  ErrorState({required this.errorMessage}) : super(posts: []);
}