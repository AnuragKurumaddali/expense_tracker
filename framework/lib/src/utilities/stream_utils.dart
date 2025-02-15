class StreamUtils {
  static Stream<T> fromListWithDelay<T>(
    List<T> list, [
    Duration delay = const Duration(seconds: 1),
  ]) {
    return Stream.periodic(delay, (i) => list[i]).take(list.length);
  }
}

extension StreamExtensions<T> on Stream<T> {}
