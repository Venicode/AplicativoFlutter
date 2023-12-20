import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Nova tarefa',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Container(
              height: 650,
              width: 375,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: nameController,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Digite o nome da tarefa',
                          fillColor: Colors.white70,
                          filled: true),
                    ),
                  ),
                  ElevatedButton(onPressed: () {
                    print(nameController.text);
                  }, child: const Text('Adicionar!', style:  TextStyle(color: Colors.white),))
                ],
              )),
        ));
  }
}
