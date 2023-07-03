import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArgumentsParamPage extends StatelessWidget {
  const ArgumentsParamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, String> arguments = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Arguments'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Curso: ${arguments['curso'] ?? 'Curso não encontrado.'}',
            ),
            Text(
              'Nome: ${arguments['name'] ?? 'Nome não encontrado.'}',
            ),
          ],
        ),
      ),
    );
  }
}
