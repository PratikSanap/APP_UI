import 'package:flutter/material.dart';
import 'home_screen.dart';

class PROFILE extends StatefulWidget {
  const PROFILE({Key? key}) : super(key: key);

  @override
  _PROFILEState createState() => _PROFILEState();
}

class _PROFILEState extends State<PROFILE> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController mobileNumberController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final nameField = TextFormField(
      autofocus: false,
      controller: nameController,
      keyboardType: TextInputType.name,
      // validator: (){},
      onSaved: (value){
        nameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter Your Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final mobileField = TextFormField(
      autofocus: false,
      controller: mobileNumberController,
      keyboardType: TextInputType.number,
      // validator: (){},
      onSaved: (value){
        mobileNumberController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter Your Mobile Number",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final continueButton = Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(30),
      color: Colors.purple,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        },
        child: Text(
          "continue",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold,
          ),),
      ),
    );
    return Scaffold(

      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                height: 100,
                  child: Icon(Icons.account_circle,size: 90.0),
            ),
                  SizedBox(height: 15,),
                  nameField,
                  SizedBox(height: 35,),
                  mobileField,
                  SizedBox(height: 35,),
                  continueButton,
                  SizedBox(height: 35,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

