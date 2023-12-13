import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class EcommerceoneItemWidget extends StatelessWidget {
  const EcommerceoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: AppDecoration.outlineBlack9002,
        child: Text(
          "Yarn",
          style: CustomTextStyles.bodyMedium13,
        ),
      ),
    );
  }
}
