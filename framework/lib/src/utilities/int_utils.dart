extension IntExtensions on int {
  int get inMegaBytes => this ~/ (1024 * 1024);
  String get inMegaBytesFormatted => '$inMegaBytes MB';
}
