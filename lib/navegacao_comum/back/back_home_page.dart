import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/back/back_navegacao_page.dart';

class BackHomePage extends StatelessWidget {
  const BackHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back Home'),
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
                      return const BackNavegacaoPage();
                    },
                  ),
                );
              },
              child: const Text('Got to Page com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const BackNavegacaoPage());
              },
              child: const Text('Got to Page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
