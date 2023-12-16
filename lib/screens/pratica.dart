import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget{
  const MyFirstWidget ({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.red,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.orange,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 27, 26, 21),
                      height: 100,
                      width: 100,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.green,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.cyan,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.blue,
                      height: 100,
                      width: 100,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.purple,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.pink,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.white,
                      height: 100,
                      width: 100,
                    )
                  ],
                )
              
              ]));
  
  }
}