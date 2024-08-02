import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Exam());
}
class Exam extends StatelessWidget{
  @override
  Widget build(BuildContext context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  );
}
class Home extends StatelessWidget{
  Mysnakbar(messeage,context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(messeage))
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor:Color(0xff399918),
      title: Text('Getteing app',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
    ),
    body: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 100.0),
          child: Center(
            child: Text('Hello.World!',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red),),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Center(
            child: Text('Welcome to Flutter!',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black87),),
          ),
        ),SizedBox(
          height: 20,
        ),
        Container(
          height: 200,
          width: 200,
          child: Center(
            child: Image.asset('asset/image/images.png'))
        ),
        Container(
            height: 200,
            width: 200,
            child: Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                    ),
                    onPressed: (){
                  Mysnakbar('yeah is working', context);
                },
                    child: Text('Press Me',style: TextStyle(fontSize: 18,color: Colors.white),)))
        ),

      ],
    ),
  );
  
}