import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:jenson_k_s_application1/presentation/e_commerce_one_page/e_commerce_one_page.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_title_searchview.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_bottom_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_drop_down.dart';
import 'package:jenson_k_s_application1/widgets/custom_rating_bar.dart';

class ProductFourScreen extends StatelessWidget {
  ProductFourScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

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
                imagePath: ImageConstant.imgFrame31,
                height: 664.v,
                width: 359.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle23350x349,
                        height: 350.v,
                        width: 349.h,
                      ),
                      SizedBox(height: 15.v),
                      _buildCraveWoolYarn(context),
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
                        flex: 5,
                      ),
                      Spacer(
                        flex: 6,
                      ),
                      Spacer(
                        flex: 14,
                      ),
                      Spacer(
                        flex: 14,
                      ),
                      Spacer(
                        flex: 15,
                      ),
                      Spacer(
                        flex: 16,
                      ),
                      Spacer(
                        flex: 16,
                      ),
                      SizedBox(height: 32.v),
                      Align(
                        alignment: Alignment.center,
                        child: Divider(
                          color: theme.colorScheme.secondaryContainer,
                          indent: 13.h,
                          endIndent: 6.h,
                        ),
                      ),
                      SizedBox(height: 39.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgShoppingBag1,
                        height: 1.v,
                        width: 34.h,
                        margin: EdgeInsets.only(left: 83.h),
                      ),
                      SizedBox(height: 43.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 56.h),
                          child: Text(
                            "          Order Now",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Divider(
                          color: theme.colorScheme.secondaryContainer,
                          indent: 15.h,
                          endIndent: 4.h,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgShoppingCart2,
                        height: 1.v,
                        width: 29.h,
                        margin: EdgeInsets.only(left: 80.h),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Add to Cart",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
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
                            left: 23.h,
                            right: 19.h,
                          ),
                          child: Text(
                            "Material                     Wool                               \n\nColour                        Green\n\nYarn Weight              200 Grams\n\nProduct  Wash          Hand Wash and  \n                                    Machine Wash\n\nLength Yarn              150 m(75m/100grms)\n\nCrochet size             9.0 - 6.0 mm\n\nWool Type                 Shetlan sheep Wool ",
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 22.h),
                        child: Text(
                          "Customer Review  ",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: 127.h,
                          child: Divider(
                            color: theme.colorScheme.secondaryContainer,
                            endIndent: 11.h,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.h),
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
                          indent: 24.h,
                          endIndent: 11.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 33.h),
                        child: Text(
                          "No reviews yet.....",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
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
      leadingWidth: 32.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenu,
        margin: EdgeInsets.only(
          left: 8.h,
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
          margin: EdgeInsets.fromLTRB(4.h, 29.v, 4.h, 28.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildCraveWoolYarn(BuildContext context) {
    return Container(
      width: 354.h,
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 36.h),
              child: Text(
                "Crave Wool Yarn 250gms",
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
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
            padding: EdgeInsets.symmetric(horizontal: 23.h),
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
                    "Save 23.8% ",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Container(
                  height: 25.v,
                  width: 107.h,
                  margin: EdgeInsets.only(
                    left: 7.h,
                    top: 2.v,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Rs 1256.00",
                          style: CustomTextStyles.titleLargeBluegray400,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.v),
                          child: SizedBox(
                            width: 100.h,
                            child: Divider(
                              color: appTheme.blueGray400,
                              indent: 1.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "Rs 957.00",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          Container(
            width: 310.h,
            margin: EdgeInsets.only(
              left: 17.h,
              right: 14.h,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Delivery on 12",
                    style: theme.textTheme.titleSmall,
                  ),
                  TextSpan(
                    text: " November,Saturday . Order within 2hrs 45mins",
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 36.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: CustomDropDown(
              width: 111.h,
              icon: Container(
                margin: EdgeInsets.only(
                  left: 5.h,
                  right: 4.h,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgDownArrow,
                  height: 32.v,
                  width: 33.h,
                ),
              ),
              hintText: "Qty: 1",
              hintStyle: CustomTextStyles.titleMediumBlack900_1,
              alignment: Alignment.centerLeft,
              items: dropdownItemList,
              contentPadding: EdgeInsets.only(
                left: 25.h,
                top: 7.v,
                bottom: 7.v,
              ),
              borderDecoration: DropDownStyleHelper.fillSecondaryContainer,
              fillColor: theme.colorScheme.secondaryContainer,
              onChanged: (value) {},
            ),
          ),
          SizedBox(height: 1.v),
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
