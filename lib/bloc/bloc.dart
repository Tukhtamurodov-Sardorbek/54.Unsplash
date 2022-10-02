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
        List<Photo>? posts = await photoRepository.getPhotos();
        if (posts == null) {
          emit(ErrorState());
        } else {
          emit(LoadedState(posts: posts));
        }
      }
    });
  }
}