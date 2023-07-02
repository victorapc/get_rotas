import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/back/back_home_page.dart';
import 'package:get_rotas/navegacao_comum/off/off_home_page.dart';
import 'package:get_rotas/navegacao_comum/offall/offall_home_page.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(const ToHomePage());
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple),
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.purple.shade600)),
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
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.purple.shade600)),
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
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.purple.shade600)),
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
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.purple.shade600)),
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
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.purple.shade600)),
              child: const Text(
                'OfAll (PopAndRemoveUntil)',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
