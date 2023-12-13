import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/widgets/custom_outlined_button.dart';class CategoryScreen extends StatelessWidget {const CategoryScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgCategory), fit: BoxFit.cover)), child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 30.h), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text("CATEGORY", style: CustomTextStyles.displayMedium50), SizedBox(height: 53.v), _buildProducersButton(context), SizedBox(height: 42.v), GestureDetector(onTap: () {onTapTxtGovernmentSector(context);}, child: Container(width: 297.h, padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 9.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Text("Government Sector", style: theme.textTheme.headlineLarge))), SizedBox(height: 42.v), _buildPrivateSectorButton(context), SizedBox(height: 42.v), _buildSellerButton(context), SizedBox(height: 42.v), _buildBuyerButton(context), SizedBox(height: 5.v)]))))); } 
/// Section Widget
Widget _buildProducersButton(BuildContext context) { return CustomOutlinedButton(height: 57.v, text: "Producers", buttonStyle: CustomButtonStyles.outlineBlack, buttonTextStyle: theme.textTheme.headlineLarge!, onPressed: () {onTapProducersButton(context);}); } 
/// Section Widget
Widget _buildPrivateSectorButton(BuildContext context) { return CustomOutlinedButton(height: 57.v, text: "Private Sector", buttonStyle: CustomButtonStyles.outlineBlack, buttonTextStyle: theme.textTheme.headlineLarge!, onPressed: () {onTapPrivateSectorButton(context);}); } 
/// Section Widget
Widget _buildSellerButton(BuildContext context) { return CustomOutlinedButton(height: 57.v, text: "Seller", buttonStyle: CustomButtonStyles.outlineBlack, buttonTextStyle: theme.textTheme.headlineLarge!, onPressed: () {onTapSellerButton(context);}); } 
/// Section Widget
Widget _buildBuyerButton(BuildContext context) { return CustomOutlinedButton(height: 57.v, text: "Buyer", buttonStyle: CustomButtonStyles.outlineBlack, buttonTextStyle: theme.textTheme.headlineLarge!, onPressed: () {onTapBuyerButton(context);}); } 
/// Navigates to the androidLargeSevenScreen when the action is triggered.
onTapProducersButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.androidLargeSevenScreen); } 
/// Navigates to the singuponeTabContainerScreen when the action is triggered.
onTapTxtGovernmentSector(BuildContext context) { Navigator.pushNamed(context, AppRoutes.singuponeTabContainerScreen); } 
/// Navigates to the singuponeTabContainerScreen when the action is triggered.
onTapPrivateSectorButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.singuponeTabContainerScreen); } 
/// Navigates to the singuponeTabContainerScreen when the action is triggered.
onTapSellerButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.singuponeTabContainerScreen); } 
/// Navigates to the singuponeTabContainerScreen when the action is triggered.
onTapBuyerButton(BuildContext context) { Navigator.pushNamed(context, AppRoutes.singuponeTabContainerScreen); } 
 }
