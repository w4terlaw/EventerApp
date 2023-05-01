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
    // TODO: implement getFailure
    throw UnimplementedError();
  }
}

class UnauthorizedError implements Error {
  @override
  getFailure() {
    // TODO: implement getFailure
    throw UnimplementedError();
  }
}

class NotFoundError implements Error {
  @override
  getFailure() {
    // TODO: implement getFailure
    throw UnimplementedError();
  }
}

class NetworkError implements Error {
  @override
  getFailure() {
    // TODO: implement getFailure
    throw UnimplementedError();
  }
}

class CacheError implements Error {
  @override
  getFailure() {
    // TODO: implement getFailure
    throw UnimplementedError();
  }
}

class SocketError implements Error {

  @override
  getFailure() {
    // TODO: implement getFailure
    throw UnimplementedError();
  }
}
