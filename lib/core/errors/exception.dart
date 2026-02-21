abstract class AppException implements Exception {
  const AppException([this.msg]);
  final String? msg;
}

class ServerException implements AppException {
  const ServerException([this.msg = "server_ex_msg"]);
  @override
  final String? msg;
}

class UnAuthorizeException implements AppException {
  const UnAuthorizeException([this.msg = "un_auth_msg"]);
  @override
  final String? msg;
}

class BadEntitesException implements AppException {
  const BadEntitesException([this.msg = "bad_inputs_message"]);
  @override
  final String? msg;
}

class NotFoundException implements AppException {
  const NotFoundException([this.msg = "not_found_message"]);
  @override
  final String? msg;
}

class UnCaughtException implements AppException {
  const UnCaughtException([this.msg = "un_caught_message"]);
  @override
  final String? msg;
}

class ConnectivityException implements AppException {
  const ConnectivityException([this.msg = "no_connection_message"]);
  @override
  final String? msg;
}

class UnSupportedJsonFormat implements AppException {
  const UnSupportedJsonFormat([this.msg]);
  @override
  final String? msg;
}

class UnprocessableContent implements AppException {
  const UnprocessableContent([this.msg]);
  @override
  final String? msg;
}
