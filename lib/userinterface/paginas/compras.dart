import 'package:baking_house/userinterface/customWidgets/circulohori.dart';
import 'package:baking_house/userinterface/customWidgets/destaque.dart';
import 'package:baking_house/userinterface/customWidgets/maisInfo.dart';
import 'package:baking_house/userinterface/customWidgets/search.dart';
import 'package:baking_house/userinterface/paginas/produto.dart';
import 'package:flutter/material.dart';

List<Map<String, String>> items = [
  {"img": "/icone_bolo-int.jpeg", "text": "Bolos"},
  {"img": "/icone_bolo-peda.jpeg", "text": "Fatias de Bolo"},
  {"img": "/icone-torta.jpeg", "text": "Tortas"},
  {"img": "/icone-bro.jpeg", "text": "Brownies"},
  {"img": "/icone_briga.jpeg", "text": "Doces"}
];

class TelaCompras extends StatefulWidget {
  const TelaCompras({Key? key}) : super(key: key);

  @override
  State<TelaCompras> createState() => _TelaComprasState();
}

class _TelaComprasState extends State<TelaCompras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchTop(context),
            verMais(
              items,
              title: "Bem-vindo a Baking House!",
              subtitle: "Os melhores doces do Brasil.",
            ),
            circuloContainer(items),
            destaqueS(title: 'Mais vendidos...'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard(
                        'Bolo de Festa', '/bolo_inteiro4.jpg', 20.00),
                    buildProductCard('Brownie M&M', '/brownie2.jpg', 15.00),
                    buildProductCard(
                        'Brigadeiro Tradicional', '/doce1.jpg', 8.00),
                    buildProductCard('Torta de Limão', '/torta1.jpg', 22.00),
                    buildProductCard(
                        'Bolo Fatia de Cenoura', '/bolo_pedaco3.jpg', 17.00),
                  ],
                ),
              ),
            ),
            destaqueS(title: 'Bolos Inteiros'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard(
                        'Bolo Meio-a-Meio', '/bolo_inteiro1.jpg', 20.00),
                    buildProductCard(
                        'Bolo Trufado', '/bolo_inteiro2.jpg', 20.00),
                    buildProductCard(
                        'Bolo Chocofetti', '/bolo_inteiro3.jpg', 20.00),
                    buildProductCard(
                        'Bolo de Festa', '/bolo_inteiro4.jpg', 20.00),
                    buildProductCard(
                        'Bolo de Chocolate', '/bolo_inteiro5.jpg', 20.00),
                  ],
                ),
              ),
            ),
            destaqueS(title: 'Bolos Fatia'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard(
                        'Bolo de Limão', '/bolo_pedaco1.jpg', 18.00),
                    buildProductCard(
                        'Bolo de Nozes', '/bolo_pedaco2.jpg', 19.00),
                    buildProductCard(
                        'Bolo de Cenoura', '/bolo_pedaco3.jpg', 17.00),
                    buildProductCard(
                        'Bolo de Milho', '/bolo_pedaco4.jpg', 16.00),
                    buildProductCard(
                        'Bolo de Banana', '/bolo_pedaco5.jpg', 18.00),
                  ],
                ),
              ),
            ),
            destaqueS(title: 'Tortas'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard('Torta de Limão', '/torta1.jpg', 22.00),
                    buildProductCard('Torta de Cereja', '/torta2.jpg', 23.00),
                    buildProductCard('Torta de Morango', '/torta3.jpg', 24.00),
                    buildProductCard('Torta de Pistache', '/torta4.jpg', 25.00),
                    buildProductCard('Torta de Uva', '/torta5.jpg', 23.00),
                  ],
                ),
              ),
            ),
            destaqueS(title: 'Brownies'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard(
                        'Brownie de Morango', '/brownie1.jpg', 16.00),
                    buildProductCard('Brownie de M&M', '/brownie2.jpg', 15.00),
                    buildProductCard(
                        'Brownie de Chocolate Branco', '/brownie3.jpg', 17.00),
                    buildProductCard(
                        'Brownie de Cookies', '/brownie4.jpg', 18.00),
                    buildProductCard(
                        'Brownie Tradicional', '/brownie5.jpg', 16.00),
                  ],
                ),
              ),
            ),
            destaqueS(title: 'Doces'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 260,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildProductCard(
                        'Brigadeiro Tradicional', '/doce1.jpg', 8.00),
                    buildProductCard('Bombom de Uva', '/doce2.jpg', 12.00),
                    buildProductCard(
                        'Brigadeiro de Morango', '/doce3.jpg', 10.00),
                    buildProductCard('Pão de Mel', '/doce4.jpg', 13.00),
                    buildProductCard(
                        'Brigadeiro de Churros', '/doce5.jpg', 10.00),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
Widget buildProductCard(String title, String imageAsset, double price) {

  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TelaProdutos(
            title: title,
            imageAsset: imageAsset,
            price: price,
          ),
        ),
      );
    },
    child: Container(
      width: 200,
      height: 240,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 160,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageAsset),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\$${price.toStringAsFixed(2)}',
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              const SizedBox(width: 5),
             
            ],
          ),
        ],
      ),
    ),
  );
}
}
