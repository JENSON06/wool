import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';

class LiveTrackingOneScreen extends StatelessWidget {
  LiveTrackingOneScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 745.v,
          width: double.maxFinite,
          child: GoogleMap(
            //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: LatLng(
                37.43296265331129,
                -122.08832357078792,
              ),
              zoom: 14.4746,
            ),
            onMapCreated: (GoogleMapController controller) {
              googleMapController.complete(controller);
            },
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            myLocationButtonEnabled: false,
            myLocationEnabled: false,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: SizedBox(
        height: 54.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 53.v),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(),
                ),
              ),
            ),
            AppbarSubtitle(
              text: "Home",
              margin: EdgeInsets.only(
                left: 135.h,
                right: 134.h,
              ),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgShare,
              margin: EdgeInsets.fromLTRB(23.h, 22.v, 325.h, 14.v),
            ),
          ],
        ),
      ),
      styleType: Style.bgFill_2,
    );
  }
}
