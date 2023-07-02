import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/offall/offall_navegacao_page3.dart';

class OffallNavegacaoPage2 extends StatelessWidget {
  const OffallNavegacaoPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navegação Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffallNavegacaoPage3();
                    },
                  ),
                  (route) => false,
                );
              },
              child:
                  const Text('Got to Page 3 excluindo tudo com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) {
                      return const OffallNavegacaoPage3();
                    },
                  ),
                  ModalRoute.withName('/'),
                );
              },
              child: const Text(
                  'Got to Page 3 excluindo parte com Flutter Nativo'),
            ),
            TextButton(
              onPressed: () {
                Get.offAll(
                  const OffallNavegacaoPage3(),
                  predicate: ModalRoute.withName('/OffallHomePage'),
                );
              },
              child: const Text('Got to Page 3 com GetX'),
            ),
          ],
        ),
      ),
    );
  }
}
