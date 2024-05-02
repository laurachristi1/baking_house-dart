import 'package:baking_house/userinterface/paginas/compras.dart';
import 'package:flutter/material.dart';

class TelaCarrinho extends StatefulWidget {
  final List<Map<String, dynamic>> cartItems;

  const TelaCarrinho({Key? key, required this.cartItems}) : super(key: key);

  @override
  _TelaCarrinhoState createState() => _TelaCarrinhoState();
}

class _TelaCarrinhoState extends State<TelaCarrinho> {
  double total = 0;

  @override
  void initState() {
    super.initState();
    _calculateTotal();
  }

  void _calculateTotal() {
    setState(() {
      total = 0;
      for (var item in widget.cartItems) {
        total += item['price'];
      }
    });
  }
  
  void _calculateTotalMenos() {
    setState(() {
      total = 0;
      for (var item in widget.cartItems) {
        total -= item['price'];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrinho'),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.cartItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {},
                  background: Container(
                    color: Colors.red,
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Icon(Icons.delete, color: Colors.black),

                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(widget.cartItems[index]['imageAsset']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.cartItems[index]['title'],
                                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '\$${widget.cartItems[index]['price']}',
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Você também pode gostar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 200, 
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildProductCard('Bolo de Festa', '/bolo_inteiro4.jpg', 20.00),
                buildProductCard('Brownie M&M', '/brownie2.jpg', 15.00),
                buildProductCard('Brigadeiro Tradicional', '/doce1.jpg', 8.00),
                buildProductCard('Torta de Limão', '/torta1.jpg', 22.00),
                buildProductCard('Bolo Fatia de Cenoura', '/bolo_pedaco3.jpg', 17.00),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TelaCompras()),
                    );
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Adicionar mais itens'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 255, 132, 189),
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Continuar'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.pinkAccent,
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Text(
              'Total: \$${total.toStringAsFixed(2)}',
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProductCard(String title, String imageAsset, double price) {
    return GestureDetector(
      onTap: () {
      },
      child: Container(
        width: 150,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imageAsset),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$${price.toStringAsFixed(2)}',
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
