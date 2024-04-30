import 'package:flutter/material.dart';

class TelaProdutos extends StatelessWidget {
  final String title;
  final String imageAsset;

  TelaProdutos({required this.title, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detalhes do Evento',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        backgroundColor: Colors.transparent,
         iconTheme: const IconThemeData(color: Colors.white)
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
            const Text(
              'MAIS UMA MARATONA DE CICLISMO CHEGANDO E DESSA VEZ MAIS INSANA QUE NUNCA',
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 16),
            const Text(
              'Uma trilha cheia de obstáculos e manobras, se quiser sobreviver e não se ralar, é bom que a manutenção da sua Bike esteja em dia, pois o parque Ibirapuera vai pegar fogo na pista',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
            const SizedBox(height: 24),
            const Row(
              children: [
                const Icon(Icons.calendar_today, color: Colors.white, size: 24),
                SizedBox(width: 8),
                Text(
                  '12 de Abril de 2024',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.location_on, color: Colors.white, size: 24),
                SizedBox(width: 8),
                Text(
                  'Ibirapuera - São Paulo',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.credit_card, color: Colors.green, size: 24),
                SizedBox(width: 8),
                Text(
                  'Parcelamos em até 12x',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Avaliação:',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Row(
              children: [
                Icon(Icons.star, color: Colors.yellow, size: 20),
                Icon(Icons.star, color: Colors.yellow, size: 20),
                Icon(Icons.star, color: Colors.yellow, size: 20),
                Icon(Icons.star_half, color: Colors.yellow, size: 20),
                Icon(Icons.star_border, color: Colors.yellow, size: 20),
              ],
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
                child: const Text(
                  'Comprar ingressos',
                  style: TextStyle(color: Colors.white, fontSize: 20), // Ajuste o tamanho da letra aqui
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
