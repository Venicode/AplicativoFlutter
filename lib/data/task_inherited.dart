import 'package:flutter/material.dart';

import '../components/task.dart';

class TaskInherited extends InheritedWidget{
  TaskInherited ({
    Key? key,
    required Widget child,
  }) : super (key: key, child: child);

  final List<Task> taskList = [
    Task('Jogar', 'assets/images/task_jogar.webp', 3, 12),
    Task('Ver filmes', 'assets/images/task_filmes.jpeg', 2, 10),
    Task('Estudar inglês', 'assets/images/task_estudar_ingles.webp', 4, 14),
    Task('Beber água', 'assets/images/task_beber_agua.webp', 1, 4),
    Task('Regar plantinhas', 'assets/images/task_regar_plantinhas.jpeg',2, 6),
    Task('Tomar sol', 'assets/images/task_tomar_sol.webp', 1, 4),
  ];

  void AddNewTask(String name, String photo, int difficulty){
    taskList.add(Task(nomeTarefa, imagemTask, dificuldade, maestria));
  }

  static TaskInherited of (BuildContext context){
    final TaskInherited? result = context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget){
    return oldWidget.taskList.length != taskList.length;
  }
}

