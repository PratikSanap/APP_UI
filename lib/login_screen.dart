import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page_project/registeration_screen.dart';

import 'profile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

@override
_LoginScreenState createState() => _LoginScreenState();}

class _LoginScreenState extends State<LoginScreen>{
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
     // validator: (){},
      onSaved: (value){
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter Your Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      onSaved: (value){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter Your Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.purple,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>PROFILE()));
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,
        ),),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child:Padding(
            padding: const EdgeInsets.all(36.0),
            child:Form(
              key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    SizedBox(
                      height: 55,
                      child: Text(
                          "TALENTGRAM",
                      style: TextStyle(

                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),),
                      //child: Image.asset(name
                      //fit:BoxFit.contain),
                    ),
                    SizedBox(
                      height: 20,
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    emailField,
                    SizedBox(height: 35),
                    passwordField,
                    SizedBox(height: 25),
                    loginButton,
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => RegisterationScreen()));
                          },
                          child: Text("SignUp",style: TextStyle(color:Colors.purple,fontWeight: FontWeight.w400,fontSize: 15),),
                        ),
                      ],
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Forgot Your Password?"),
                        GestureDetector(
                          onTap: (){},
                          child: Text("Reset Password",style: TextStyle(color:Colors.purple,fontWeight: FontWeight.w400,fontSize: 15),),
                        ),
                      ],
                    ),
                  ],
                ),),
          ),
          ),
        ),
      ),
    );
  }
}
