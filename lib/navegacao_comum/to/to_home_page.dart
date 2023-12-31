import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/to/to_navegacao_page.dart';

class ToHomePage extends StatelessWidget {
  const ToHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Home Page'),
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
                      return const ToNavegacaoPage();
                    },
                  ),
                );
              },
              child: const Text('Got to Page com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const ToNavegacaoPage());
              },
              child: const Text('Got to Page com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
