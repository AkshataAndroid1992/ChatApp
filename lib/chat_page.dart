
import 'package:flutter/material.dart';
import 'package:untitled/widgets/chat_bubble.dart';
import 'package:untitled/widgets/chat_input.dart';

class ChatPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:Text("Hi Akshata",),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            print("Icon Pressed");
          }, icon: Icon(Icons.logout))
        ],
      ) ,
      body: Column(
        children: [
         Expanded(
           //flex: 1,
           child: ListView.builder(
               itemCount :10 ,itemBuilder: (context,index){
            return ChatBubble(alignment : index % 2 == 0 ? Alignment.centerLeft : Alignment.centerRight,message:  "Hello this is akshata");
           }),
         ),
       ChatInput()

        ],
      )


    );
  }
}