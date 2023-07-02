import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/off/off_navegacao_page1.dart';

class OffHomePage extends StatelessWidget {
  const OffHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Off Home Page'),
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
                      return const OffNavegacaoPage1();
                    },
                  ),
                );
              },
              child: const Text('Got to Page com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffNavegacaoPage1());
              },
              child: const Text('Got to Page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
