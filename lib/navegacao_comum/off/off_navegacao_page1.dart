import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/off/off_navegacao_page2.dart';

class OffNavegacaoPage1 extends StatelessWidget {
  const OffNavegacaoPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page de Navegação 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffNavegacaoPage2();
                    },
                  ),
                );
              },
              child: const Text('Got to Page 2 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffNavegacaoPage2());
              },
              child: const Text('Got to Page 2 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
