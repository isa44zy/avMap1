import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Map2Flutter extends StatefulWidget {
  const Map2Flutter({Key? key}) : super(key: key);

  @override
  _Map2FlutterState createState() => _Map2FlutterState();
}

class _Map2FlutterState extends State<Map2Flutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAP2_FLUTTER'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(37.7749, -122.4194), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(37.7749, -122.4194),
                    builder: (ctx) => Container(
                      child:
                      Icon(Icons.location_on, color: Colors.purpleAccent),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(40.7128, -74.0060),
                    builder: (ctx) => Container(
                      child:
                      Icon(Icons.location_on, color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
