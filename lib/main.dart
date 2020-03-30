import 'package:flutter/material.dart';
import 'package:nubankflutter/screens/dashboard.dart';

void main() => runApp(NubankApp());

class NubankApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank flutter',
      color: Colors.purple,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
      ),
      home: Dashboard(),
    );
  }
}
