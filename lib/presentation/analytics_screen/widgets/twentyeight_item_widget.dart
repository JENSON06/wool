import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class TwentyeightItemWidget extends StatelessWidget {
  const TwentyeightItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlineBlack,
      width: 97.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 43.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "Total Kms",
              style: CustomTextStyles.bodyMediumArefRuqaa,
            ),
          ),
          Text(
            "112400kms",
            style: CustomTextStyles.bodyMediumPrimary,
          ),
        ],
      ),
    );
  }
}
