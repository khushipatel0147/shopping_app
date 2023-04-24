import 'dart:math';

import 'package:flutter/material.dart';

class Splesh extends StatelessWidget {
  const Splesh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 2),
      () {
         Navigator.pushReplacementNamed(context,'main');
      },
    );


    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.amber.shade400,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Text(
                  "F",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize:35,
                      color: Colors.black),
                ),

                Container(height: 40,width: 2,color: Colors.black,),

                SizedBox(height: 10),
                Text(
                  "O",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize:35,
                      color: Colors.black),
                ),
                Container(height: 40,width: 2,color: Colors.black,),

                SizedBox(height: 10),
                Text(
                  "O",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize:35,
                      color: Colors.black),
                ),
                Container(height: 40,width: 2,color: Colors.black,),

                SizedBox(height: 10),
                Text(
                  "D",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize:35,
                      color: Colors.black),
                ),
                SizedBox(height: 400),

              ],
            ),
           Transform.rotate(
             angle: pi/1.35,
             child: Container(
               height: 120,width: 120,color: Colors.black,
               alignment: Alignment.center,
               child: Transform.rotate(angle: pi/0.81,
                   child: Image.asset("assets/images/fast-food.png",color: Colors.amber,height: 80,width: 80,)),
             ),
           ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 400),
                Text(
                  "Z",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize:35,
                      color: Colors.black),
                ),
                Container(height: 40,width: 2,color: Colors.black,),
                SizedBox(height: 10),
                Text(
                  "O",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize:35,
                      color: Colors.black),
                ),
                Container(height: 40,width: 2,color: Colors.black,),
                SizedBox(height: 10),
                Text(
                  "N",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize:35,
                      color: Colors.black),
                ),
                Container(height: 40,width: 2,color: Colors.black,),
                SizedBox(height: 10),
                Text(
                  "E",
                  style: TextStyle(
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize:35,
                      color: Colors.black),
                ),
              ],
            )

          ],
        ),
      ),
    ));
  }
}
