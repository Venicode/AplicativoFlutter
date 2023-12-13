import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: Scaffold(
        appBar: AppBar(
          title:
              Text('Lista de Tarefas', style: TextStyle(color: Colors.white)),
        ),
        body: ListView(
          children: [
            Task('Aprender Flutter'),
            Task('Aprender C#'),
            Task('Descansar'),
            Task('Aprender Flutter na plataforma da Alura'),
            Task('Aprender C#'),
            Task('Descansar'),
            Task('Aprender Flutter'),
            Task('Aprender C#'),
            Task('Descansar')
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() => {}),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  const Task(this.nomeTarefa, {Key? key}) : super(key: key);
  final String nomeTarefa;

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.lightGreen,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.black26,
                          width: 72,
                          height: 100,
                        ),
                        Container(
                          width: 200,
                          child: Text(
                            widget.nomeTarefa,
                            style: TextStyle(
                                fontSize: 15, overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (() {
                            setState(() {
                              nivel++;
                            });
                            print(nivel);
                          }),
                          child: Icon(Icons.arrow_drop_up, color: Colors.white),
                        )
                      ]),
                ),
                Text(
                  "Nível: $nivel",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
