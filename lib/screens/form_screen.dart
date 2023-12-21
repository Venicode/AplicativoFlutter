import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Nova tarefa',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                  height: 650,
                  width: 375,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return 'Insira o nome da tarefa';
                            }
                            return null;
                          },
                          controller: nameController,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Digite o nome da tarefa',
                              fillColor: Colors.white70,
                              filled: true),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty ||
                                int.parse(value) > 5 ||
                                int.parse(value) < 1) {
                              return 'Insira um número válido de 1 a 5';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.number,
                          controller: difficultyController,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Informe a dificuldade',
                              fillColor: Colors.white70,
                              filled: true),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          onChanged: (text) {
                            setState(() {});
                          },
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Insira o url da imagem';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.url,
                          controller: imageController,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Imagem',
                              fillColor: Colors.white70,
                              filled: true),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(width: 2, color: Colors.lightGreen)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            imageController.text,
                            errorBuilder: (BuildContext context,
                                Object exception, StackTrace? stackTrace) {
                              return Image.asset('assets/images/no-photos.png');
                            },
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              print(nameController.text);
                              print(difficultyController.text);
                              print(imageController.text);
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Salvando nova tarefa'), backgroundColor: Colors.lightGreen,));
                            }
                          },
                          child: const Text(
                            'Adicionar!',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  )),
            ),
          )),
    );
  }
}
