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
     floatingActionButton:FloatingActionButton(
       child: Icon(Icons.add),

       backgroundColor: Colors.blue,
       onPressed: () {

       },

     ) ,
     floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
     appBar: AppBar(
       
       title:
       Container(
         margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1),
         child: Center(child:
         Text("Welcome "+ widget.name)),
         color: Colors.blue,

       )
       ),
       drawer: Drawer(
         child: ListView(
           children: [
             DrawerHeader(child: Container(
               margin: EdgeInsets.all(10),
               child: Text("Welcome "+widget.name,style: TextStyle(
                 color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20
               ),),
             ),
             decoration: BoxDecoration(
               gradient: LinearGradient(colors: [Colors.blue,Colors.blueAccent]

               )
             )
             ),
    ListTile(
      title: Text("Profile"),
      
    )
           ],
         ),
       ),

     body:
     SingleChildScrollView(
       scrollDirection: Axis.horizontal,
       child: Column(
         children: [
           Container(
             margin: EdgeInsets.all(10),
             child: Text("Your Information",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
             ),
           ),
           DataTable(columns: [
             DataColumn(label: Text(
                 "S.No",
                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
             )),
             DataColumn(label: Text(
                 "Task Name",
                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
             )),
             DataColumn(label: Text(
                 "Details",
                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
             )),
           ],

               rows: [
                 DataRow(cells: [
                   DataCell(Text(widget.name)),
                   DataCell(Text(widget.email)),
                   DataCell(Text(widget.phone)),
                 ]),

               ]),




         ],
       ),

     ),

   );
  }


}