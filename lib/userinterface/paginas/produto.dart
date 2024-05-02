import 'package:baking_house/userinterface/paginas/carrinho.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> cartItems = [];

class TelaProdutos extends StatelessWidget {
  final String title;
  final String imageAsset;
  final double price;

  TelaProdutos(
      {required this.title, required this.imageAsset, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalhes do Produto',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TelaCarrinho(cartItems: cartItems)),
              );
            },
            icon: const Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.shopping_basket_outlined,
                    size: 22, color: Colors.black),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text('Compras',
                      style: TextStyle(color: Colors.black, fontSize: 12)),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Preço: \$${price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 17, color: Colors.black),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Adicionar produto ao carrinho
                Map<String, dynamic> item = {
                  'title': title,
                  'imageAsset': imageAsset,
                  'price': price,
                };
                cartItems.add(item);

                // Exibir mensagem de produto adicionado ao carrinho
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Produto adicionado ao carrinho!'),
                  ),
                );
              },
              child: const Text(
                'Adicionar ao Carrinho',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green[800],
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
