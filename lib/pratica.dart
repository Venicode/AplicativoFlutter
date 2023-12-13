import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application./
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.purple),
      home: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
               Container(
                      color: Colors.red,
                      height: 40,
                      width: 1000000000000,
                      child: Text('Seja Bem vindo(a)', 
                      style: TextStyle(color: Colors.white, fontSize: 28),
                      textAlign: TextAlign.center,
                      ),
                    ),
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
                      color: Color.fromARGB(255, 27, 26, 21),
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
              
              ])),
    );
  }
}
