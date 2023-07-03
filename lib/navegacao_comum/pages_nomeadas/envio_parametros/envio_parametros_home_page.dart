import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/core_widget_custom/elevated_button_custom.dart';

class EnvioParametrosHomePage extends StatelessWidget {
  const EnvioParametrosHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envio de Parâmetros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButtonCustom(
              onPressed: () {
                Get.toNamed(
                  '/envioparametronomeada/arguments',
                  arguments: {
                    'curso': 'Jornada GetX',
                    'name': 'Victor Alexandre',
                  },
                );
              },
              text: 'Arguments',
            ),
            ElevatedButtonCustom(
              onPressed: () {
                final param = Uri.encodeFull('Victor Alexandre');
                Get.toNamed('/envioparametronomeada/pathparam/$param');
              },
              text: 'Path Param',
            ),
            ElevatedButtonCustom(
              onPressed: () {
                /*Get.toNamed(
                    '/envioparametronomeada/queryparam?nome=Victor Alexandre&id=1&curso=Jornada GetX');*/
                Get.toNamed(
                  '/envioparametronomeada/queryparam',
                  parameters: {
                    'nome': 'Victor Alexandre',
                    'id': '1',
                    'curso': 'Jornada GetX'
                  },
                );
              },
              text: 'Query Param',
            ),
          ],
        ),
      ),
    );
  }
}
