import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_title_image.dart';import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:jenson_k_s_application1/widgets/custom_elevated_button.dart';class AndroidLargeTwentyoneScreen extends StatelessWidget {const AndroidLargeTwentyoneScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.only(left: 38.h, top: 166.v, right: 38.h), child: Column(children: [CustomElevatedButton(text: "Agencies"), SizedBox(height: 89.v), CustomElevatedButton(text: "Driver"), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: SizedBox(height: 55.v, width: double.maxFinite, child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(top: 54.v), child: SizedBox(width: double.maxFinite, child: Divider()))), AppbarTitleImage(imagePath: ImageConstant.imgArrowLeftCyanA40049x58, margin: EdgeInsets.only(right: 302.h, bottom: 6.v), onTap: () {onTapArrowLeft(context);}), AppbarSubtitle(text: "Coal Transporters", margin: EdgeInsets.only(left: 59.h, top: 7.v, right: 19.h))])), styleType: Style.bgFill_2); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
