import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:one_go_app/custom_widgets/constants.dart';
import 'package:one_go_app/views/custom_bottom_sheet.dart';

class RideTrackingPage extends StatefulWidget {
  static const String id = 'Ride_tracking';
  const RideTrackingPage({Key? key}) : super(key: key);

  @override
  State<RideTrackingPage> createState() => _RideTrackingPageState();
}

class _RideTrackingPageState extends State<RideTrackingPage> {
  LocationData? currentLocation;
  final Completer<GoogleMapController> _completerController =
      Completer<GoogleMapController>();
  late GoogleMapController newGoogleMapController;
  void getCurrentDeviceLocation() async {
    Location location = Location();
    location.getLocation().then((location) => currentLocation = location);

    location.onLocationChanged.listen((newLocation) {
      currentLocation = newLocation;
      setState(() {});
    });
  }

  @override
  void initState() {
    getCurrentDeviceLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const GoogleMapsBottomSheet(),
        backgroundColor: whiteColor,
        body: Stack(
          children: [
            currentLocation == null
                ? const Center(child: CircularProgressIndicator())
                : GoogleMap(
                    onMapCreated: (controller) {
                      newGoogleMapController = controller;
                    },
                    initialCameraPosition: CameraPosition(
                        target: LatLng(currentLocation!.latitude!,
                            currentLocation!.longitude!),
                        zoom: 16.5),
                    zoomControlsEnabled: true,
                    mapType: MapType.normal,
                    markers: {
                      Marker(
                        markerId: const MarkerId("current Location"),
                        position: LatLng(currentLocation!.latitude!,
                            currentLocation!.longitude!),
                      ),
                    },
                  ),
            Positioned(
              top: 50,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6,
                      spreadRadius: 0.5,
                      offset: Offset(0.7, 0.7),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: whiteColor,
                  radius: 20,
                  child: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
