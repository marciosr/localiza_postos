import 'package:flutter/material.dart';
import '../models/posto.dart';

class PostosRepository extends ChangeNotifier {
  final List<Posto> postos = [
    Posto(
      nome: 'Posto Oliveira/Ale',
      endereco:
          'Av. Mal. Deodoro da Fonseca, 1125-1199 - Vila Sao Miguel Januária - MG 39480-000',
      foto:
          'https://lh5.googleusercontent.com/p/AF1QipN3acuDq142UAp3UU6y-D0UpZ0k8WpKiK-szYGq=w408-h339-k-no',
      latitude: -15.496365,
      longitude: -44.370786,
    ),
    Posto(
      nome: 'Posto Alvorada',
      endereco:
          'Av. Cônego Ramiro Leite, 2012-2046 - Vila Brasilandia Januária - MG 39480-000',
      foto:
          'https://lh5.googleusercontent.com/p/AF1QipN6pcgeyBTO1MQPa-tpmKKdk1yKGMNYXEBIUlQm=w408-h306-k-no',
      latitude: -15.471163,
      longitude: -44.375387,
    ),
    Posto(
      nome: 'Supermercados BH',
      endereco: 'Av. Cel. Cassiano, 343 - Centro Januária - MG 39480-000',
      foto:
          'https://lh5.googleusercontent.com/p/AF1QipM66Q6Yp-YyXU-SBDNoGUfPSayffZygft0rsJPV=w544-h306-k-no',
      latitude: -15.490880,
      longitude: -44.364975,
    ),
  ];
}
