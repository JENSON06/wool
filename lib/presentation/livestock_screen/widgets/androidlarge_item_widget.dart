import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AndroidlargeItemWidget extends StatelessWidget {
  const AndroidlargeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCrueltyCashmereGoat,
            height: 147.v,
            width: 133.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          SizedBox(height: 11.v),
          Text(
            "cashmere goats",
            style: CustomTextStyles.bodyLargeBarlowBlack900,
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }
}
