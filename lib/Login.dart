import 'package:flutter/material.dart';
import 'package:first_app/Home.dart';
void main() {
  runApp(Login());
}

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }

}

class _LoginState extends State<Login>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SafeArea(

          top: true,
          child:  MyForm()

    )
    );

  }

}

class MyForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyFormState();
  }
}

class _MyFormState extends State<MyForm> {

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
      return Form(
        key: _formKey,
         
         child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.purple, Colors.blue])),
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              Row(

                children: [

                  Container(
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.arrow_back_ios)),
                  ),


                ],

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),
                            )
                        ),
                      )
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(0),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height-200,
                      width: MediaQuery.of(context).size.width-50,
                      decoration:

                      BoxDecoration(
                          color: Colors.white,

                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: Text(
                                  "Enter details",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 30),

                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black,width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: "Enter name",

                                ),

                              ),
                            ),

                            Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black,width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
                                  if(!emailValid)
                                    {
                                      return "Please enter valid email";
                                    }

                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: "Enter Email",

                                ),
                                keyboardType: TextInputType.emailAddress,

                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black,width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  if (value.length>10 || value.length<10) {
                                    return 'Please enter valid number';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: "Enter Phone Number",

                                ),
                                keyboardType: TextInputType.number,

                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black,width: 1),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              child: TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: "Enter Address",

                                ),

                              ),
                            ),

                            Center(
                              child: Container(
                                      child: MaterialButton(
                                        onPressed: () {
                                              if (_formKey.currentState.validate()) {
                                              // If the form is valid, display a Snackbar.
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
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
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment:  MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text("Have an account?",style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15
                                  ),
                                  ),

                                ),
                                GestureDetector(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Text("Login",style: TextStyle(
                                        color: Colors.black,fontWeight: FontWeight.bold,
                                        fontSize: 16
                                    ),

                                    ),

                                  ),
                                  onTap: ()
                                  {
                                    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Working"),));
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
      );
  }

}