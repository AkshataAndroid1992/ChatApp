import 'package:flutter/material.dart';
import 'package:untitled/chat_page.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      theme: ThemeData(
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.yellow,
        ),
      ),
      home: ChatPage() ,
    );
  }
}

