import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  String getError();

  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  @override
  String getError() {
    return 'Не удалось подключиться к серверу';
  }
}

class NotFoundFailure extends Failure {
  @override
  String getError() {
    // TODO: implement getError
    throw UnimplementedError();
  }
}


class EmailAndPassFailure extends Failure {
  @override
  String getError() {
    return 'Неверный логин или пароль';
  }
}

class UnauthorizedFailure extends Failure {
  @override
  String getError() {
    // TODO: implement getError
    throw UnimplementedError();
  }
}

// class CacheFailure extends Failure {}

class SocketFailure extends Failure {
  @override
  String getError() {
    return 'Интернет соединение отсутствует';
  }
}

class NetworkFailure extends Failure {
  @override
  String getError() {
    return 'ХЗ';
  }
}
