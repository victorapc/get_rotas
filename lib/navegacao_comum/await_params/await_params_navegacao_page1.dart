import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsNavegacaoPage1 extends StatelessWidget {
  const AwaitParamsNavegacaoPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Navegação 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // O result da proxima tela pode ser qualquer objeto.
                // No exemplo foi enviado como String.
                Navigator.of(context)
                    .pop('Retornando parametro por flutter nativo.');
              },
              child: const Text('Retornando com param no Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                // O result da proxima tela pode ser qualquer objeto.
                // No exemplo foi enviado como String.
                Get.back(result: 'Retornando parametro por GetX.');
              },
              child: const Text('Retornando com param no GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
