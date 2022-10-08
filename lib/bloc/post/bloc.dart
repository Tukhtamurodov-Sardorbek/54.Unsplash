import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:unsplash/data/local/posts.dart';
import 'package:unsplash/data/local/hive_database.dart';
import 'package:unsplash/data/model/post.dart';
import 'package:unsplash/data/repository/photo_repository.dart';

part 'events.dart';
part 'states.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository photoRepository;
  int page = 1;
  // List<LocalPost> allPosts = [];

  PostBloc(this.photoRepository) : super(InitialState()) {
    on<LoadEvent>(_onLoadEvent);
    on<LoadMoreEvent>(_onLoadMoreEvent);
    on<ClearEvent>(_onClearEvent);
  }

  FutureOr<void> _onLoadEvent(LoadEvent event, Emitter<PostState> emit) async{
    emit(LoadingState(posts: state.posts));
    final result = await photoRepository.getPosts(page: 1);
    if (result is String) {
      await Future.delayed(const Duration(seconds: 6));
      emit(ErrorState(errorMessage: result));
    } else{
      await _addPosts(posts: result);
      /// TODO: In case there is no Internet
      // await LocalDatabase.addPosts(posts: result);
      // final posts = LocalDatabase.getPosts().values.toList();
      await Future.delayed(const Duration(seconds: 6));
      // emit(LoadedState(posts: allPosts));
      // emit(LoadedState(posts: posts));
      emit(LoadedState(posts: state.posts));
    }
  }

  FutureOr<void> _onLoadMoreEvent(LoadMoreEvent event, Emitter<PostState> emit) async{
    emit(LoadingMoreState(posts: state.posts));
    print('PAGE: $page');
    final result = await photoRepository.getPosts(page: page + 1);
    if (result is String) {
      emit(ErrorState(errorMessage: result));
    } else{
      page += 1;
      print('PAGE: $page');
      await _addPosts(posts: result);
      /// TODO: In case there is no Internet
      // await LocalDatabase.addPosts(posts: result);
      // final posts = LocalDatabase.getPosts().values.toList();
      // emit(LoadedState(posts: allPosts));
      // emit(LoadedState(posts: posts));
      emit(LoadedState(posts: state.posts));
    }
  }

  FutureOr<void> _onClearEvent(ClearEvent event, Emitter<PostState> emit) async{
    emit(LoadingState(posts: state.posts));
    final result = await photoRepository.getPosts(page: 1);
    // await Future.delayed(const Duration(seconds: 3));
    if (result is String) {
      emit(ErrorState(errorMessage: result));
    } else{
      page = 1;
      print('PAGE: $page');
      // state.posts = [];
      await _addPosts(posts: result);
      await LocalDatabase.removePosts();
      // await LocalDatabase.addPosts(posts: result);
      // final posts = LocalDatabase.getPosts().values.toList();
      // emit(LoadedState(posts: allPosts));
      // emit(LoadedState(posts: posts));
      emit(LoadedState(posts: state.posts));
    }
  }


  Future<void> _addPosts({required List<Post> posts}) async{
    final allPostsID = state.posts.map((e) => e.postId).toList();

    int addedPostsNumber = 0;
    print('**** ADAPTED BEFORE: ${state.posts.length} ****');
    for(var post in posts){
      bool isExist = allPostsID.contains(post.id);
      if(!isExist){
        addedPostsNumber += 1;
        final p = LocalPost(
          postId: post.id,
          postWidth: post.width,
          postHeight: post.height,
          postColor: post.color,
          postBlurHash: post.blur_hash,
          postDescription: post.description,
          postAltDescription: post.alt_description,
          postFullURL: post.urls.full,
          postSmallURL: post.urls.small,
          postDownloadLink: post.links.download,
          userID: post.user.id,
          userName: post.user.username,
          name: post.user.name,
          firstName: post.user.first_name,
          lastName: post.user.last_name,
          smallProfileImage: post.user.profile_image.small,
          totalPhotos: post.user.total_photos,
          totalLikes: post.user.total_likes,
          instagramUsername: post.user.social.instagram_username,
          twitterUsername: post.user.social.twitter_username,
          paypalEmail: post.user.social.paypal_email,
          portfolio_url: post.user.social.portfolio_url,
        );

        state.posts.add(p);
      }
    }
    print('**** ADAPTED AFTER: ${state.posts.length} ****');
    print('**** NEW POSTS: ${posts.length} <=> ADDED: $addedPostsNumber ****');

    await LocalDatabase.removePosts();
    await LocalDatabase.setPosts(posts: state.posts);
  }
}