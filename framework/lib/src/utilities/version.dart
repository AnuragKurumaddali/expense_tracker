import 'package:equatable/equatable.dart';

abstract class Version with EquatableMixin {
  final int major;
  final int minor;

  const Version(this.major, this.minor);

  bool isCompatibleWith(Version other) => major == other.major;

  bool isNewerOrSameThan(Version other) => major > other.major || (major == other.major && minor >= other.minor);

  @override
  List<Object?> get props => [major, minor];

  @override
  String toString() {
    return '$major.$minor';
  }
}
