import 'package:flutter/material.dart';

class TrilhasPage extends StatelessWidget {
  final String trilha;

  const TrilhasPage({super.key, required this.trilha});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trilha: $trilha')),
      body: Center(child: Text('Conteúdo da trilha "$trilha" vai aqui')),
    );
  }
}
