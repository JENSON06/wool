import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:jenson_k_s_application1/presentation/e_commerce_one_page/e_commerce_one_page.dart';
import 'package:jenson_k_s_application1/widgets/custom_bottom_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_rating_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_search_view.dart';

class FutureScreen extends StatelessWidget {
  FutureScreen({Key? key})
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
          width: double.maxFinite,
          child: Column(
            children: [
              _buildMenuRow(context),
              Container(
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Column(
                  children: [
                    _buildImage(context),
                    SizedBox(height: 21.v),
                    _buildProductDetailsStack(context),
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
  Widget _buildMenuRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
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
              padding: EdgeInsets.only(left: 7.h),
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
  Widget _buildImage(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle12127x102,
      height: 358.adaptSize,
      width: 358.adaptSize,
      radius: BorderRadius.circular(
        10.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildProductDetailsStack(BuildContext context) {
    return SizedBox(
      height: 285.v,
      width: 359.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              decoration: AppDecoration.fillOnPrimaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "Men Full Sleeve Hoodie ",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 17.v),
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
                              "Save 25% ",
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          Container(
                            height: 25.v,
                            width: 107.h,
                            margin: EdgeInsets.only(
                              left: 20.h,
                              top: 2.v,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Rs 1200.00",
                                    style:
                                        CustomTextStyles.titleLargeBluegray400,
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
                              "Rs 899.00",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 34.v),
                  Container(
                    width: 287.h,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      right: 38.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Delivery on 5",
                            style: theme.textTheme.titleSmall,
                          ),
                          TextSpan(
                            text: " November,Sunday. Order within 2hrs 35mins",
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
                  SizedBox(height: 38.v),
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
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(
                left: 15.h,
                top: 264.v,
                right: 232.h,
              ),
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              decoration: AppDecoration.fillSecondaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Text(
                      "Qty: 1",
                      style: CustomTextStyles.titleMediumBlack900_1,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgDownArrow,
                    height: 19.v,
                    width: 33.h,
                    margin: EdgeInsets.only(
                      left: 5.h,
                      top: 2.v,
                    ),
                  ),
                ],
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
            alignment: Alignment.bottomRight,
            child: Container(
              width: 311.h,
              margin: EdgeInsets.only(right: 13.h),
              child: Text(
                "Material                      Wool                               \n\nColour                         Black and White \n\nSize                             L (38)\n\nProduct  Wash          Hand Wash and  \n                                    Machine Wash\n\nType                           Hooded Neck\n\nSleeve                        Full Sleeve\n\nNet Quantity             1",
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
