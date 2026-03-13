import 'package:flutter/material.dart';
import 'package:untitled/chat_page.dart';
import 'package:untitled/utils/textFields_styles.dart';
import 'package:untitled/widgets/login_text_field.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
   final _formkey = GlobalKey<FormState>();
  void loginUser(context){
    if(_formkey.currentState != null && _formkey.currentState!.validate()) {
      // if (userNameController.text.length < 5) {
      //   //throwerror
      // }
      //
      // if (passwordController.text.length < 5) {
      //   //throwerror
      // }
      print(userNameController.text);
      print(passwordController.text);
      Navigator.pushReplacementNamed(context, "/chat",arguments: userNameController.text);
      print("Login Successful");
    }else{
      print("Not Successful");
    }
  }
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Center(
           child:  Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               Text("Let\`s sign you in !",
             style: TextStyle(fontSize: 20,color: Colors.brown,fontWeight:
             FontWeight.bold,letterSpacing: 0.5),),
             Text("Welcome back! \nYou\'ve been missed",
                 textAlign: TextAlign.center, style:
             TextStyle(fontSize: 20,color: Colors.brown,fontWeight: FontWeight.bold,letterSpacing: 0.5) ,),
             Image.network("https://upload.wikimedia.org/wikipedia/commons/7/70/Example.png",height: 200,),
           Form(
             key: _formkey,
               child: Column(
             children: [
               LoginTextField(
                 validator: (value){
                   if(value != null && value.isNotEmpty && value.length < 5){
                     return "Your user name should be more than 5 characters";
                   }else if(value != null && value.isEmpty){
                     return "Please type username";
                   }
                   return null;
                 },
                 controller: userNameController, hintText: 'Enter Your user name',
               ),
               SizedBox(
                 height: 24,
               ),
               LoginTextField(
                 controller: passwordController, hintText: 'Enter your password',


               ),
             ],
           )),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(onPressed: (){
              loginUser(context);
            },style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple, // Button background color
            ),
                child: Text("Login",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white),)
            ),
              // OutlinedButton(onPressed: (){}, child: Text("")),
               TextButton(onPressed: (){}, child: Text("Text"))
           ],) ,
         ),
       )
    );
  }
}