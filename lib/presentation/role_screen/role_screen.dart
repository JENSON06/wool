import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_image.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';class RoleScreen extends StatelessWidget {const RoleScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [Divider(), SizedBox(height: 88.v), _buildCoalMineManager(context), Spacer(flex: 34), _buildCoalTransporter(context), Spacer(flex: 33), _buildCoalEnduser(context), Spacer(flex: 31)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 54.v, leadingWidth: 58.h, leading: GestureDetector(onTap: () {onTapSixtySeven(context);}, child: Container(margin: EdgeInsets.only(bottom: 3.v), padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 15.v), decoration: AppDecoration.fillCyanA, child: Column(children: [SizedBox(height: 3.v), AppbarImage(imagePath: ImageConstant.imgShare)]))), title: AppbarSubtitle(text: "Select Your Role", margin: EdgeInsets.only(left: 8.h)), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildCoalMineManager(BuildContext context) { return GestureDetector(onTap: () {onTapCoalMineManager(context);}, child: Container(margin: EdgeInsets.symmetric(horizontal: 18.h), padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 28.v), decoration: AppDecoration.outlineBlack9007.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 12.v), Text("Coal Mine Manager", style: CustomTextStyles.headlineSmallArefRuqaa)]))); } 
/// Section Widget
Widget _buildCoalTransporter(BuildContext context) { return GestureDetector(onTap: () {onTapCoalTransporter(context);}, child: Container(margin: EdgeInsets.symmetric(horizontal: 18.h), padding: EdgeInsets.symmetric(horizontal: 65.h, vertical: 28.v), decoration: AppDecoration.outlineBlack9007.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 12.v), Text("Coal Transporter", style: CustomTextStyles.headlineSmallArefRuqaa)]))); } 
/// Section Widget
Widget _buildCoalEnduser(BuildContext context) { return GestureDetector(onTap: () {onTapCoalEnduser(context);}, child: Container(width: 324.h, margin: EdgeInsets.symmetric(horizontal: 18.h), padding: EdgeInsets.symmetric(horizontal: 73.h, vertical: 31.v), decoration: AppDecoration.outlineBlack9007.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 7.v), Text("Coal Enduser", style: CustomTextStyles.headlineSmallArefRuqaa)]))); } 
/// Navigates to the loginScreen when the action is triggered.
onTapSixtySeven(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginScreen); } 
/// Navigates to the managerScreen when the action is triggered.
onTapCoalMineManager(BuildContext context) { Navigator.pushNamed(context, AppRoutes.managerScreen); } 
/// Navigates to the androidLargeTwentyoneScreen when the action is triggered.
onTapCoalTransporter(BuildContext context) { Navigator.pushNamed(context, AppRoutes.androidLargeTwentyoneScreen); } 
/// Navigates to the endsureScreen when the action is triggered.
onTapCoalEnduser(BuildContext context) { Navigator.pushNamed(context, AppRoutes.endsureScreen); } 
 }
