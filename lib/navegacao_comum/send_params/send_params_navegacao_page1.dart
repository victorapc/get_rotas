import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParamsNavegacaoPage1 extends StatelessWidget {
  const SendParamsNavegacaoPage1({super.key});

  @override
  Widget build(BuildContext context) {
    final paramNative =
        ModalRoute.of(context)?.settings.arguments ?? 'Parâmetro não enviado.';
    final paramGetX = Get.arguments ?? 'Parâmetro não enviado.';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recebendo Param'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nativo: $paramNative'),
            Text('Get: $paramGetX'),
          ],
        ),
      ),
    );
  }
}
