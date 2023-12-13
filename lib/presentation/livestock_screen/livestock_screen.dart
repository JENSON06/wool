import '../livestock_screen/widgets/androidlarge_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:jenson_k_s_application1/presentation/e_commerce_one_page/e_commerce_one_page.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_bottom_bar.dart';

class LivestockScreen extends StatelessWidget {
  LivestockScreen({Key? key})
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
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 664.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame32,
                height: 664.v,
                width: 359.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 13.v,
                  ),
                  decoration: AppDecoration.outlineBlack9001,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 4.v),
                      SizedBox(
                        height: 103.v,
                        width: 104.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPhoto160202743,
                              height: 102.v,
                              width: 103.h,
                              radius: BorderRadius.circular(
                                51.h,
                              ),
                              alignment: Alignment.center,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse18,
                              height: 102.v,
                              width: 103.h,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Live Stock",
                        style: CustomTextStyles.displaySmallInriaSerif,
                      ),
                      SizedBox(height: 17.v),
                      Divider(
                        indent: 16.h,
                        endIndent: 11.h,
                      ),
                      SizedBox(height: 28.v),
                      _buildAndroidLarge(context),
                    ],
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
      leadingWidth: 30.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenu,
        margin: EdgeInsets.only(
          left: 6.h,
          top: 31.v,
          bottom: 31.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleSearchviewOne(
        hintText: "Search",
        controller: searchController,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgMic,
          margin: EdgeInsets.fromLTRB(4.h, 29.v, 5.h, 28.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildAndroidLarge(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 191.v,
          crossAxisCount: 2,
          mainAxisSpacing: 41.h,
          crossAxisSpacing: 41.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return AndroidlargeItemWidget();
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
