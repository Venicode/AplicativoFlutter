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
          leading: Container(
              child: Icon(
            Icons.task_rounded,
            color: Colors.white,
            size: 40,
          )),
          title:
              Text('Lista de Tarefas', style: TextStyle(color: Colors.white)),
        ),
        body: ListView(
          children: [
            Task('Regar plantinhas'),
            Task('Programar'),
            Task('Dormir'),
            Task('Beber água'),
            Task('Caminhar')
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
                          width: 72,
                          height: 100,
                          child: Image.network("https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large",
                          fit: BoxFit.cover),
                        ),
                        Container(
                          width: 200,
                          child: Text(
                            widget.nomeTarefa,
                            style: TextStyle(
                                fontSize: 15, overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          child: ElevatedButton(
                            onPressed: (() {
                              setState(() {
                                nivel++;
                              });
                              print(nivel);
                            }),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.arrow_drop_up, color: Colors.white),
                                Text("UP",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white))
                              ],
                            ),
                          ),
                        )
                      ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: nivel / 10,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Nível: $nivel",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
