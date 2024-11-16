import 'package:flutter/material.dart';
import 'package:mimories/app/app.dart';
import 'package:mimories/app/app.locator.dart';

Future<void> main() async {
  await setupLocator();
  runApp(App());
}
