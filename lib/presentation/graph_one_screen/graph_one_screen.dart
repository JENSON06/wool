import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:jenson_k_s_application1/presentation/e_commerce_one_page/e_commerce_one_page.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_title_searchview.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_bottom_bar.dart';

class GraphOneScreen extends StatelessWidget {
  GraphOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 723.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 664.v,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 1.v,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 30.v,
                            right: 14.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 47.h),
                                  child: Text(
                                    "Top Selling Indian Wool",
                                    style:
                                        CustomTextStyles.titleLargeBalsamiqSans,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Top Selling Indian Wool",
                                style: CustomTextStyles.titleLargeBalsamiqSans,
                              ),
                              SizedBox(height: 40.v),
                              _buildPieChartRow(context),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgWhatsappImage20230922,
                        height: 189.v,
                        width: 338.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 118.v),
                      ),
                    ],
                  ),
                ),
              ),
              _buildAppBar(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPieChartRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPieChart,
          height: 141.adaptSize,
          width: 141.adaptSize,
          margin: EdgeInsets.only(
            top: 15.v,
            bottom: 46.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 43.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 5.v),
                    decoration: BoxDecoration(
                      color: appTheme.pink300,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "Cashmere Wool",
                      style: CustomTextStyles.bodyLargeBarlowBlack900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14.v),
              Row(
                children: [
                  Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                    decoration: BoxDecoration(
                      color: appTheme.blue400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "Pashmina Wool",
                      style: CustomTextStyles.bodyLargeBarlowBlack900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14.v),
              Row(
                children: [
                  Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onError,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "Merino Wool",
                      style: CustomTextStyles.bodyLargeBarlowBlack900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 5.v),
                    decoration: BoxDecoration(
                      color: appTheme.teal300,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 14.h),
                    child: Text(
                      "Angora Wool",
                      style: CustomTextStyles.bodyLargeBarlowBlack900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 13.v),
              Row(
                children: [
                  Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.errorContainer,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "Camel Hair",
                      style: CustomTextStyles.bodyLargeBarlowBlack900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.v),
              Row(
                children: [
                  Container(
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 3.v),
                    decoration: BoxDecoration(
                      color: appTheme.orangeA200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "Mohair Wool",
                      style: CustomTextStyles.bodyLargeBarlowBlack900,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 81.v,
      leadingWidth: 33.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenu,
        margin: EdgeInsets.only(
          left: 9.h,
          top: 31.v,
          bottom: 31.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleSearchview(
        hintText: "Search",
        controller: searchController,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMic,
          margin: EdgeInsets.fromLTRB(4.h, 31.v, 4.h, 26.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.eCommerceOnePage;
      case BottomBarEnum.User21:
        return "/";
      case BottomBarEnum.Shoppingcart2:
        return "/";
      case BottomBarEnum.Trend11:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.eCommerceOnePage:
        return ECommerceOnePage();
      default:
        return DefaultWidget();
    }
  }
}
