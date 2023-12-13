import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 199.v,
          width: 314.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle71,
                height: 199.v,
                width: 314.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage18,
                height: 85.adaptSize,
                width: 85.adaptSize,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 48.v),
              ),
            ],
          ),
        ),
        SizedBox(height: 7.v),
        Container(
          width: 254.h,
          margin: EdgeInsets.only(
            left: 6.h,
            right: 53.h,
          ),
          child: Text(
            "Tom Roberts : Shearing the Rams (1890) ",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleMediumBlack900_1,
          ),
        ),
      ],
    );
  }
}
