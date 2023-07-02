import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/offall/offall_navegacao_page1.dart';

class OffallHomePage extends StatelessWidget {
  const OffallHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OffAll Home Page'),
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
                      return const OffallNavegacaoPage1();
                    },
                    settings: const RouteSettings(name: 'Page1'),
                  ),
                );
              },
              child: const Text('Got to Page 1 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const OffallNavegacaoPage1());
              },
              child: const Text('Got to Page 1 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
