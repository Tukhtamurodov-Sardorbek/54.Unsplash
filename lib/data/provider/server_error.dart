import 'package:dio/dio.dart';

class ServerError implements Exception{
  String? _errorMessage;
  int? _statusCode;

  String? get errorMessage => _errorMessage;
  int? get statusCode => _statusCode;

  Map<DioErrorType, String> errors = {
    DioErrorType.cancel: DioErrorType.cancel.name,
    DioErrorType.connectTimeout: DioErrorType.connectTimeout.name,
    DioErrorType.receiveTimeout: DioErrorType.receiveTimeout.name,
    DioErrorType.sendTimeout: DioErrorType.sendTimeout.name,
    DioErrorType.other: DioErrorType.other.name,
  };

  static final Map<String, String> _userFriendlyErrors = {
    DioErrorType.cancel.name: 'Cancelled',
    DioErrorType.connectTimeout.name: 'Connection timeout',
    DioErrorType.receiveTimeout.name: 'Connection timeout',
    DioErrorType.sendTimeout.name: 'Connection timeout',
    DioErrorType.other.name: 'Something went wrong...',
  };

  ServerError.withError(DioError error){
    _statusCode = error.response?.statusCode ?? 500;

    if(errors.containsKey(error.type)){
      _errorMessage = errors[error.type]!;
    } else if(error.type == DioErrorType.response){
      _errorMessage = _statusCodes(error.response?.statusCode ?? 0, error.response?.data ?? '');
    } else{
      _errorMessage = DioErrorType.other.name;
    }
  }

  static String userFriendlyError(String? error){
    String _userFriendlyError = '';

    if(error != null){
      if(_userFriendlyErrors.containsKey(error)){
        _userFriendlyError = _userFriendlyErrors[error]!;
      } else{
        _userFriendlyError = error;
      }
    } else {
      _userFriendlyError = 'Something went wrong...';
    }

    return _userFriendlyError;
  }

  static String _statusCodes(int statusCode, dynamic error){
    switch(statusCode){
      // * Informational
      case 100: return 'Continue';
      case 101: return 'Switching protocols';
      case 102: return 'Processing';
      case 103: return 'Early hints';

      // * Successful
      case 200: return 'OK';
      case 201: return 'Created';
      case 202: return 'Accepted';
      case 203: return 'Non-Authoritative Info';
      case 204: return 'No Content';
      case 205: return 'Reset Content';
      case 206: return 'Partial Content';
      case 207: return 'Multi-Status';
      case 208: return 'Already reported';
      case 226: return 'IM Used';

      // * Redirection
      case 300: return 'Multiple choices';
      case 301: return 'Moved Permanently';
      case 302: return 'Found("Moved Temporarily")';
      case 303: return 'See other';
      case 304: return 'Not modified';
      case 305: return 'Use proxy';
      case 306: return 'Switch proxy';
      case 307: return 'Temporary Redirect';
      case 308: return 'Permanent Redirect';

      // * Client Error
      case 400: return 'Bad request';
      case 401: return 'Unauthorized';
      case 402: return 'Payment required';
      case 403: return 'Forbidden';
      case 404: return 'Not found';
      case 405: return 'Method not allowed';
      case 406: return 'Not acceptable';
      case 407: return 'Proxy authentication required';
      case 408: return 'Request timeout';
      case 409: return 'Conflict';
      case 410: return 'Gone';
      case 411: return 'Length required';
      case 412: return 'Precondition failed';
      case 413: return 'Payload too large';
      case 414: return 'URI too long';
      case 415: return 'Unsupported media type';
      case 416: return 'Range not satisfiable';
      case 417: return 'Expectation failed';
      case 418: return 'I\'m a teapot';
      case 421: return 'Misdirected request';
      case 422: return 'Unprocessable entity';
      case 423: return 'Locked';
      case 424: return 'Failed dependency';
      case 425: return 'Too early';
      case 426: return 'Upgrade required';
      case 428: return 'Precondition required';
      case 429: return 'Too many requests';
      case 431: return 'Request header fields too large';
      case 451: return 'Unavailable for legal reasons';

      // * Server Error
      case 500: return 'Internal server error';
      case 501: return 'Not implemented';
      case 502: return 'Bad gateway';
      case 503: return 'Service unavailable';
      case 504: return 'Gateway timeout';
      case 505: return 'Http version not supported';
      case 506: return 'Variant also negotiates';
      case 507: return 'Insufficient storage';
      case 508: return 'Loop detected';
      case 510: return 'Not extended';
      case 511: return 'Network authentication required';


      default: return 'Something went wrong...';
    }
  }
}