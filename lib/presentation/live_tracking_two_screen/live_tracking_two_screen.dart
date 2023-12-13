import 'dart:async';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_image.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_title_image.dart';import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';
// ignore_for_file: must_be_immutable
class LiveTrackingTwoScreen extends StatelessWidget {LiveTrackingTwoScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(height: 745.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgMap1, height: 745.v, width: 360.h, alignment: Alignment.center), _buildMap(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: SizedBox(height: 52.v, width: double.maxFinite, child: Stack(alignment: Alignment.centerRight, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(top: 51.v), child: SizedBox(width: double.maxFinite, child: Divider()))), AppbarSubtitle(text: "Live Tracking", margin: EdgeInsets.only(left: 87.h, top: 2.v, right: 61.h)), AppbarTitleImage(imagePath: ImageConstant.imgShare, margin: EdgeInsets.fromLTRB(23.h, 20.v, 325.h, 14.v)), Align(alignment: Alignment.centerLeft, child: Container(margin: EdgeInsets.only(left: 1.h, right: 301.h, bottom: 1.v), padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 16.v), decoration: AppDecoration.fillCyanA, child: Column(children: [SizedBox(height: 1.v), AppbarImage(imagePath: ImageConstant.imgArrowLeftCyanA400, onTap: () {onTapArrowLeft(context);})])))])), styleType: Style.bgFill_2); } 
/// Section Widget
Widget _buildMap(BuildContext context) { return Container(height: 630.v, width: 322.h, margin: EdgeInsets.only(top: 21.v), child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
