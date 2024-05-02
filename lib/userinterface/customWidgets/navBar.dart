import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

Widget bottomNavigationBar(int itemSelecionado, Function(int) nextStation) {
  return CurvedNavigationBar(
    backgroundColor: Colors.transparent,
    color: Colors.transparent, // cor do fundo
    buttonBackgroundColor: Colors.pinkAccent, // cor de fundo dos botões (itens)
    height: 75, // altura da CurvedNavigationBar
    index: itemSelecionado,
    items: const <Widget>[
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.home, size: 32, color: Colors.black26),
          Padding(
             padding: EdgeInsets.symmetric(horizontal: 8),
          ),
        ],
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.favorite, size: 32, color: Colors.black26),
          Padding(
             padding: EdgeInsets.symmetric(horizontal: 8),
          ),
        ],
      ),
  
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.shopping_bag, size: 32, color: Colors.black26),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
          ),
        ],
      ),
    ],
    onTap: nextStation,
  );
}
