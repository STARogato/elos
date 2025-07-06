import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elos'),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('lib/assets/1.jpg'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: const [
            TrilhaCard(
              title: 'Oficinas Profissionalizantes',
              icon: Icons.build,
              color: Colors.teal,
            ),
            TrilhaCard(
              title: 'Esporte & Arte',
              icon: Icons.palette,
              color: Colors.purple,
            ),
            TrilhaCard(
              title: 'Soft Skills',
              icon: Icons.psychology,
              color: Colors.orange,
            ),
            TrilhaCard(
              title: 'Empreendedorismo',
              icon: Icons.rocket_launch,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class TrilhaCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const TrilhaCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // abrir trilha
      },
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.15),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: color),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
