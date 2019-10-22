import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text('AnswerCard',style: TextStyle(fontSize: 50.0,color: Colors.deepPurple),),
        ),
        body: AnswerCard(),
      ),
    );
  }
}

class AnswerCard extends StatefulWidget{

  @override
  _AnswerCardState createState() =>_AnswerCardState();
}

class _AnswerCardState extends State<AnswerCard>{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Column(
        children: <Widget>[
          Expanded(
            child:Center(
              child: Text('唔系猛龙唔过江，唔系猪扒唔化妆',style: TextStyle(fontSize: 25.0,color: Colors.red)),
            ),
            flex: 5,
          ),
          Expanded(
            child: new Container(
              margin: EdgeInsets.all(5.0),
              child: RawMaterialButton(
                onPressed: (){},
                fillColor: Colors.blueAccent,
                child: Center(
                  child: Text('right',style: TextStyle(fontSize: 30.0,color: Colors.redAccent),),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0,),
                ),
                constraints: BoxConstraints.tightFor(width: 200.0,height: 50.0),
              ),
            ),
          ),
          Expanded(
            child: new Container(
              margin: EdgeInsets.all(5.0),
              child: RawMaterialButton(
                onPressed: (){},
                fillColor: Colors.black38,
                child: Center(
                  child: Text('very right',style: TextStyle(fontSize: 30.0,color: Colors.redAccent),),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0,),
                ),
                constraints: BoxConstraints.tightFor(width: 200.0,height: 50.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
