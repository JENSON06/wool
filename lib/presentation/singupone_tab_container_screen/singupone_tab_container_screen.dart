import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:jenson_k_s_application1/presentation/singupone_page/singupone_page.dart';
import 'package:jenson_k_s_application1/presentation/singuptwo_page/singuptwo_page.dart';

class SinguponeTabContainerScreen extends StatefulWidget {
  const SinguponeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SinguponeTabContainerScreenState createState() =>
      SinguponeTabContainerScreenState();
}

class SinguponeTabContainerScreenState
    extends State<SinguponeTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLoginOne,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 53.v),
                _buildMainColumn(context),
                SizedBox(
                  height: 409.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      SinguptwoPage(),
                      SinguponePage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMainColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.h),
      child: Column(
        children: [
          SizedBox(
            height: 79.adaptSize,
            width: 79.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 78.adaptSize,
                    width: 78.adaptSize,
                    decoration: BoxDecoration(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      borderRadius: BorderRadius.circular(
                        39.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUser1,
                  height: 79.adaptSize,
                  width: 79.adaptSize,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 33.v),
          Container(
            decoration: AppDecoration.outlineBlack9002,
            child: Text(
              "SIGN UP",
              style: theme.textTheme.displayMedium,
            ),
          ),
          SizedBox(height: 121.v),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(left: 40.h),
              decoration: AppDecoration.outlineBlack,
              child: SizedBox(
                height: 51.v,
                width: 276.h,
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.black900,
                  labelStyle: TextStyle(
                    fontSize: 18.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  unselectedLabelColor: appTheme.black900,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 18.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  indicator: BoxDecoration(
                    color: appTheme.gray100,
                    border: Border.all(
                      color: appTheme.black900,
                      width: 1.h,
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        "MOBILE NO",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "EMAIL",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
