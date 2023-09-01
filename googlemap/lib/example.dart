import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Example extends StatefulWidget {
  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  // static const CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(37.42796133580664, -122.085749655962),
  //   zoom: 14.4746,
  // );

  // static const CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);
  Location location = new Location();
  bool? _serviceEnabled;
  PermissionStatus? _permissionGranted;
  LocationData? _locationData;

  getLocation() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled!) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled!) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    setState(() {});
    print(_locationData);
  }

  final Set<Marker> markers = {};

  addMarkers() {
    setState(() {
      markers.add(
        Marker(
          markerId: MarkerId('Current Location'),
          position: LatLng(
            _locationData!.latitude!.toDouble(),
            _locationData!.longitude!.toDouble(),
          ),
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: InfoWindow(title: 'Google Map'),
        ),
      );
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Google Map'),
          automaticallyImplyLeading: false,
        ),
        body: _locationData != null
            ? GoogleMap(
                myLocationButtonEnabled: false,
                // minMaxZoomPreference: MinMaxZoomPreference.,
                // myLocationButtonEnabled: true,
                // myLocationEnabled: true,
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  target: LatLng(
                    _locationData!.latitude!.toDouble(),
                    _locationData!.longitude!.toDouble(),
                  ),
                  zoom: 15,
                  //24.386949864334294, 91.89817196065269
                ),
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                  addMarkers();
                },
                markers: markers,
              )
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}
