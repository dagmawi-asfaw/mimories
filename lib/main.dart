import 'package:flutter/material.dart';
import 'package:mimories/app/app.dart';
import 'package:mimories/app/app.locator.dart';
import 'package:mimories/ui/views/homepage/homepage_view.dart';

Future<void> main() async {
  await setupLocator();
  runApp(App());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePageView(),
    );
  }
}
