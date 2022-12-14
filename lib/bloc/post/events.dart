part of 'bloc.dart';

abstract class PostEvent extends Equatable {
  const PostEvent();

  @override
  List<Object> get props => [];
}

class LoadEvent extends PostEvent {}

class LoadMoreEvent extends PostEvent {}

class ClearEvent extends PostEvent {}