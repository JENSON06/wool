import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';class ProductFiveDraweritem extends StatelessWidget {const ProductFiveDraweritem({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return Drawer(child: Container(width: 281.h, padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 20.v), decoration: AppDecoration.fillOnPrimaryContainer, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 18.v), CustomImageView(imagePath: ImageConstant.imgClose, height: 19.v, width: 24.h, onTap: () {onTapImgClose(context);}), SizedBox(height: 82.v), GestureDetector(onTap: () {onTapEighteen(context);}, child: Padding(padding: EdgeInsets.only(left: 4.h, right: 40.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgIconShopping, height: 20.v, width: 22.h, margin: EdgeInsets.only(bottom: 8.v)), Padding(padding: EdgeInsets.only(left: 9.h), child: Text("Order & Tracking", style: theme.textTheme.headlineSmall))]))), SizedBox(height: 61.v), Padding(padding: EdgeInsets.only(left: 4.h, right: 26.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgIconShopping, height: 20.v, width: 22.h, margin: EdgeInsets.only(bottom: 9.v)), Padding(padding: EdgeInsets.only(left: 9.h), child: Text("Manage Inventory", style: theme.textTheme.headlineSmall))])), SizedBox(height: 50.v), GestureDetector(onTap: () {onTapTwenty(context);}, child: Padding(padding: EdgeInsets.only(left: 4.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgBook, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 6.v, bottom: 34.v)), Container(width: 138.h, margin: EdgeInsets.only(left: 13.h), child: Text("Education & \nTraining", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall))]))), SizedBox(height: 48.v), Padding(padding: EdgeInsets.only(left: 4.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImage4, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 2.v, bottom: 3.v), onTap: () {onTapImgImageNine(context);}), GestureDetector(onTap: () {onTapTxtLiveStock(context);}, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Live Stock", style: theme.textTheme.headlineSmall)))])), SizedBox(height: 28.v), Padding(padding: EdgeInsets.only(left: 4.h, right: 26.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImage11, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 3.v, bottom: 2.v)), GestureDetector(onTap: () {onTapTxtQualityCalculator(context);}, child: Padding(padding: EdgeInsets.only(left: 10.h), child: Text("Quality Calculator", style: theme.textTheme.headlineSmall)))])), SizedBox(height: 46.v), Padding(padding: EdgeInsets.only(left: 4.h, right: 26.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage1124x24, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 6.v)), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("Search Resources", style: theme.textTheme.headlineSmall))])), SizedBox(height: 36.v), Padding(padding: EdgeInsets.only(left: 4.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage111, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 14.v)), Padding(padding: EdgeInsets.only(left: 10.h, top: 8.v), child: Text("Sell Products", style: theme.textTheme.headlineSmall))])), SizedBox(height: 28.v), Padding(padding: EdgeInsets.only(left: 9.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 24.v, width: 27.h, margin: EdgeInsets.only(top: 1.v, bottom: 4.v), child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgSettingsBlack900, height: 20.v, width: 22.h, alignment: Alignment.centerRight), CustomImageView(imagePath: ImageConstant.imgSettingsBlack90024x24, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.centerLeft)])), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("Settings", style: theme.textTheme.headlineSmall))]))]))); } 

/// Navigates back to the previous screen.
onTapImgClose(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the trackScreen when the action is triggered.
onTapEighteen(BuildContext context) { Navigator.pushNamed(context, AppRoutes.trackScreen); } 
/// Navigates to the educaitonScreen when the action is triggered.
onTapTwenty(BuildContext context) { Navigator.pushNamed(context, AppRoutes.educaitonScreen); } 
/// Navigates to the livestockScreen when the action is triggered.
onTapImgImageNine(BuildContext context) { Navigator.pushNamed(context, AppRoutes.livestockScreen); } 
/// Navigates to the livestockScreen when the action is triggered.
onTapTxtLiveStock(BuildContext context) { Navigator.pushNamed(context, AppRoutes.livestockScreen); } 
/// Navigates to the androidLargeEightScreen when the action is triggered.
onTapTxtQualityCalculator(BuildContext context) { Navigator.pushNamed(context, AppRoutes.androidLargeEightScreen); } 
 }
