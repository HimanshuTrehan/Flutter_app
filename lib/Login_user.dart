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
      appBar: AppBar(
        title: Center(child: Text("Login")),
      ),

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
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.7,
              decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
               margin: EdgeInsets.only(top: 30,left: 20,right: 20,bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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

                ],
              ),

            )
          ],
        ),
      ),
    ),
    );
  }
  
}
