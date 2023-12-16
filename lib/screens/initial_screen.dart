import 'package:flutter/material.dart';
import '../components/task.dart';

class  InitialScreen extends StatefulWidget {
  const  InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.task_rounded,
            color: Colors.white,
            size: 40,
          ),
          title:
              const Text('Lista de Tarefas', style: TextStyle(color: Colors.white)),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: const Duration(milliseconds: 800),
          child: ListView(
            children: const [
              Task(
                  'Jogar',
                  'assets/images/task_jogar.webp',
                  3,12),
              Task(
                  'Ver filmes',
                  'assets/images/task_filmes.jpeg',
                  2,10),
              Task(
                  'Estudar inglês',
                  'assets/images/task_estudar_ingles.webp',
                  4,14),
              Task(
                  'Beber água',
                  'assets/images/task_beber_agua.webp',
                  1,4),
              Task(
                  'Regar plantinhas',
                  'assets/images/task_regar_plantinhas.jpeg',
                  2,6),
              Task(
                  'Tomar sol',
                  'assets/images/task_tomar_sol.webp',
                  1,4),
                  SizedBox(height: 80,)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: Icon(
            opacidade ? Icons.visibility_off : Icons.visibility,
            color: Colors.white,
          ),
        ),
      );
  }
}