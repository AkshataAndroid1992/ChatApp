import 'package:flutter/material.dart';
import 'package:untitled/chat_page.dart';
import 'package:untitled/login_page.dart';
import 'package:untitled/widgets/chat_input.dart';
import 'package:untitled/widgets/counterstate.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.yellow,
        ),
      ),
     // home: counterstate(buttonColor : Colors.blue)
      home: LoginPage(),
     routes: {"/chat" : (context) => ChatPage()},
     // home: ChatPage()
    );
  }
}

