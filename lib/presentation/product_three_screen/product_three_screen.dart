import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:jenson_k_s_application1/presentation/e_commerce_one_page/e_commerce_one_page.dart';
import 'package:jenson_k_s_application1/widgets/custom_bottom_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_drop_down.dart';
import 'package:jenson_k_s_application1/widgets/custom_rating_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_search_view.dart';

class ProductThreeScreen extends StatelessWidget {
  ProductThreeScreen({Key? key})
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
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFrameTen(context),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  decoration: AppDecoration.fillOnPrimaryContainer,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle16,
                        height: 354.v,
                        width: 359.h,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                      ),
                      _buildBlueBlankletFor(context),
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
                        flex: 15,
                      ),
                      Spacer(
                        flex: 15,
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
                      SizedBox(height: 21.v),
                      Align(
                        alignment: Alignment.center,
                        child: Divider(
                          color: theme.colorScheme.secondaryContainer,
                          indent: 13.h,
                          endIndent: 10.h,
                        ),
                      ),
                      SizedBox(height: 28.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgShoppingBag1,
                        height: 1.v,
                        width: 34.h,
                        margin: EdgeInsets.only(left: 83.h),
                      ),
                      SizedBox(height: 32.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 60.h),
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
                          endIndent: 8.h,
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
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 311.h,
                          margin: EdgeInsets.only(
                            left: 33.h,
                            right: 14.h,
                          ),
                          child: Text(
                            "Material                     Wool                               \n\nColour                        Blue\n\nIdeal Usage               Heavy Winter\n\nProduct  Wash          Hand Wash and  \n                                    Machine Wash\n\nWidth                         43 inch / 110 cm\n\nLength                       82 inch / 210 cm\n\nNet Quantity            1",
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
                          width: 131.h,
                          child: Divider(
                            color: theme.colorScheme.secondaryContainer,
                            endIndent: 15.h,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 24.h),
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
                          endIndent: 15.h,
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
  Widget _buildFrameTen(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillDeepPurple,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMenu,
            height: 19.v,
            width: 24.h,
            margin: EdgeInsets.symmetric(vertical: 9.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: CustomSearchView(
                controller: searchController,
                hintText: "Search",
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBlueBlankletFor(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Text(
              "Blue Blanklet for Heavy Winter",
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
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
          ),
          SizedBox(height: 24.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                right: 21.h,
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
                      "Save 18.5% ",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Container(
                    height: 25.v,
                    width: 99.h,
                    margin: EdgeInsets.only(
                      left: 11.h,
                      top: 2.v,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Rs 700.00",
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
                      "Rs 570.00",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 34.v),
          Container(
            width: 298.h,
            margin: EdgeInsets.only(
              left: 12.h,
              right: 27.h,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Delivery on 7",
                    style: theme.textTheme.titleSmall,
                  ),
                  TextSpan(
                    text: " November,Tuesday . Order within 2hrs 35mins",
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
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
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
          SizedBox(height: 12.v),
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
