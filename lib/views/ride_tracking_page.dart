import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        backgroundColor: whiteColor,
        body: Stack(
          children: [
            currentLocation == null
                ? const Center(child: CircularProgressIndicator())
                : GoogleMap(
                    myLocationButtonEnabled: true,
                    myLocationEnabled: true,
                    zoomControlsEnabled: true,
                    zoomGesturesEnabled: true,
                    onMapCreated: (controller) {
                      newGoogleMapController = controller;
                    },
                    initialCameraPosition: CameraPosition(
                        target: LatLng(currentLocation!.latitude!,
                            currentLocation!.longitude!),
                        zoom: 16.5),
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
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                      height: 40.0.h,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 50.w,
                            height: 50.h,
                            child: const Icon(
                              Icons.close,
                              color: blueColor,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0.r),
                            child: Center(
                                child: Text(
                              'Cancel Ride',
                              style: normalBlueStyle.copyWith(fontSize: 15.sp),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
            const GoogleMapsBottomSheet(),
          ],
        ));
  }
}
