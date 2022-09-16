// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:up_only_app_clone2/API/api_service.dart';
import 'Starting_Screen.dart';

void main() async {
  var userModel = await APIService.getUsers();
  userModel!.data!.forEach((element) {
    print(element.id);
  });
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        unselectedWidgetColor: Colors.grey,
      ),
      home: Starting_Screen(),
    );
  }
}
