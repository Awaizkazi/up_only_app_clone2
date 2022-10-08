// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
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
      builder: (context, Widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, Widget!),
        breakpoints: const [
          ResponsiveBreakpoint.resize(350, name: MOBILE),
          ResponsiveBreakpoint.autoScale(600, name: TABLET),
          ResponsiveBreakpoint.resize(800, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
          ResponsiveBreakpoint.autoScale(2300, name: 'XXL'),
          ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
        breakpointsLandscape: [],
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        unselectedWidgetColor: Colors.grey,
      ),
      home: Starting_Screen(),
    );
  }
}
