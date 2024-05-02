import 'package:flutter/material.dart';
import 'package:baking_house/userinterface/paginas/carrinho.dart';

Widget SearchTop(BuildContext context){
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 4),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {},
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: TextFormField(
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    hintText: 'Pesquisar doces',
                    hintStyle: TextStyle(color: Colors.black),        
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent),
                    ),
                    contentPadding: EdgeInsets.all(8),
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    filled: true,
                    fillColor: Colors.transparent,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.shopping_basket_outlined, color: Colors.black),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TelaCarrinho(cartItems: [])),
                );
              },
            ),
          ],
        ),
      ],
    ),
  );
}
