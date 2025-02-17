import 'package:flutter/material.dart';
import 'package:whatsapp/chat.dart';
import 'package:whatsapp/home.dart';
import 'package:whatsapp/setting.dart';
import 'package:whatsapp/status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home:  Home(),
      routes: {
        Chat.id : (context) => Chat(),
        Status.id : (context) => Status(),
        Setting.id : (context) => Setting(),
      },
    );
  }
}

