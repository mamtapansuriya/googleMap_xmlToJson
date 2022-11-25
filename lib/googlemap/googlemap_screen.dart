import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:googlemap_demo/googlemap/googlemap_controller.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({Key? key}) : super(key: key);

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  final MapController _controller = Get.put(MapController());

  /// static marker on map
  // final List<Map<String, dynamic>> clityList = const [
  //   {
  //     "address": "Jaipur the pink city",
  //     "id": "jaipur_01",
  //     "image":
  //         "https://i.pinimg.com/originals/b7/3a/13/b73a132e165978fa07c6abd2879b47a6.png",
  //     "lat": 26.922070,
  //     "lng": 75.778885,
  //     "name": "Jaipur India",
  //     "phone": "7014333352",
  //     "region": "South Asia"
  //   },
  //   {
  //     "address": "New Delhi capital of india",
  //     "id": "delhi_02",
  //     "image":
  //         "https://upload.wikimedia.org/wikipedia/commons/9/96/Delhi_Red_fort.jpg",
  //     "lat": 28.644800,
  //     "lng": 77.216721,
  //     "name": "Delhi City India",
  //     "phone": "7014333352",
  //     "region": "South Asia"
  //   },
  //   {
  //     "address": "Mumbai City",
  //     "id": "mumbai_03",
  //     "image":
  //         "https://upload.wikimedia.org/wikipedia/commons/7/7e/Mumbai_Taj.JPG",
  //     "lat": 19.076900,
  //     "lng": 72.877426,
  //     "name": "Mumbai City India",
  //     "phone": "7014333352",
  //     "region": "South Asia"
  //   },
  //   {
  //     "address": "Udaipur City",
  //     "id": "udaipur_04",
  //     "image":
  //         "https://upload.wikimedia.org/wikipedia/commons/6/6f/Evening_view%2C_City_Palace%2C_Udaipur.jpg",
  //     "lat": 24.571270,
  //     "lng": 73.691544,
  //     "name": "Udaipur City India",
  //     "phone": "7014333352",
  //     "region": "South Asia"
  //   },
  //   {
  //     "address": "Nepal Country",
  //     "id": "nepal_5",
  //     "image":
  //         "https://upload.wikimedia.org/wikipedia/commons/6/6f/Evening_view%2C_City_Palace%2C_Udaipur.jpg",
  //     "lat": 28.394857,
  //     "lng": 84.124008,
  //     "name": "Nepal",
  //     "phone": "7014333352",
  //     "region": "South Asia"
  //   }
  // ];
  //
  // final Map<String, Marker> _markers = {};

  // Future<void> _onMapCreated(GoogleMapController controller) async {
  //   _markers.clear();
  //   setState(() {
  //     for (int i = 0; i < clityList.length; i++) {
  //       print("For Loop");
  //       final marker = Marker(
  //         icon: BitmapDescriptor.defaultMarker,
  //         markerId: MarkerId(clityList[i]['name']),
  //         position: LatLng(clityList[i]['lat'], clityList[i]['lng']),
  //         infoWindow: InfoWindow(
  //             title: clityList[i]['name'],
  //             snippet: clityList[i]['address'],
  //             onTap: () {
  //               print("${clityList[i]['lat']}, ${clityList[i]['lng']}");
  //              // launchMap(clityList[i]['lat'], clityList[i]['lng']);
  //             }),
  //         // onTap: () {
  //         //   print("Clicked on marker");
  //         // },
  //       );
  //       print("${clityList[i]['lat']}, ${clityList[i]['lng']}");
  //       _markers[clityList[i]['name']] = marker;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: const Text("Google Map")),
          body: Obx(() {
            return GoogleMap(
                onMapCreated: _controller.onMapCreated,
                initialCameraPosition: _controller.cameraPosition,
                mapType: MapType.normal,
                myLocationEnabled: true,
                markers: Set<Marker>.of(_controller.markers),

                /// for draw polyline
                // polylines: Set<Polyline>.of(_controller.polylines.values),
                onTap: (position) {
                  print("position-->${position}");
                  _controller.googleMapController?.value.animateCamera(
                    CameraUpdate.newLatLng(position),
                  );
                  _controller.setMarkers(position);
                });
          })),
    );
  }
}
