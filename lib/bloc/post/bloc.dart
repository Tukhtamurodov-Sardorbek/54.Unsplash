import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:unsplash/data/local/posts.dart';
import 'package:unsplash/data/local/hive_database.dart';
import 'package:unsplash/data/repository/photo_repository.dart';

part 'event.dart';
part 'state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository photoRepository;

  PostBloc(this.photoRepository) : super(InitialState()) {
    on<LoadEvent>(_onLoadEvent);
    on<LoadMoreEvent>(_onLoadMoreEvent);
    on<ClearEvent>(_onClearEvent);
  }

  FutureOr<void> _onLoadEvent(LoadEvent event, Emitter<PostState> emit) async{
    emit(LoadingState());
    final result = await photoRepository.getPosts(page: 1);
    if (result is String) {
      await Future.delayed(const Duration(seconds: 6));
      emit(ErrorState(errorMessage: result));
    } else{
      await LocalDatabase.addPosts(posts: result);
      /// TODO: In case there is no Internet
      final posts = LocalDatabase.getPosts().values.toList();
      await Future.delayed(const Duration(seconds: 6));
      emit(LoadedState(posts: posts));
    }
  }

  FutureOr<void> _onLoadMoreEvent(LoadMoreEvent event, Emitter<PostState> emit) async{
    int page = LocalDatabase.getPage() + 1;
    print('PAGE: ${LocalDatabase.getPage()} => $page');
    final result = await photoRepository.getPosts(page: page);
    if (result is String) {
      emit(ErrorState(errorMessage: result));
    } else{
      await LocalDatabase.setPage(page);
      await LocalDatabase.addPosts(posts: result);
      final posts = LocalDatabase.getPosts().values.toList();
      emit(LoadedState(posts: posts));
    }
  }

  FutureOr<void> _onClearEvent(ClearEvent event, Emitter<PostState> emit) async{
    emit(LoadingState());
    final result = await photoRepository.getPosts(page: 1);
    // await Future.delayed(const Duration(seconds: 3));
    if (result is String) {
      emit(ErrorState(errorMessage: result));
    } else{
      await LocalDatabase.setPage(1);
      await LocalDatabase.removePosts();
      await LocalDatabase.addPosts(posts: result);
      final posts = LocalDatabase.getPosts().values.toList();
      emit(LoadedState(posts: posts));
    }
  }
}