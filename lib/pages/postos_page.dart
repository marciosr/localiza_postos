import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import '../controllers/postos_controller.dart';

final appKey = GlobalKey();

class PostosPage extends StatefulWidget {
  const PostosPage({super.key});

  @override
  State<PostosPage> createState() => _PostosPageState();
}

class _PostosPageState extends State<PostosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: appKey,
      appBar: AppBar(
        title: const Text('Meu Local'),
      ),
      body: ChangeNotifierProvider<PostosController>(
          create: (context) => PostosController(),
          child: Builder(builder: (context) {
            final local = context.watch<PostosController>();
            // String mensagem = local.erro == ''
            //     ? 'Latitude: ${local.lat} | Longitude: ${local.long}'
            //     : local.erro;
            return GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(local.lat, local.long),
                zoom: 18,
              ),
              zoomControlsEnabled: true,
              mapType: MapType.satellite,
              myLocationButtonEnabled: true,
              onMapCreated: local.onMapCreated,
              markers: local.markers,
            );
          })),
    );
  }
}
