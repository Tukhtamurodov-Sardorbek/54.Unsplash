import 'package:dio/dio.dart';
import 'package:unsplash/data/model/photo.dart';
import 'package:unsplash/data/provider/api_client.dart';
import 'package:unsplash/data/provider/response_handler.dart';
import 'package:unsplash/data/provider/server_error.dart';

class PhotoRepository {
  ApiClient apiClient = ApiClient();

  Future<ResponseHandler<List<Photo>>> _fetchPhotos() async {
    List<Photo>? photos;

    String url = 'https://api.unsplash.com/photos';

    try {
      List<dynamic>? posts = await apiClient.GET(api: url, params: ApiClient.paramsGET(page: 1, perPage: 30));
      if(posts != null){
        photos = posts.map((post) => Photo.fromJson(post)).toList();
      }
    } catch (error, stacktrace) {
      print('\t Exception occurred: $error stacktrace: $stacktrace');
      return ResponseHandler()..error = ServerError.withError(error as DioError);
    }

    return ResponseHandler()..data = photos;
  }


  Future<dynamic> getPhotos() async {
    final response = await _fetchPhotos();
    print('🍀 ****** PHOTO REPOSITORY ******');
    print('Post Color: ${response.data?[0].color ?? 'No Post'}');
    print('******************************');

    if (response.data != null) {
      return response.data;
    } else {
      final error = ServerError.userFriendlyError(response.error?.errorMessage);
      return error;
    }
  }
}