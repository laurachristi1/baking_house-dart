
import 'package:baking_house/userinterface/customWidgets/navBar.dart';
import 'package:baking_house/userinterface/paginas/carrinho.dart';
import 'package:baking_house/userinterface/paginas/compras.dart';
import 'package:baking_house/userinterface/paginas/favoritos.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;

  //ir para o próximo item
  void nextStation(int posicao){
    setState(() {
      itemSelecionado = posicao;
    });
  }
  //lista de páginas
  List<Widget> telas = const [
    TelaCompras(),
    TelaFavoritos(),
    TelaCarrinho(cartItems: [],),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:telas.elementAt(itemSelecionado),
      bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
    );
  }
}

