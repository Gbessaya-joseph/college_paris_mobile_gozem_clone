import 'dart:io';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        actions:[Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(width: 50,height: 50,
            child: Stack(children: [
              Positioned.fill(child: Icon(Icons.notifications)),
              Positioned(child: Text("8"),right: 15,top: 5,)
            ],),
          ),
        )],
        centerTitle: true,
        title: Image.asset("assets/image/cover.png",width: size.width*0.4,),
        leading: CircleAvatar(
          maxRadius: 5,
          backgroundImage: AssetImage("assets/image/avatar.jpeg"),

        ),
      ),
    );
  }
}