import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/off/off_navegacao_page3.dart';

class OffNavegacaoPage2 extends StatelessWidget {
  const OffNavegacaoPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page de Navegação 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffNavegacaoPage3();
                    },
                  ),
                );
              },
              child: const Text('Got to Page 3 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.off(const OffNavegacaoPage3());
              },
              child: const Text('Got to Page 3 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
