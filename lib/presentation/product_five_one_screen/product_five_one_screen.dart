import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:jenson_k_s_application1/presentation/e_commerce_one_page/e_commerce_one_page.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_title_searchview.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_bottom_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_rating_bar.dart';

class ProductFiveOneScreen extends StatelessWidget {
  ProductFiveOneScreen({Key? key})
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
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(
                        flex: 9,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(
                          "Softy Melon Yarn 300gms",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 15.v),
                      _buildRatingBarRow(context),
                      SizedBox(height: 24.v),
                      _buildSaveThirtyFourRow(context),
                      SizedBox(height: 34.v),
                      Container(
                        width: 300.h,
                        margin: EdgeInsets.only(
                          left: 9.h,
                          right: 28.h,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Delivery on ",
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text:
                                    "21 November,Monday .Order within 3hrs 10mins",
                                style: CustomTextStyles.titleMediumBlack900,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 21.v),
                      _buildLocationOneRow(context),
                      SizedBox(height: 17.v),
                      Container(
                        margin: EdgeInsets.only(left: 2.h),
                        padding: EdgeInsets.symmetric(horizontal: 4.h),
                        decoration:
                            AppDecoration.fillSecondaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 21.h,
                                top: 4.v,
                              ),
                              child: Text(
                                "Qty: 1",
                                style: CustomTextStyles.titleMediumBlack900_1,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgDownArrow,
                              height: 17.v,
                              width: 33.h,
                              margin: EdgeInsets.only(
                                left: 5.h,
                                top: 2.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      Spacer(
                        flex: 4,
                      ),
                      Spacer(
                        flex: 5,
                      ),
                      Spacer(
                        flex: 13,
                      ),
                      Spacer(
                        flex: 13,
                      ),
                      Spacer(
                        flex: 13,
                      ),
                      Spacer(
                        flex: 14,
                      ),
                      Spacer(
                        flex: 14,
                      ),
                      SizedBox(height: 48.v),
                      Divider(
                        color: theme.colorScheme.secondaryContainer,
                      ),
                      SizedBox(height: 55.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgShoppingBag1,
                        height: 1.v,
                        width: 34.h,
                        margin: EdgeInsets.only(left: 70.h),
                      ),
                      SizedBox(height: 59.v),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "          Order Now",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Divider(
                        color: theme.colorScheme.secondaryContainer,
                        indent: 2.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgShoppingCart2,
                        height: 1.v,
                        width: 29.h,
                        margin: EdgeInsets.only(left: 67.h),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Add to Cart",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "Product Details",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 311.h,
                          margin: EdgeInsets.only(
                            left: 10.h,
                            right: 16.h,
                          ),
                          child: Text(
                            "Material                     Wool                               \n\nColour                        Multi Colour\n\nYarn Weight              300 Grams\n\nProduct  Wash          Hand Wash and  \n                                    Machine Wash\n\nLength Yarn              222 m(74m/100grms)\n\nCrochet size             9.0 - 7.0 mm\n\nWool Type                 Merino Wool ",
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(
                          "Customer Review  ",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: 124.h,
                          child: Divider(
                            color: theme.colorScheme.secondaryContainer,
                            endIndent: 8.h,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 17.h),
                          child: Text(
                            "Write review",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Divider(
                          color: theme.colorScheme.secondaryContainer,
                          indent: 11.h,
                          endIndent: 8.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 19.h),
                        child: Text(
                          "No reviews yet.....",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle11350x348,
                height: 350.v,
                width: 348.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 12.v),
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
  Widget _buildRatingBarRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 9.h,
          right: 17.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomRatingBar(
              initialRating: 5,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 7.v,
                bottom: 5.v,
              ),
              child: Text(
                "Rating",
                style: theme.textTheme.titleSmall,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 9.v,
                bottom: 2.v,
              ),
              child: Text(
                "In Stock",
                style: CustomTextStyles.titleMediumGreen900,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveThirtyFourRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 26.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 2.v,
            ),
            child: Text(
              "Save 34% ",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Container(
            height: 25.v,
            width: 99.h,
            margin: EdgeInsets.only(
              left: 21.h,
              top: 2.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Rs 500.00",
                    style: CustomTextStyles.titleLargeBluegray400,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.v),
                    child: SizedBox(
                      width: 99.h,
                      child: Divider(
                        color: appTheme.blueGray400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              bottom: 2.v,
            ),
            child: Text(
              "Rs 327.00",
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationOneRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 9.h,
        right: 2.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocation1,
            height: 29.v,
            width: 27.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 6.v,
              bottom: 5.v,
            ),
            child: Text(
              "Enter the Address",
              style: CustomTextStyles.titleSmall14,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 3.v,
              bottom: 6.v,
            ),
            child: Text(
              "Pincode",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Container(
            height: 20.v,
            width: 81.h,
            margin: EdgeInsets.only(
              left: 3.h,
              top: 5.v,
              bottom: 3.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 20.v,
                    width: 81.h,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.secondaryContainer,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "637458",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
        ],
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
