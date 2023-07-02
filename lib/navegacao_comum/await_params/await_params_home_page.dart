import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/await_params/await_params_navegacao_page1.dart';

class AwaitParamsHomePage extends StatelessWidget {
  const AwaitParamsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Await Retorno Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () async {
                // Esse recurso é similar ao startActivityResult do nativo kotlin/java.
                // O result da proxima tela pode ser qualquer objeto.
                final result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const AwaitParamsNavegacaoPage1();
                    },
                  ),
                );

                debugPrint(result);
              },
              child: const Text('Got to Page 1 com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () async {
                // Esse recurso é similar ao startActivityResult do nativo kotlin/java.
                // O result da proxima tela pode ser qualquer objeto.
                final result = await Get.to(const AwaitParamsNavegacaoPage1());
                debugPrint(result);
              },
              child: const Text('Got to Page 1 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
