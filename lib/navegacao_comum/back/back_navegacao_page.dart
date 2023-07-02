import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackNavegacaoPage extends StatelessWidget {
  const BackNavegacaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page de Navegação'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Voltar com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Voltar com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
