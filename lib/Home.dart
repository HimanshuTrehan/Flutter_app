import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget{

  String name;
  String phone;
  String email;
  String address;
      Home(this.name,this.phone,this.email,this.address);
  @override
  State<StatefulWidget> createState() {
   return new  _HomeState();
  }

}

class _HomeState extends State<Home>{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Welcome "+ widget.name),
       backgroundColor: Colors.tealAccent,
     ),
     body: SingleChildScrollView(
       scrollDirection: Axis.horizontal,
       child: Column(
         children: [
           Text("Your Information",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
           ),
           DataTable(columns: [
             DataColumn(label: Text(
                 "Name",
                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
             )),
             DataColumn(label: Text(
                 "Email",
                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
             )),
             DataColumn(label: Text(
                 "phone",
                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
             )),DataColumn(label: Text(
                 "address",
                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
             )),
           ],

               rows: [
                 DataRow(cells: [
                   DataCell(Text(widget.name)),
                   DataCell(Text(widget.email)),
                   DataCell(Text(widget.phone)),
                   DataCell(Text(widget.address)),
                 ]),

               ])
         ],
       ),
     )
   );
  }


}