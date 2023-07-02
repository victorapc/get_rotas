import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/await_params/await_params_home_page.dart';
import 'package:get_rotas/navegacao_comum/back/back_home_page.dart';
import 'package:get_rotas/navegacao_comum/core_widget_custom/elevated_button_custom.dart';
import 'package:get_rotas/navegacao_comum/off/off_home_page.dart';
import 'package:get_rotas/navegacao_comum/offall/offall_home_page.dart';
import 'package:get_rotas/navegacao_comum/send_params/send_params_home_page.dart';
import 'package:get_rotas/navegacao_comum/to/to_home_page.dart';

class NavegacaoComumHomePage extends StatelessWidget {
  const NavegacaoComumHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blue,
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Home Navegação Comum',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Rotas Padrão',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(const ToHomePage());
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.purple),
                      overlayColor: MaterialStateProperty.all<Color>(
                          Colors.purple.shade600)),
                  child: const Text(
                    'TO (Push)',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(const BackHomePage());
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.purple),
                      overlayColor: MaterialStateProperty.all<Color>(
                          Colors.purple.shade600)),
                  child: const Text(
                    'Back (Pop)',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(const OffHomePage());
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.purple),
                      overlayColor: MaterialStateProperty.all<Color>(
                          Colors.purple.shade600)),
                  child: const Text(
                    'Off (Replacement)',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(const OffHomePage());
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.purple),
                      overlayColor: MaterialStateProperty.all<Color>(
                          Colors.purple.shade600)),
                  child: const Text(
                    'Off (Replacement)',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(const OffallHomePage());
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.purple),
                      overlayColor: MaterialStateProperty.all<Color>(
                          Colors.purple.shade600)),
                  child: const Text(
                    'OfAll (PopAndRemoveUntil)',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButtonCustom(
                  onPressed: () {
                    Get.to(const SendParamsHomePage());
                  },
                  text: 'Enviando Parâmetros',
                ),
                ElevatedButtonCustom(
                  onPressed: () {
                    Get.to(const AwaitParamsHomePage());
                  },
                  text: 'Aguardando Retorno',
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Rotas Nomeadas',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                ElevatedButtonCustom(
                  onPressed: () {
                    Get.toNamed('/inicial/pagina1');
                  },
                  text: 'Pagina Nomeada',
                ),
                ElevatedButtonCustom(
                  onPressed: () {
                    Get.toNamed('/paginaquenaoexiste');
                  },
                  text: 'Pagina Não Existe',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
