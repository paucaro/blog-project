import 'package:flutter/material.dart';
import 'package:proyecto_blog/photoUpload.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Home"),),
      body: Container(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.pink,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add_a_photo),
                iconSize: 40,
                color: Colors.white,
                onPressed: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context){
                    return PhotoUpload();
                  }));
                },
              )
            ],
          ),
        ),
      )
    );
  }
}