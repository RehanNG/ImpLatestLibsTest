import 'package:flutter/material.dart';
class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          Row(

            children: [

              SizedBox(
                width: 190,
                height: 190,
                child: Card(
                  color: Colors.redAccent,
                  elevation: 2,
                  child: Text('datas sd csd csd csd  ',style: TextStyle(color: Colors.white),),
                ),
              ),

              SizedBox(
                width: 190,
                height: 190,
                child: Card(
                  color: Colors.white,
                  elevation: 2,
                  child: Text('datas sd csd qwdqwd  ',style: TextStyle(color: Colors.white),),
                ),
              ),


              SizedBox(
                width: 190,
                height: 190,
                child: Card(
                  color: Colors.blueAccent,
                  elevation: 2,
                  child: Text('datas sd csd qwdqwd  ',style: TextStyle(color: Colors.white),),
                ),
              ),


            ],
          )

        ],

      ),
    );
  }
}
