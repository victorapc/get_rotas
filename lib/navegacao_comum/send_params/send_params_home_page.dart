import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/send_params/send_params_navegacao_page1.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Params Home Page'),
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
                      return const SendParamsNavegacaoPage1();
                    },
                    settings: const RouteSettings(
                        arguments: 'Parâmentro pelo flutter nativo.'),
                  ),
                );
              },
              child: const Text('Got to Page 1 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.to(const SendParamsNavegacaoPage1(),
                    arguments: 'Parâmetro pelo GetX');
              },
              child: const Text('Got to Page 1 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
