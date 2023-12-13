import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - TwentyTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeTwentytwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Nineteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeNineteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "category",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.categoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "singupOne - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.singuponeTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "OTP",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.otpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "e-commerce One - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.eCommerceOneContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "product-One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "product-One One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productOneOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "product-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "product-Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "product-Five One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productFiveOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "graph One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.graphOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Livestock",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.livestockScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "product-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.productThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "future",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.futureScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Educaiton",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.educaitonScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "track",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.trackScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "track One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.trackOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "chatbot",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chatbotScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Manager",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.managerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "role",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.roleScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "homeOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Endsure",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.endsureScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Vehicle on boarding",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.vehicleOnBoardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add Trip",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addTripScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add TripTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addTriptwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Analytics",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.analyticsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Market Trend",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.marketTrendScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Vehicle to Geofench",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.vehicleToGeofenchScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Geofence",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.geofenceScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - TwentyOne",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeTwentyoneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Vehicle on boarding One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.vehicleOnBoardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Live Tracking Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.liveTrackingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Live Tracking Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.liveTrackingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Driver",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.driverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Live Tracking",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.liveTrackingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Live Tracking One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.liveTrackingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Suggest a transport",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.suggestATransportScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
