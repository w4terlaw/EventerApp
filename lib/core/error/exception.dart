///- `SocketException` - возникает при ошибке сокета, например, если устройство потеряло соединение с интернетом;
// - `TimeoutException` - возникает, если запрос не был выполнен за отведенное время;
// - `FormatException` - возникает, если ответ сервера имеет неправильный формат;
// - `http.ClientException` - возникает, если произошла ошибка при работе с клиентом `http`;
// - `Exception` - общее исключение, которое может возникнуть при работе с сетью.

class ServerException implements Exception {}

class UnauthorizedException implements Exception {}

class NetworkException implements Exception {}

class CacheException implements Exception {}

class SocketException implements Exception {}
