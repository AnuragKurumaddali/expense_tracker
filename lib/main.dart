import 'package:flutter/material.dart';
import 'myapp.dart';
import 'src/composition/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  // Run the app
  runApp(const MyApp());
}
