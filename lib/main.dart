import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_rotas/navegacao_comum/navegacao_comum_home_page.dart';
import 'package:get_rotas/navegacao_comum/pages_nomeadas/envio_parametros/arguments_param_page.dart';
import 'package:get_rotas/navegacao_comum/pages_nomeadas/envio_parametros/envio_parametros_home_page.dart';
import 'package:get_rotas/navegacao_comum/pages_nomeadas/envio_parametros/path_param_page.dart';
import 'package:get_rotas/navegacao_comum/pages_nomeadas/envio_parametros/query_param_page.dart';
import 'package:get_rotas/navegacao_comum/pages_nomeadas/inicial/nomeada_pagina1.dart';
import 'package:get_rotas/navegacao_comum/pages_nomeadas/middlewares/acesso_negado_page.dart';
import 'package:get_rotas/navegacao_comum/pages_nomeadas/middlewares/middlewares_home_page.dart';
import 'package:get_rotas/navegacao_comum/pages_nomeadas/middlewares/route_middlewares.dart';
import 'package:get_rotas/navegacao_comum/pages_nomeadas/nested_navigation/home_nested_navigation.dart';
import 'package:get_rotas/navegacao_comum/pages_nomeadas/rota_nao_encontrada/rota_nao_encontrada_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      unknownRoute: GetPage(
        name: '/404',
        page: () => const RotaNaoEncontradaPage(),
      ),
      initialRoute: '/home',
      routingCallback: (Routing? routing) {
        // Forma de ficar observando as rotas.
        debugPrint('Previous: ${routing?.previous}');
        debugPrint('Current: ${routing?.current}');
      },
      getPages: [
        GetPage(
          name: '/home',
          page: () => const NavegacaoComumHomePage(),
        ),
        GetPage(
          name: '/inicial/pagina1',
          page: () => const NomeadaPagina1(),
          middlewares: [
            RouteMiddlewares(),
          ],
        ),
        GetPage(
          name: '/envioparametronomeada',
          page: () => const EnvioParametrosHomePage(),
          children: [
            GetPage(
              name: '/arguments',
              page: () => const ArgumentsParamPage(),
            ),
            GetPage(
              name: '/pathparam/:nome',
              page: () => const PathParamPage(),
            ),
            GetPage(
              name: '/queryparam',
              page: () => const QueryParamPage(),
            ),
          ],
        ),
        GetPage(
          name: '/middlewares',
          page: () => MiddlewaresHomePage(),
          middlewares: [
            RouteMiddlewares(),
          ],
        ),
        GetPage(
          name: '/acessonegado',
          page: () => const AcessoNegadoPage(),
        ),
        GetPage(
          name: '/nestednavigation',
          page: () => HomeNestedNavigation(),
        ),
      ],
    );
  }
}
