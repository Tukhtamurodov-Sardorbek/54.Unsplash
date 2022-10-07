import 'package:dio/dio.dart';
import 'package:unsplash/data/model/post.dart';
import 'package:unsplash/data/provider/api_client.dart';
import 'package:unsplash/data/provider/response_handler.dart';
import 'package:unsplash/data/provider/server_error.dart';

class PostRepository {
  ApiClient apiClient = ApiClient();

  Future<ResponseHandler<List<Post>>> _fetchPosts({required int page, int perPage = 30}) async {
    List<Post>? posts;

    String url = 'https://api.unsplash.com/photos';

    try {
      List<dynamic>? _posts = await apiClient.GET(api: url, params: ApiClient.paramsGET(page: page, perPage: perPage));
      if(_posts != null){
        posts = _posts.map((post) => Post.fromJson(post)).toList();
      }
    } catch (error, stacktrace) {
      print('\t Exception occurred: $error stacktrace: $stacktrace');
      return ResponseHandler()..error = ServerError.withError(error as DioError);
    }

    return ResponseHandler()..data = posts;
  }


  Future<dynamic> getPosts({required int page, int perPage = 30}) async {
    final response = await _fetchPosts(page: page, perPage: perPage);
    print('🍀 ****** POST REPOSITORY ******');
    print('IS RESPONSE NULL: ${response.data == null}');
    print('******************************');

    if (response.data != null) {
      return response.data;
    } else {
      final error = ServerError.userFriendlyError(response.error?.errorMessage);
      return error;
    }
  }
}