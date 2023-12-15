import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool opacidade = true;
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
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: Duration(milliseconds: 800),
          child: ListView(
            children: [
              Task(
                  'Jogar',
                  'https://images.pexels.com/photos/371924/pexels-photo-371924.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  3),
              Task(
                  'Ver filmes',
                  'https://images.pexels.com/photos/2398354/pexels-photo-2398354.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  2),
              Task(
                  'Estudar inglês',
                  'https://images.pexels.com/photos/4050302/pexels-photo-4050302.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  4),
              Task(
                  'Beber água',
                  'https://images.pexels.com/photos/6642422/pexels-photo-6642422.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  1),
              Task(
                  'Regar plantinhas',
                  'https://images.pexels.com/photos/4750272/pexels-photo-4750272.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  3),
              Task(
                  'Tomar sol',
                  'https://images.pexels.com/photos/9049883/pexels-photo-9049883.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  1)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){setState((){opacidade = !opacidade;});},
          child: Icon(
            opacidade?
            Icons.visibility_off:
            Icons.visibility,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  const Task(this.nomeTarefa, this.imagemTask, this.dificuldade, {Key? key})
      : super(key: key);
  final String nomeTarefa;
  final String imagemTask;
  final int dificuldade;
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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.lightGreen),
              height: 140,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white),
                  height: 100,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.black26),
                          width: 100,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(widget.imagemTask,
                                fit: BoxFit.cover),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              child: Text(
                                widget.nomeTarefa,
                                style: TextStyle(
                                    fontSize: 15,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    size: 15,
                                    color: (widget.dificuldade >= 1)
                                        ? Colors.lightGreen
                                        : Colors.lightGreen[100]),
                                Icon(Icons.star,
                                    size: 15,
                                    color: (widget.dificuldade >= 2)
                                        ? Colors.lightGreen
                                        : Colors.lightGreen[100]),
                                Icon(Icons.star,
                                    size: 15,
                                    color: (widget.dificuldade >= 3)
                                        ? Colors.lightGreen
                                        : Colors.lightGreen[100]),
                                Icon(Icons.star,
                                    size: 15,
                                    color: (widget.dificuldade >= 4)
                                        ? Colors.lightGreen
                                        : Colors.lightGreen[100]),
                                Icon(Icons.star,
                                    size: 15,
                                    color: (widget.dificuldade >= 5)
                                        ? Colors.lightGreen
                                        : Colors.lightGreen[100]),
                                Icon(Icons.star,
                                    size: 15,
                                    color: (widget.dificuldade >= 6)
                                        ? Colors.lightGreen
                                        : Colors.lightGreen[100])
                              ],
                            )
                          ],
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
                          value: (widget.dificuldade > 0)
                              ? (nivel / widget.dificuldade) / 10
                              : 1,
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
