import 'failure.dart';

///- `SocketException` - возникает при ошибке сокета, например, если устройство потеряло соединение с интернетом;
// - `TimeoutException` - возникает, если запрос не был выполнен за отведенное время;
// - `FormatException` - возникает, если ответ сервера имеет неправильный формат;
// - `http.ClientException` - возникает, если произошла ошибка при работе с клиентом `http`;
// - `Exception` - общее исключение, которое может возникнуть при работе с сетью.

abstract class Error implements Exception {
  Failure getFailure();
}

class ServerError implements Error {
  @override
  getFailure() {
    return ServerFailure();
  }
}

class UnauthorizedError implements Error {
  @override
  getFailure() {
    return UnauthorizedFailure();
  }
}

class EmailAndPassError implements Error {
  @override
  getFailure() {
    return EmailAndPassFailure();
  }
}

class NotFoundError implements Error {
  @override
  getFailure() {
    return NotFoundFailure();
  }
}

class NetworkError implements Error {
  @override
  getFailure() {
    return NetworkFailure();
  }
}

// class CacheError implements Error {
//   @override
//   getFailure() {
//     // TODO: implement getFailure
//     throw UnimplementedError();
//   }
// }

class SocketError implements Error {
  @override
  getFailure() {
    return SocketFailure();
  }
}
