import 'package:app_beauty/routes/routes.dart';
import 'package:app_beauty/screens/intro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoute.generateRoute,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const IntroScreen(),
    );
  }
}

