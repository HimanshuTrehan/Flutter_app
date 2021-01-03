import 'package:first_app/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
class Login_user extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _LoginUserState();
  }

}

class _LoginUserState extends State<Login_user>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: LoginForm()     
      
      );

  }

}

class LoginForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm>{
  final _formKey = GlobalKey<FormState>();
  String name="";
  String email="";
  String phone="";
  String address="";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:
    Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.green, Colors.blue])
      ),
      child:


      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height*0.7,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                 margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.2,left: 20,right: 20,bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      padding: EdgeInsets.only(bottom: 30),
                     child: Text("Personal Management System",style: TextStyle(
                       fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20
                     ),),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        image: new DecorationImage(
                          image: AssetImage("assets/logo.jpeg"),
                          fit: BoxFit.fill
                        )
                      ),
                    ),

                    Container(
                      child:Padding(
                          padding: EdgeInsets.all(15),
                          child: Text("Login",style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.black,
                            fontSize: 20
                          ),))
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration:BoxDecoration(
                          border: Border.all(width: 1,color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: TextFormField(
                        validator: (value)
                        {
                          if(value.isEmpty)
                          {
                            return "Please Enter Number";
                          }
                          if(value.length!=10)
                          {
                            return "Please Enter valid Number";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: "Phone Number"
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Center(
                        child: Container(
                          margin: EdgeInsets.all(20),
                            child: MaterialButton(
                              onPressed: () {
                                if(_formKey.currentState.validate())
                                  {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home(name, phone, email, address) ,));
                                  }
                              },


                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Icon(Icons.arrow_forward,color: Colors.white,size: 25,),
                              padding: EdgeInsets.all(16),
                              shape: CircleBorder(),
                            )
                        )
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Container(
                                child: Text("Don't have an account?")
                            )
                        ),
                        GestureDetector(
                          child: Container(
                              child: Text(" SignUp",style: TextStyle(
                                fontWeight: FontWeight.bold,color: Colors.black
                              ),
                              )
                          ),
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                          },
                        ),
                      ],
                    ),

                  ],
                ),

              ),
            )
          ],
        ),
      ),
    ),
    );
  }
  
}
