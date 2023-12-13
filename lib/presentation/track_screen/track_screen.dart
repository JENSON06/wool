import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:jenson_k_s_application1/presentation/e_commerce_one_page/e_commerce_one_page.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_title_searchview.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_bottom_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_radio_button.dart';

class TrackScreen extends StatelessWidget {
  TrackScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  String radioGroup = "";

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          height: 664.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 76.v,
          ),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 477.v,
                  width: 299.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      _buildProducerColumn(context),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: SizedBox(
                            height: 454.v,
                            child: VerticalDivider(
                              width: 3.h,
                              thickness: 3.v,
                              color: theme.colorScheme.secondaryContainer,
                            ),
                          ),
                        ),
                      ),
                      _buildProducerRadio(context),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: 23.adaptSize,
                  width: 23.adaptSize,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    bottom: 5.v,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(
                      11.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 44.h,
                    bottom: 17.v,
                  ),
                  child: Text(
                    "End Consumer",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
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
  Widget _buildProducerColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 35.v),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 23.adaptSize,
                  width: 23.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(
                      11.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "Shearing area",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.v),
            Padding(
              padding: EdgeInsets.only(right: 9.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                    margin: EdgeInsets.only(bottom: 7.v),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(
                        11.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 5.v,
                    ),
                    child: Text(
                      "Sorting and grading facility",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 29.v),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 23.adaptSize,
                  width: 23.adaptSize,
                  margin: EdgeInsets.only(bottom: 5.v),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(
                      11.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "Process Center",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
            SizedBox(height: 31.v),
            Padding(
              padding: EdgeInsets.only(right: 21.h),
              child: Row(
                children: [
                  Container(
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                    margin: EdgeInsets.only(bottom: 3.v),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(
                        11.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "Storage and Warehousing",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 33.v),
            Padding(
              padding: EdgeInsets.only(right: 77.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                    margin: EdgeInsets.only(bottom: 7.v),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(
                        11.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 5.v,
                    ),
                    child: Text(
                      "Transport to Market",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28.v),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Row(
                children: [
                  Container(
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                    margin: EdgeInsets.only(top: 1.v),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(
                        11.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "Buyer’s facility",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.v),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Row(
                children: [
                  Container(
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                    margin: EdgeInsets.only(bottom: 1.v),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(
                        11.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "Retailer’s and manufacturing",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProducerRadio(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: CustomRadioButton(
        text: "Producer",
        value: "Producer",
        groupValue: radioGroup,
        onChange: (value) {
          radioGroup = value;
        },
      ),
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
