import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';

class MapController extends GetxController {
  Rx<GoogleMapController>? googleMapController;

  RxList<Marker> markers = <Marker>[].obs;

  LatLng start = const LatLng(21.23151, 72.866344);
  LatLng? end;

  /// for polyline
  // PolylinePoints polylinePoints = PolylinePoints();
  // String googleAPiKey = "AIzaSyBKotfojU6zqOijOP1UfAEHZt-wf2KT2p0";
  // Map<PolylineId, Polyline> polylines = {};

  @override
  void onInit() {
    // TODO: implement onInit
    setMarkers(start);
    super.onInit();
  }

  /// get polyline direction
  // setPoliLine() async {
  //   List<LatLng> polylineCoordinates = [];
  //   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
  //     googleAPiKey,
  //     PointLatLng(start.latitude, start.longitude),
  //     PointLatLng(end!.latitude, end!.longitude),
  //     travelMode: TravelMode.driving,
  //   );
  //
  //   if (result.points.isNotEmpty) {
  //     result.points.forEach((PointLatLng point) {
  //       polylineCoordinates.add(LatLng(pointude, point.longitude));
  //     });
  //   } else {
  //     print(result.errorMessage);
  //   }
  //
  //   addPolyLine(polylineCoordinates);
  // }
  /// addpolyline
  // addPolyLine(List<LatLng> polylineCoordinates) {
  //   PolylineId id = PolylineId("poly");
  //   Polyline polyline = Polyline(
  //     polylineId: id,
  //     color: Colors.deepPurpleAccent,
  //     points: polylineCoordinates,
  //     width: 8,
  //   );
  //   polylines[id] = polyline;
  // }

  CameraPosition cameraPosition = const CameraPosition(
    target: LatLng(21.1702, 72.866344),
    zoom: 0.0,
  );
  void onMapCreated(GoogleMapController controller) {
    googleMapController?.value = controller;
  }

  setMarkers(cordinate) async {
    end = cordinate;

    markers.add(
      Marker(
        markerId: MarkerId(end.toString()),
        position: end ?? LatLng(0.0, 0.0),
        infoWindow: const InfoWindow(
          title: 'end',
        ),
        icon: BitmapDescriptor.defaultMarker,
        onTap: () {
          //  launchMap(end?.latitude, end?.longitude);
          print("cordinate of map====${end}");
        },
      ),
    );
  }

  launchMap(lat, long) {
    MapsLauncher.launchCoordinates(lat, long);
  }
}
