import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AlertDialog extends StatelessWidget {
  const AlertDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 345.h,
      padding: EdgeInsets.symmetric(
        horizontal: 54.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 21.v),
          Text(
            "Alert",
            style: CustomTextStyles.displaySmallBold,
          ),
          SizedBox(height: 3.v),
          SizedBox(
            height: 250.v,
            width: 227.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWarning1,
                  height: 200.adaptSize,
                  width: 200.adaptSize,
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 55.v,
                    width: 227.h,
                    margin: EdgeInsets.only(bottom: 5.v),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        15.h,
                      ),
                      border: Border.all(
                        color: appTheme.black900,
                        width: 1.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "View",
                    style: theme.textTheme.displaySmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
