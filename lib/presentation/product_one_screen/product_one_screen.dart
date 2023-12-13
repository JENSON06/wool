import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/presentation/e_commerce_one_page/e_commerce_one_page.dart';import 'package:jenson_k_s_application1/widgets/custom_bottom_bar.dart';import 'package:jenson_k_s_application1/widgets/custom_rating_bar.dart';
// ignore_for_file: must_be_immutable
class ProductOneScreen extends StatelessWidget {ProductOneScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, body: SizedBox(height: 745.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgFrame3, height: 664.v, width: 358.h, alignment: Alignment.bottomCenter), Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(top: 81.v, right: 1.h), padding: EdgeInsets.symmetric(vertical: 23.v), decoration: AppDecoration.fillOnPrimaryContainer, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 9.v), CustomImageView(imagePath: ImageConstant.imgRectangle23, height: 350.v, width: 359.h)]))), _buildProductDetails(context), _buildTopBar(context), Align(alignment: Alignment.centerLeft, child: Container(padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 20.v), decoration: AppDecoration.fillOnPrimaryContainer, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 18.v), CustomImageView(imagePath: ImageConstant.imgClose, height: 19.v, width: 24.h, onTap: () {onTapImgClose(context);}), SizedBox(height: 82.v), GestureDetector(onTap: () {onTapEighteen(context);}, child: Padding(padding: EdgeInsets.only(left: 4.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgIconShopping, height: 20.v, width: 22.h, margin: EdgeInsets.only(bottom: 8.v)), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("Order & Tracking", style: theme.textTheme.headlineSmall))]))), SizedBox(height: 61.v), Padding(padding: EdgeInsets.only(left: 4.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgIconShopping, height: 20.v, width: 22.h, margin: EdgeInsets.only(bottom: 9.v)), Padding(padding: EdgeInsets.only(left: 10.h), child: Text("Manage Inventory", style: theme.textTheme.headlineSmall))])), SizedBox(height: 50.v), GestureDetector(onTap: () {onTapTwenty(context);}, child: Padding(padding: EdgeInsets.only(left: 4.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgBook, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 6.v, bottom: 34.v)), Container(width: 138.h, margin: EdgeInsets.only(left: 13.h), child: Text("Education & \nTraining", maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.headlineSmall))]))), SizedBox(height: 37.v), Padding(padding: EdgeInsets.only(left: 4.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImage4, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 2.v, bottom: 3.v), onTap: () {onTapImgImageSix(context);}), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Live Stock", style: theme.textTheme.headlineSmall))])), SizedBox(height: 43.v), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: 4.h, right: 11.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage1124x24, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 7.v)), GestureDetector(onTap: () {onTapTxtQualityCalculator(context);}, child: Padding(padding: EdgeInsets.only(left: 25.h), child: Text("Quality Calculator", style: theme.textTheme.headlineSmall)))]))), SizedBox(height: 39.v), Padding(padding: EdgeInsets.only(left: 4.h, right: 8.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage11, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 7.v)), Padding(padding: EdgeInsets.only(left: 25.h), child: Text("Search Resources", style: theme.textTheme.headlineSmall))])), SizedBox(height: 41.v), Padding(padding: EdgeInsets.only(left: 4.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgImage111, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 5.v)), Padding(padding: EdgeInsets.only(left: 24.h), child: Text("Sell Products", style: theme.textTheme.headlineSmall))])), SizedBox(height: 32.v), Padding(padding: EdgeInsets.only(left: 9.h), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 24.v, width: 26.h, margin: EdgeInsets.only(top: 1.v, bottom: 4.v), child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgSettingsBlack900, height: 20.v, width: 22.h, alignment: Alignment.centerRight), CustomImageView(imagePath: ImageConstant.imgSettingsBlack90024x24, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.centerLeft)])), Padding(padding: EdgeInsets.only(left: 7.h), child: Text("Settings", style: theme.textTheme.headlineSmall))]))])))])), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildProductDetails(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(right: 1.h), padding: EdgeInsets.symmetric(horizontal: 10.h), decoration: AppDecoration.fillOnPrimaryContainer, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("Ganga Wool Yarn 200gms", style: theme.textTheme.titleLarge)), SizedBox(height: 15.v), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: 12.h, right: 15.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [CustomRatingBar(initialRating: 5), Padding(padding: EdgeInsets.only(left: 12.h, top: 7.v, bottom: 5.v), child: Text("Rating", style: theme.textTheme.titleSmall)), Padding(padding: EdgeInsets.only(left: 24.h, top: 9.v, bottom: 2.v), child: Text("In Stock", style: CustomTextStyles.titleMediumGreen900))]))), SizedBox(height: 24.v), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 18.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 5.v, bottom: 2.v), child: Text("Save 4.7% ", style: theme.textTheme.titleSmall)), Container(height: 25.v, width: 99.h, margin: EdgeInsets.only(left: 18.h, top: 2.v), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: Text("Rs 420.00", style: CustomTextStyles.titleLargeBluegray400)), Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(bottom: 10.v), child: SizedBox(width: 99.h, child: Divider(color: appTheme.blueGray400))))])), Padding(padding: EdgeInsets.only(left: 12.h, bottom: 2.v), child: Text("Rs 400.00", style: theme.textTheme.titleLarge))]))), SizedBox(height: 34.v), Container(width: 285.h, margin: EdgeInsets.only(left: 12.h, right: 41.h), child: RichText(text: TextSpan(children: [TextSpan(text: "Delivery on ", style: theme.textTheme.titleSmall), TextSpan(text: "23 November,Wednesday. Order within 2hrs 35mins", style: CustomTextStyles.titleMediumBlack900)]), textAlign: TextAlign.left)), SizedBox(height: 21.v), Padding(padding: EdgeInsets.only(left: 12.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgLocation1, height: 29.v, width: 27.h), Padding(padding: EdgeInsets.only(left: 7.h, top: 6.v, bottom: 5.v), child: Text("Enter the Address", style: CustomTextStyles.titleSmall14)), Padding(padding: EdgeInsets.only(left: 27.h, top: 3.v, bottom: 6.v), child: Text("Pincode", style: theme.textTheme.titleSmall)), Container(height: 20.v, width: 81.h, margin: EdgeInsets.only(left: 3.h, top: 5.v, bottom: 3.v), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.center, child: Container(height: 20.v, width: 81.h, decoration: BoxDecoration(color: theme.colorScheme.secondaryContainer))), Align(alignment: Alignment.bottomCenter, child: Text("637458", style: theme.textTheme.titleSmall))]))])), SizedBox(height: 17.v), Container(margin: EdgeInsets.only(left: 5.h), padding: EdgeInsets.symmetric(horizontal: 4.h), decoration: AppDecoration.fillSecondaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(left: 21.h, top: 6.v), child: Text("Qty: 1", style: CustomTextStyles.titleMediumBlack900_1)), CustomImageView(imagePath: ImageConstant.imgDownArrow, height: 25.v, width: 33.h, margin: EdgeInsets.only(left: 5.h, top: 2.v))]))]))); } 
/// Section Widget
Widget _buildTopBar(BuildContext context) { return Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(right: 1.h, bottom: 664.v), padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 22.v), decoration: AppDecoration.fillDeepPurple, child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Expanded(child: Container(padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 3.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgImage2, height: 19.adaptSize, width: 19.adaptSize, margin: EdgeInsets.symmetric(vertical: 6.v)), Padding(padding: EdgeInsets.only(left: 23.h, top: 6.v, bottom: 4.v), child: Text("Search", style: theme.textTheme.titleMedium)), Spacer(), CustomImageView(imagePath: ImageConstant.imgLens111, height: 29.adaptSize, width: 29.adaptSize, margin: EdgeInsets.only(right: 4.h, bottom: 2.v))]))), CustomImageView(imagePath: ImageConstant.imgMic, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 4.h, top: 6.v, bottom: 7.v))]))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.eCommerceOnePage; case BottomBarEnum.User21: return "/"; case BottomBarEnum.Shoppingcart2: return "/"; case BottomBarEnum.Trend11: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.eCommerceOnePage: return ECommerceOnePage(); default: return DefaultWidget();} } 

/// Navigates back to the previous screen.
onTapImgClose(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the trackScreen when the action is triggered.
onTapEighteen(BuildContext context) { Navigator.pushNamed(context, AppRoutes.trackScreen); } 
/// Navigates to the educaitonScreen when the action is triggered.
onTapTwenty(BuildContext context) { Navigator.pushNamed(context, AppRoutes.educaitonScreen); } 
/// Navigates to the livestockScreen when the action is triggered.
onTapImgImageSix(BuildContext context) { Navigator.pushNamed(context, AppRoutes.livestockScreen); } 
/// Navigates to the androidLargeEightScreen when the action is triggered.
onTapTxtQualityCalculator(BuildContext context) { Navigator.pushNamed(context, AppRoutes.androidLargeEightScreen); } 
 }
