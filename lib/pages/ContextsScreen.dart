// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tdc/util/Carta.dart';
import 'package:tdc/util/ListWidget.dart';

class ContextsScreen extends StatefulWidget {
  const ContextsScreen({Key? key}) : super(key: key);

  @override
  State<ContextsScreen> createState() => _ContextsScreenState();
}

class _ContextsScreenState extends State<ContextsScreen> {
  //puxar e criar aqui as cartas, não no List.
  List<Carta> higiene = [
    Carta(assignedText: 'Preciso usar o banheiro', path: 'vaso.jpg'),
    Carta(assignedText: 'Preciso escovar os dentes', path: 'escovar.png'),
    Carta(
        assignedText: 'Tenho que fazer o número um',
        path: 'assets/mictorio.png'),
    Carta(
        assignedText: 'Tenho que fazer o número dois', path: 'numerodois.jpg'),
    Carta(assignedText: 'Preciso lavar as mãos', path: 'lavarasmaos.jpg'),
  ];
  List<Carta> rapidas = [
    Carta(assignedText: 'Preciso de ajuda', path: 'ajuda.jpg'),
    Carta(assignedText: 'Crie uma Carta para isso', path: 'novacarta.png'),
    Carta(assignedText: 'Por favor', path: 'porfavor.jpg'),
    Carta(assignedText: 'Obrigado.', path: 'obrigado.jpg'),
  ];

  List<Carta> entretenimento = [
    Carta(assignedText: 'Aumente o volume', path: 'volumemais.jpg'),
    Carta(assignedText: 'Quero assistir ao Flamengo', path: 'flamengo.png'),
    Carta(assignedText: 'Pode mudar de canal', path: 'controle.jpg'),
  ];
  List<Carta> objetivas = [
    Carta(assignedText: 'Sim.', path: 'sim.png'),
    Carta(assignedText: 'Não.', path: 'nao.png'),
  ];
  List<Carta> pessoas = [
    Carta(assignedText: 'Mãe', path: 'mae.jpg'),
  ];
  List<Carta> cumprimentos = [
    Carta(assignedText: 'Olá', path: 'ola.jpg'),
    Carta(assignedText: 'Estou bem, obrigado.', path: 'estoubem.png'),
    Carta(assignedText: 'Tchau!', path: 'tchau.jpg'),
    Carta(assignedText: 'Até mais!', path: 'download.jpg'),
  ];

  @override

  //criar um ListView.builder com ListWidgets.
  //os listwidgets também serão instanciados neste arquivo.

  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListWidget(
          ctxName: "Higiene",
          carta: higiene,
        ),
        ListWidget(
          ctxName: "Rapidas",
          carta: rapidas,
        ),
        ListWidget(
          ctxName: "Entretenimento",
          carta: entretenimento,
        ),
        ListWidget(
          ctxName: "Objetivas",
          carta: objetivas,
        ),
        ListWidget(
          ctxName: "Pessoas",
          carta: pessoas,
        ),
        ListWidget(
          ctxName: "Cumprimentos",
          carta: cumprimentos,
        ),
      ],
    );
  }
}
