
import 'package:flutter/material.dart';

class VisibilityPage extends StatefulWidget {
  const VisibilityPage({Key? key}) : super(key: key);

  @override
  _VisibilityPageState createState() => _VisibilityPageState();
}

class _VisibilityPageState extends State<VisibilityPage> {



  bool isInVisible = false;
  bool isGone = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("visiblity"),
      ),

      body: Column(
        children: [

          Expanded(
              child: Column(
                children: [

                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    margin: EdgeInsets.all(10),
                    color: Colors.blueGrey,

                    child: Center(
                      child: Text("first block" , style: TextStyle(color: Colors.white , fontSize: 15),),
                    ),


                  ),

                  Opacity(
                    opacity: isInVisible ? 0 :1,  // sro invisible and 1 is visible
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      margin: EdgeInsets.all(10),
                      color: Colors.blueGrey,
                      
                      child: Center(
                        child: Text("visible / invisible" , style: TextStyle(color: Colors.white , fontSize: 15),),
                      ),
                      
                    ),
                  ),


                  Visibility(
                    visible: isGone ,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      margin: EdgeInsets.all(10),
                      color: Colors.blueGrey,

                      child: Center(
                        child: Text("visible / gone" , style: TextStyle(color: Colors.white , fontSize: 15),),
                      ),

                    ),
                  ),



                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    margin: EdgeInsets.all(10),
                    color: Colors.blueGrey,


                      child: Center(
                        child: Text("last block" , style: TextStyle(color: Colors.white , fontSize: 15),),
                      )

                  ),

                ],
              )),


          RaisedButton(
             child: Text("visible / invisible"),
              onPressed: (){

               setState(() {
                 isInVisible =! isInVisible;
               });
              }),

          SizedBox(height: 5,),

          RaisedButton(
              child: Text("visible / gone"),
              onPressed: (){

                setState(() {
                  isGone = !isGone;
                });
              }),



        ],
      ),
    );
  }
}
