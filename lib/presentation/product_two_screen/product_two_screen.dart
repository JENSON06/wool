import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:jenson_k_s_application1/presentation/e_commerce_one_page/e_commerce_one_page.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_title_searchview.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_bottom_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_rating_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_text_form_field.dart';

class ProductTwoScreen extends StatelessWidget {
  ProductTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  TextEditingController qtyCounterController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 664.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame3664x359,
                height: 664.v,
                width: 359.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle23350x360,
                      height: 350.v,
                      width: 360.h,
                    ),
                    SizedBox(height: 17.v),
                    _buildProductDetails(context),
                  ],
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
      leadingWidth: 34.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenu,
        margin: EdgeInsets.only(
          left: 10.h,
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
          margin: EdgeInsets.only(
            top: 25.v,
            right: 8.h,
            bottom: 32.v,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildProductDetails(BuildContext context) {
    return SizedBox(
      height: 298.v,
      width: 359.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillOnPrimaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "Nylon Mustard Yarn 200gms",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      right: 15.h,
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
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 18.h,
                      right: 20.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 5.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "Save 16.6% ",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Container(
                          height: 25.v,
                          width: 107.h,
                          margin: EdgeInsets.only(
                            left: 2.h,
                            top: 2.v,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Rs 1020.00",
                                  style: CustomTextStyles.titleLargeBluegray400,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
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
                            "Rs 850.00",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 34.v),
                  Container(
                    width: 304.h,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      right: 22.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Delivery on 14",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " November,Monday . Order within 3hrs 45mins",
                            style: CustomTextStyles.titleMediumBlack900,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                  ),
                  SizedBox(height: 49.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: Text(
                "Customer Review  ",
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: CustomTextFormField(
              width: 111.h,
              controller: qtyCounterController,
              hintText: "Qty: 1",
              hintStyle: CustomTextStyles.titleMediumBlack900_1,
              textInputAction: TextInputAction.done,
              alignment: Alignment.bottomLeft,
              suffix: Container(
                margin: EdgeInsets.only(
                  left: 5.h,
                  top: 2.v,
                  right: 4.h,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgDownArrow,
                  height: 32.v,
                  width: 33.h,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 34.v,
              ),
              contentPadding: EdgeInsets.only(
                left: 25.h,
                top: 7.v,
                bottom: 7.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.fillSecondaryContainer,
              filled: true,
              fillColor: theme.colorScheme.secondaryContainer,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 335.h,
              child: Divider(
                color: theme.colorScheme.secondaryContainer,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 60.h),
              child: Text(
                "          Order Now",
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 335.h,
              child: Divider(
                color: theme.colorScheme.secondaryContainer,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Add to Cart",
              style: theme.textTheme.titleLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgShoppingCart2,
            height: 1.v,
            width: 29.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 80.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgShoppingBag1,
            height: 1.v,
            width: 34.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 83.h),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "Product Details",
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 311.h,
              child: Text(
                "Material                     Wool                               \n\nColour                        yellow\n\nYarn Weight              50 Grams\n\nProduct  Wash          Hand Wash\n\nLength Yarn              150 m(150m/50grms)\n\nCrochet size             7.0 - 6.0 mm\n\nWool Type                 Alpaca Wool ",
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: 318.h,
              child: Divider(
                color: theme.colorScheme.secondaryContainer,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 33.h),
              child: Text(
                "No reviews yet.....",
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 131.h,
              child: Divider(
                color: theme.colorScheme.secondaryContainer,
                endIndent: 15.h,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 24.h),
              child: Text(
                "Write review",
                style: theme.textTheme.titleSmall,
              ),
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
