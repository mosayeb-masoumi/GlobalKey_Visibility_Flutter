import 'package:flutter/material.dart';
import 'package:globalkey_visibility/global_key_example/global_key_page.dart';
import 'package:globalkey_visibility/global_key_example/global_key_validation.dart';
import 'package:globalkey_visibility/visiblity/visibility_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      // home: const GlobalKeyPage(),
      // home: const GlobalKeyValidation(),
      home: const VisibilityPage(),
    );
  }
}
