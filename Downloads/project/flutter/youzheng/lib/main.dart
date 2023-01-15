import 'package:flutter/material.dart';
import "./../routes/routes.dart";

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      initialRoute: "/PassengerPage",
      onGenerateRoute: onGenerateRoute,
    );
  }
}
