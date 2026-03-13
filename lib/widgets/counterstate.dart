
 import 'package:flutter/material.dart';

class counterstate extends StatefulWidget {

  final buttonColor;

  const counterstate({Key? key,required this.buttonColor}) : super(key: key);


  @override
   State<counterstate> createState() {
     State<counterstate> statewidget= _counterstateState();
     return statewidget;
   }
 }

 class _counterstateState extends State<counterstate> {
  int counter = 0;
  void increment(){
    if(mounted) {
      setState(() {
        counter++;
      });
      print(counter);
    }
 }
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: Text("Counter"),
       ),
       floatingActionButton: FloatingActionButton(
         backgroundColor:widget.buttonColor,
         child: Icon(Icons.add),
           onPressed: (){
         increment();
       }),
       body:Center(
         child:Text("$counter",style: TextStyle(fontSize: 30),) ,
       ) ,
     );
   }
 }
