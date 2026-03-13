 import 'package:flutter/material.dart';

 class ChatInput extends StatelessWidget {
    ChatInput({Key? key}) : super(key: key);
   final chatMesageController = TextEditingController();
   void onSendButtonPressed(){

   }

   @override
   Widget build(BuildContext context) {
     return Container(
       height: 100,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           IconButton(
             onPressed: () {},
             icon: Icon(
               Icons.add,
               color: Colors.white,
             ),
           ),
           Expanded(child: TextField(
             style: TextStyle(color: Colors.white),
             decoration: InputDecoration(
                 hintText : "Type your Message",
                 border: InputBorder.none),
           )),
           IconButton(
             onPressed: () {onSendButtonPressed();},
             icon: Icon(
               Icons.send,
               color: Colors.white,
             ),
           ),
         ],
       ),
       decoration: BoxDecoration(
           color: Colors.black,
           borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
     );
   }
 }