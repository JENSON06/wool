import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';

class AndroidLargeNineteenScreen extends StatelessWidget {
  const AndroidLargeNineteenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray200,
        body: SizedBox(
          width: double.maxFinite,
          child: CustomImageView(
            imagePath: ImageConstant.imgFe3fb47bEd5c4,
            height: 484.v,
            width: 360.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
