import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:unsplash/data/model/photo.dart';
import 'package:unsplash/data/repository/photo_repository.dart';

part 'event.dart';
part 'state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PhotoRepository photoRepository;

  PostBloc(this.photoRepository) : super(InitialState()) {
    on<PostEvent>((event, emit) async {
      if (event is LoadEvent) {
        emit(LoadingState());
        final result = await photoRepository.getPhotos();
        if (result is String) {
          emit(ErrorState(errorMessage: result));
        } else{
          emit(LoadedState(posts: result));
        }
      }
    });
  }
}