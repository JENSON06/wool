import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';
import 'package:jenson_k_s_application1/presentation/e_commerce_one_page/e_commerce_one_page.dart';
import 'package:jenson_k_s_application1/widgets/custom_bottom_bar.dart';
import 'package:jenson_k_s_application1/widgets/custom_icon_button.dart';
import 'package:jenson_k_s_application1/widgets/custom_text_form_field.dart';

class ChatbotScreen extends StatelessWidget {
  ChatbotScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.deepPurple50,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 74.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 271.h,
                  margin: EdgeInsets.only(
                    left: 69.h,
                    right: 10.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 24.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup20,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 51.v),
                      Container(
                        width: 220.h,
                        margin: EdgeInsets.only(left: 9.h),
                        child: Text(
                          "what is Integrated Sheep Development \nScheme",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmall12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Container(
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 63.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 8.h,
                  vertical: 26.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup20,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 185.v),
                    SizedBox(
                      width: 254.h,
                      child: Text(
                        "Benefits :\n\n1)Participatory Mode: Selected beneficiaries \nshall be provided 10 ewes free of cost and \nfrom 3rd year onwards 2 ewes/does shall be\nretrieved for the next 5 years.\n\n2)Subsidy Mode: Selected beneficiaries shall \nbe entitled to a 50% subsidy for the \nestablishment of sheep/goat units of \n20-200 ewes/does.",
                        maxLines: 11,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmall12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 37.v),
              _buildSearchRow(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.v),
              child: CustomTextFormField(
                controller: searchController,
                hintText: "Search",
                hintStyle: theme.textTheme.titleMedium!,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(7.h, 9.v, 23.h, 9.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage2,
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 37.v,
                ),
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 7.v, 7.h, 6.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMic,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 37.v,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 8.v),
                borderDecoration:
                    TextFormFieldStyleHelper.fillOnPrimaryContainer,
                filled: true,
                fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
            ),
          ),
          CustomIconButton(
            height: 47.adaptSize,
            width: 47.adaptSize,
            child: CustomImageView(
              imagePath: ImageConstant.imgSend1,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.eCommerceOnePage;
      case BottomBarEnum.User21:
        return "/";
      case BottomBarEnum.Shoppingcart2:
        return "/";
      case BottomBarEnum.Trend11:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.eCommerceOnePage:
        return ECommerceOnePage();
      default:
        return DefaultWidget();
    }
  }
}
