abstract class HandledException implements Exception {
  String get name => runtimeType.toString();
  bool get isEmpty => this is EmptyException;
  bool get isNotEmpty => !isEmpty;

  const HandledException();

  factory HandledException.from(Object incomingException, HandledException defaultException) =>
      incomingException is HandledException ? incomingException : defaultException;

  const factory HandledException.empty() = EmptyException;

  @override
  String toString() => name;
}

class EmptyException extends HandledException {
  const EmptyException();
}

class BasicException extends HandledException {
  const BasicException();
}

class BasicExceptionWithMessage extends HandledException {
  final String message;

  const BasicExceptionWithMessage(this.message);
}

class HandledException2 extends HandledException {
  final Object originalException;

  const HandledException2(this.originalException);
}

class HandledExceptionWithStacktrace extends HandledException {
  final Object originalException;
  final StackTrace stackTrace;

  const HandledExceptionWithStacktrace(this.originalException, this.stackTrace);
}

typedef NoException = EmptyException;

class SystemException extends HandledException {
  final Object value;

  const SystemException(this.value);
}

class UnableToGetClinicInfo extends HandledException {
  const UnableToGetClinicInfo();
}

class UnableToGetDevicesFromCloud extends HandledException {
  const UnableToGetDevicesFromCloud();
}
