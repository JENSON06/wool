import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_search_view.dart';

class MarketTrendScreen extends StatelessWidget {
  MarketTrendScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            decoration: AppDecoration.outlineBlack9001,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildAppBar(context),
                SizedBox(height: 13.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 47.h,
                      right: 27.h,
                    ),
                    child: CustomSearchView(
                      controller: searchController,
                      hintText: "Search",
                      hintStyle: CustomTextStyles.bodyLargeGray50001,
                      alignment: Alignment.centerRight,
                      contentPadding: EdgeInsets.only(
                        top: 5.v,
                        right: 30.h,
                        bottom: 5.v,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 19.v),
                SizedBox(
                  height: 584.v,
                  width: 347.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(right: 2.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 88.h),
                                child: Text(
                                  "Top Selling Coal",
                                  style: CustomTextStyles
                                      .titleLargeArefRuqaaRegular,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(right: 85.h),
                                child: Text(
                                  "Top Selling Coal",
                                  style: CustomTextStyles
                                      .titleLargeArefRuqaaRegular,
                                ),
                              ),
                              SizedBox(height: 45.v),
                              _buildPieChart(context),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgWhatsappImage20230922,
                        height: 189.v,
                        width: 338.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 37.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 95.v),
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
      height: 50.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgMenuOnprimarycontainer,
        margin: EdgeInsets.only(
          left: 11.h,
          top: 4.v,
          bottom: 5.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Market Trend",
        margin: EdgeInsets.only(left: 37.h),
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildPieChart(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        Column(
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
                    "Bituminous Coal",
                    style: CustomTextStyles.bodyLargeBarlowBlack900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.v),
            Row(
              children: [
                Container(
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(top: 4.v),
                  decoration: BoxDecoration(
                    color: appTheme.blue400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "Sub-bituminous Coal",
                    style: CustomTextStyles.bodyLargeBarlowBlack900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 19.v),
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
                    "Anthracite Coal",
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
                  margin: EdgeInsets.only(bottom: 5.v),
                  decoration: BoxDecoration(
                    color: appTheme.teal300,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "Lignite Coal",
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
                    "Steam Coal",
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
                    "Others",
                    style: CustomTextStyles.bodyLargeBarlowBlack900,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
