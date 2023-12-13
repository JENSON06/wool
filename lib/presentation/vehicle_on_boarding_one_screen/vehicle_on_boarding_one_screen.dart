import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:jenson_k_s_application1/core/app_export.dart';

class VehicleOnBoardingOneScreen extends StatelessWidget {
  const VehicleOnBoardingOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 54.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      children: [
                        Divider(),
                        SizedBox(height: 13.v),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 12.h),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Column(
                              children: [
                                _buildBasicInfo(context),
                                SizedBox(height: 17.v),
                                Text(
                                  "Upload Vehicle Image",
                                  style: theme.textTheme.headlineMedium,
                                ),
                                SizedBox(height: 2.v),
                                _buildUploadOne1(context),
                                Text(
                                  "Document Info",
                                  style: theme.textTheme.headlineMedium,
                                ),
                                SizedBox(height: 2.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Insurance Number",
                                    style: CustomTextStyles.titleLargeArefRuqaa,
                                  ),
                                ),
                                _buildLineTwentyEight(context),
                                SizedBox(height: 8.v),
                                _buildUploadPollution(
                                  context,
                                  dynamicText: "Upload Insurance",
                                ),
                                SizedBox(height: 16.v),
                                _buildLineTwentyNine(context),
                                SizedBox(height: 11.v),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Pollution Certificate Number",
                                    style: CustomTextStyles.titleLargeArefRuqaa,
                                  ),
                                ),
                                SizedBox(height: 17.v),
                                _buildLineThirty(context),
                                SizedBox(height: 4.v),
                                _buildUploadPollution(
                                  context,
                                  dynamicText: "Upload Pollution Certificate ",
                                ),
                                SizedBox(height: 33.v),
                                Divider(
                                  indent: 3.h,
                                  endIndent: 3.h,
                                ),
                                SizedBox(height: 49.v),
                                _buildFinish(context),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBasicInfo(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 22.h,
        right: 14.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 43.h,
        vertical: 3.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder15,
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup105,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: AppDecoration.fillLightBlueA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Container(
                    height: 30.v,
                    width: 31.h,
                    decoration: BoxDecoration(
                      color: appTheme.lightBlueA200,
                      borderRadius: BorderRadius.circular(
                        15.h,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 1.v,
                  width: 93.h,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    top: 14.v,
                    bottom: 14.v,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 93.h,
                          child: Divider(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 93.h,
                          child: Divider(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8.h),
                  decoration: AppDecoration.outlineLightBlueA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Container(
                    height: 30.v,
                    width: 31.h,
                    decoration: BoxDecoration(
                      color: appTheme.lightBlueA200,
                      borderRadius: BorderRadius.circular(
                        15.h,
                      ),
                      border: Border.all(
                        color: appTheme.lightBlueA200,
                        width: 2.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Basic Info",
                style: CustomTextStyles.bodyMediumArefRuqaa,
              ),
              Text(
                "Document",
                style: CustomTextStyles.bodyMediumArefRuqaa,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUploadOne1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildUploadTwo(
            context,
            vehiclePictureText: "Vehicle Picture Front",
          ),
          _buildUploadTwo(
            context,
            vehiclePictureText: "Vehicle Picture Side   ",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLineTwentyEight(BuildContext context) {
    return SizedBox(
      height: 28.v,
      width: 329.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: SizedBox(
                width: 329.h,
                child: Divider(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "1205256",
              style: CustomTextStyles.titleLargeArefRuqaaLightblueA200,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLineTwentyNine(BuildContext context) {
    return SizedBox(
      height: 1.v,
      width: 329.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 329.h,
              child: Divider(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 1.v,
              width: 329.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 329.h,
                      child: Divider(),
                    ),
                  ),
                  _buildLineThirty(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFinish(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      padding: EdgeInsets.symmetric(
        horizontal: 108.h,
        vertical: 10.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder15,
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup106,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Text(
            "Finish",
            style: CustomTextStyles.headlineLargeArefRuqaa,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildUploadTwo(
    BuildContext context, {
    required String vehiclePictureText,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUpload1,
          height: 100.v,
          width: 96.h,
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(right: 15.h),
        ),
        SizedBox(height: 4.v),
        SizedBox(
          width: 139.h,
          child: Text(
            vehiclePictureText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleLargeArefRuqaaRegular.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildLineThirty(BuildContext context) {
    return SizedBox(
      height: 1.v,
      width: 329.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 329.h,
              child: Divider(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 329.h,
              child: Divider(),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildUploadPollution(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 4.v),
          child: Text(
            dynamicText,
            style: CustomTextStyles.titleLargeArefRuqaa.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgUpload11,
          height: 35.adaptSize,
          width: 35.adaptSize,
          margin: EdgeInsets.only(
            left: 9.h,
            bottom: 5.v,
          ),
        ),
      ],
    );
  }
}
