import 'package:flutter/material.dart';
import 'package:gameapp/screens/home.dart';

void main(){
  runApp(MyApp());
}
late Size ScreenSize;
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
      home:MyHomePage()
    );
  }
}