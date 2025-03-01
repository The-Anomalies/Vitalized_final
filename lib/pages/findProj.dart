import 'package:flutter/material.dart';

class findProj extends StatefulWidget {
  const findProj({Key? key}) : super(key: key);

  @override
  State<findProj> createState() => _findProjState();
}

class _findProjState extends State<findProj> {
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.white),
        actions: [
          Padding(padding: EdgeInsets.all(10.0),
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:  DecorationImage(image: AssetImage('assets/t.png'), fit:BoxFit.cover)
            ),
            child: Transform.translate(
              offset: Offset(10, -10),
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.white),
                  shape: BoxShape.circle,
                  color: Colors.yellow[800]
                )
              )
            )
          )
          )
        ]
      ),
      body: SafeArea(
        child: Padding(padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(15.0),
              child: Container(
                //padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
                ),
                child:TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    hintText: "Find Projects",
                    hintStyle: TextStyle(color: Colors.grey)
                  )
                ) 
              ), 
              ),


              SizedBox(height: 30),
              makeItem(image:'assets/t.png', date:10),
              SizedBox(height: 30),
              makeItem(image:'assets/t.png', date:11),
              SizedBox(height: 30),
              makeItem(image:'assets/t.png', date:12),
              SizedBox(height: 30),
              makeItem(image:'assets/t.png', date:13),
            ]
            )
          ),

         ),
          ),
      );
   }

   Widget makeItem({image, date}){
    return Row(
      children: [
        Container(
          width: 50,
          height: 200,
          margin: EdgeInsets.only(right: 20),
          child: Padding(
            padding: EdgeInsets.only(top:10),
            child: Column(
              children: [
                Text(date.toString(), style: TextStyle(color: Colors.pinkAccent, fontSize: 25, fontWeight: FontWeight.bold )),
                Text('April', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold )),
              ],
              ),
            ),
        ),
        Expanded(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover 
                )
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              //decoration: BoxDecoration(
                //gradient: LinearGradient(
                  //colors:[Colors.black.withOpacity(0.4), Colors.black.withOpacity(0.1)]
                //)
              //),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Project 1", style: TextStyle(color:Colors.pink,fontSize: 25, fontWeight: FontWeight.bold  )),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.access_time, color: Colors.pink),
                      SizedBox(width: 10,),
                      Text("7:00PM", style: TextStyle(color: Colors.pink))
                    ]
                  ),
                ],
              ),
            ),
          ),
          ),
      ],
    );
   } 
  }