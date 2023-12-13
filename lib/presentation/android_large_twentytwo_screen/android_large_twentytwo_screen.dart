import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';

class AndroidLargeTwentytwoScreen extends StatelessWidget {
  const AndroidLargeTwentytwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.indigo50,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              CustomImageView(
                imagePath: ImageConstant.imgCoalNexus1,
                height: 407.v,
                width: 360.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
