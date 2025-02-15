abstract class Record {
  const Record();
}

class Tuple<T1 extends Object?, T2 extends Object?> implements Record {
  final T1 first;
  final T2 second;

  const Tuple(this.first, this.second);

  @override
  String toString() {
    return '($first, $second)';
  }

  @override
  operator ==(other) {
    return other is Tuple<T1, T2> && first == other.first && second == other.second;
  }

  @override
  int get hashCode {
    return first.hashCode ^ second.hashCode;
  }
}

class Triple<T1 extends Object?, T2 extends Object?, T3 extends Object?> implements Record {
  final T1 first;
  final T2 second;
  final T3 third;

  const Triple(this.first, this.second, this.third);

  @override
  String toString() {
    return '($first, $second, $third)';
  }

  @override
  operator ==(other) {
    return other is Triple<T1, T2, T3> && first == other.first && second == other.second && third == other.third;
  }

  @override
  int get hashCode {
    return first.hashCode ^ second.hashCode ^ third.hashCode;
  }
}
