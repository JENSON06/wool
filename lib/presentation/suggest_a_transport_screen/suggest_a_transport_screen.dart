import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_outlined_button.dart';
import 'package:jenson_k_s_application1/widgets/custom_text_form_field.dart';

class SuggestATransportScreen extends StatelessWidget {
  SuggestATransportScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController sourceController = TextEditingController();

  TextEditingController destinationController = TextEditingController();

  TextEditingController coalQuantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildShareStack(context),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: Column(
                    children: [
                      Divider(),
                      Spacer(
                        flex: 48,
                      ),
                      _buildTransportForm(context),
                      Spacer(
                        flex: 51,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildSeeOptionsButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildShareStack(BuildContext context) {
    return SizedBox(
      height: 51.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Container(
                  height: 51.v,
                  width: 58.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 23.h,
                    vertical: 15.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgShare,
                    height: 18.v,
                    width: 12.h,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: Text(
                    "Coal Mine Manager",
                    style: CustomTextStyles.headlineLargeArefRuqaa,
                  ),
                ),
              ],
            ),
          ),
          CustomAppBar(
            height: 51.v,
            leadingWidth: 58.h,
            leading: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillCyanA,
              child: Column(
                children: [
                  SizedBox(height: 3.v),
                  AppbarImage(
                    imagePath: ImageConstant.imgShare,
                  ),
                ],
              ),
            ),
            title: AppbarSubtitleTwo(
              text: "Suggest a Transport",
              margin: EdgeInsets.only(left: 17.h),
            ),
            styleType: Style.bgFill_1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTransportForm(BuildContext context) {
    return Container(
      width: 336.h,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 34.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 6.h,
            ),
            child: CustomTextFormField(
              controller: sourceController,
              hintText: "Source",
            ),
          ),
          SizedBox(height: 50.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: CustomTextFormField(
              controller: destinationController,
              hintText: "Destination",
            ),
          ),
          SizedBox(height: 51.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: CustomTextFormField(
              controller: coalQuantityController,
              hintText: "Coal Quantity in MT",
              textInputAction: TextInputAction.done,
            ),
          ),
          SizedBox(height: 9.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeeOptionsButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 55.v,
      width: 227.h,
      text: "See Options",
      margin: EdgeInsets.only(
        left: 67.h,
        right: 66.h,
        bottom: 43.v,
      ),
      buttonStyle: CustomButtonStyles.outlineBlackTL154,
      buttonTextStyle: CustomTextStyles.headlineSmallArefRuqaa,
    );
  }
}
