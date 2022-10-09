part of 'bloc.dart';

// @freezed
// class PostState with _$PostState {
//
//   factory PostState({required List<LocalPost> posts}) = _PostState;
//   const factory PostState.initial() = InitialState;
//   const factory PostState.loading({required List<LocalPost> posts}) = LoadingState;
//   const factory PostState.loadingMore({required List<LocalPost> posts}) = LoadingMoreState;
//   const factory PostState.loaded({required List<LocalPost> posts}) = LoadedState;
//   const factory PostState.error({required String errorMessage}) = ErrorState;
// }


abstract class PostState extends Equatable {
  List<LocalPost> posts;
  PostState({required this.posts});

  @override
  List<Object> get props => [posts];
}

class InitialState extends PostState {
  InitialState() : super(posts: []);
}

class LoadingState extends PostState {
  final List<LocalPost> posts;
  LoadingState({required this.posts}) : super(posts: posts);
}

class LoadingMoreState extends PostState {
final List<LocalPost> posts;
LoadingMoreState({required this.posts}) : super(posts: posts);
}

class LoadedState extends PostState {
  final List<LocalPost> posts;
  LoadedState({required this.posts}) : super(posts: posts);
}

class ErrorState extends PostState {
  final String errorMessage;
  ErrorState({required this.errorMessage}) : super(posts: []);
}
