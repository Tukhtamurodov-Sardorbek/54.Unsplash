import 'server_error.dart';

class ResponseHandler<T> {
  ServerError? _error;
  T? _data;

  ServerError? get error => _error;
  T? get data => _data;

  set error(ServerError? error) {
    _error = error;
  }

  set data(T? data) {
    _data = data;
  }
}