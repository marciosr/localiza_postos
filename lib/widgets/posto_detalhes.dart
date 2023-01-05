import 'package:flutter/material.dart';

import '../models/posto.dart';

// ignore: must_be_immutable
class PostoDetalhes extends StatelessWidget {
  Posto posto;

  PostoDetalhes({super.key, required this.posto});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Image.network(
          posto.foto,
          height: 250,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24, left: 24),
          child: Text(
            posto.nome,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24, left: 24),
          child: Text(
            posto.endereco,
          ),
        ),
      ],
    );
  }
}
