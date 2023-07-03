import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get_rotas/navegacao_comum/pages_nomeadas/inicial/nomeada_pagina1.dart';

class RouteMiddlewares extends GetMiddleware {
  RouteMiddlewares({super.priority});

  // Nesse método ao ser chamado irá ter a finalidade de direcionar para uma
  // página desejada.
  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint('Executando middleare onPageCalled');
    return super.onPageCalled(page);
    // Caso assim que entrar nessa página de middleware, poderá direcionar para
    // uma outra página por exemplo, caso o usuário não tenha acesso e mostrar
    // em outra tela essa pagina de não acesso ou apenas direcionar com alguma
    // configuração desejada na regra de negócio.
    /*
    return GetPage(
      name: '/inicial/pagina1',
      page: () => const NomeadaPagina1(),
    );*/
  }

  // Nesse método ao ser chamado irá ter a finalidade de executar um comportamento
  // de alterar por exemplo mudar o thema só dessa tela que possui o middleware.
  @override
  Widget onPageBuilt(Widget page) {
    debugPrint('Executando middleare onPageBuilt');
    //return super.onPageBuilt(page);
    return Theme(
      data: ThemeData.dark(),
      child: page,
    );
  }

  // Responsável em redirecionar para uma nova rota caso entrar em uma tela. Pode
  // usar como exemplo um acesso de usuários, caso não tem permissão apresentar
  // uma tela de acesso negado.
  @override
  RouteSettings? redirect(String? route) {
    if (route == '/inicial/pagina1') {
      return const RouteSettings(name: '/acessonegado');
    }
    return null;
  }

  @override
  void onPageDispose() {
    debugPrint('Executando middleare onPageDispose');
    super.onPageDispose();
  }
}
