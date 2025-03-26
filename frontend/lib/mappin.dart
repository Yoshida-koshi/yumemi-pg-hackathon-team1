import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '31.dart';
//位置決定ページ

class mappinPage extends StatefulWidget {
  const mappinPage({Key? key}) : super(key: key);

  @override
  State<mappinPage> createState() => _createPageState();
}
class _createPageState extends State<mappinPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => settingPage()));
                  },
                  child: Image.asset("images/Vector.png",
                  height: 70,
                      width: 70),
                ),
              ],
            ),
            Container(
              height: 300,
              width: 300,
              child: FlutterMap(
                options: const MapOptions(
                  initialCenter: LatLng(51.509364, -0.128928),
                  initialZoom: 9.2
                ),
                children: [
                  TileLayer(
                    urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.example.app'
                  ),
                  RichAttributionWidget(
                    attributions: [
                      TextSourceAttribution(
                        "OpenStreetMap contributors",
                        onTap: () => launchUrl(Uri.parse("https://openstreetmap.org/copyright"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: (){

              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(314, 63),
                backgroundColor: Colors.amber,
              ),
              child: Text("決定",
                style: TextStyle(
                    color: Colors.white,
                  fontSize: 20
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  launchUrl(Uri parse) {}
}
