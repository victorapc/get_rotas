import 'package:flutter/material.dart';
import 'package:get_rotas/navegacao_comum/core_widget_custom/elevated_button_custom.dart';

class MiddlewaresHomePage extends StatelessWidget {
  MiddlewaresHomePage({super.key}) {
    debugPrint('Criando página MiddlewaresHomePage');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Build página MiddlewaresHomePage');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Middlewares'),
      ),
      body: Center(
        child: ElevatedButtonCustom(
          onPressed: () {},
          text: 'Botão',
        ),
      ),
    );
  }
}
