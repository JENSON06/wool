import '../e_commerce_one_page/widgets/ecommerceone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_title_searchview.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ECommerceOnePage extends StatelessWidget {
  ECommerceOnePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 359.h,
          decoration: AppDecoration.outlineBlack9002,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgLoginOne,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle7,
                  height: 237.v,
                  width: 359.h,
                ),
                SizedBox(height: 5.v),
                SizedBox(
                  height: 420.v,
                  width: 339.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      _buildEcommerceOne(context),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse17,
                        height: 65.adaptSize,
                        width: 65.adaptSize,
                        radius: BorderRadius.circular(
                          32.h,
                        ),
                        alignment: Alignment.bottomRight,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.v),
              ],
            ),
          ),
        ),
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
      title: AppbarTitleSearchview(
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
  Widget _buildEcommerceOne(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          right: 2.h,
          bottom: 60.v,
        ),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 17.v,
            crossAxisCount: 1,
            mainAxisSpacing: 1.h,
            crossAxisSpacing: 1.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: 11,
          itemBuilder: (context, index) {
            return EcommerceoneItemWidget();
          },
        ),
      ),
    );
  }
}
