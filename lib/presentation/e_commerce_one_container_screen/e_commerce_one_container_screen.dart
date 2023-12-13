import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/presentation/e_commerce_one_page/e_commerce_one_page.dart';import 'package:jenson_k_s_application1/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class ECommerceOneContainerScreen extends StatelessWidget {ECommerceOneContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.eCommerceOnePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.eCommerceOnePage; case BottomBarEnum.User21: return "/"; case BottomBarEnum.Shoppingcart2: return "/"; case BottomBarEnum.Trend11: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.eCommerceOnePage: return ECommerceOnePage(); default: return DefaultWidget();} } 
 }
