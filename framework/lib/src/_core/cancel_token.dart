abstract class CancelToken {
  const CancelToken();

  bool get isCancelled;
  void cancel();
}

class DefaultCancelToken implements CancelToken {
  bool _isCanceled;

  DefaultCancelToken() : _isCanceled = false;

  @override
  void cancel() {
    _isCanceled = true;
  }

  @override
  bool get isCancelled => _isCanceled;
}
