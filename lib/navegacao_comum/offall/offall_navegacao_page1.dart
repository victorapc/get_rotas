import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/offall/offall_navegacao_page2.dart';

class OffallNavegacaoPage1 extends StatelessWidget {
  const OffallNavegacaoPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Navegacao 1'),
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
                      return const OffallNavegacaoPage2();
                    },
                  ),
                );
              },
              child: const Text('Got to Page 2 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffallNavegacaoPage2());
              },
              child: const Text('Got to Page 2 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
