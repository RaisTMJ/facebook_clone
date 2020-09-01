import 'package:facebook_clone/custom_theme.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(CustomedTheme(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: CustomedTheme.of(context),
      home: MyHomePage(title: 'Facebook Demo'),
    );
  }
}
