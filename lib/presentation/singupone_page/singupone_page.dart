import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/widgets/custom_outlined_button.dart';import 'package:jenson_k_s_application1/widgets/custom_text_form_field.dart';class SinguponePage extends StatefulWidget {const SinguponePage({Key? key}) : super(key: key);

@override SinguponePageState createState() =>  SinguponePageState();

 }

// ignore_for_file: must_be_immutable
class SinguponePageState extends State<SinguponePage> with  AutomaticKeepAliveClientMixin<SinguponePage> {TextEditingController mobileNumberController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, backgroundColor: Colors.transparent, resizeToAvoidBottomInset: false, body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgLoginOne), fit: BoxFit.cover)), child: Form(key: _formKey, child: Container(width: double.maxFinite, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgLoginOne), fit: BoxFit.cover)), child: Column(children: [SizedBox(height: 27.v), _buildMobileNumberSection(context)])))))); } 
/// Section Widget
Widget _buildMobileNumberSection(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 30.h, right: 22.h), child: Column(children: [Padding(padding: EdgeInsets.only(left: 33.h, right: 32.h), child: CustomTextFormField(controller: mobileNumberController, hintText: "Enter Mobile Number", textInputAction: TextInputAction.done, textInputType: TextInputType.phone, contentPadding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 11.v), borderDecoration: TextFormFieldStyleHelper.outlineBlackTL10, filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1))), SizedBox(height: 173.v), CustomOutlinedButton(width: 112.h, text: "SUBMIT", buttonStyle: CustomButtonStyles.outlineBlackTL181, onPressed: () {onTapSUBMIT(context);}), SizedBox(height: 44.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [GestureDetector(onTap: () {onTapTxtConfirmation(context);}, child: Text("Already have an account? ", style: CustomTextStyles.titleLargeOnPrimaryContainer)), GestureDetector(onTap: () {onTapTxtLogin(context);}, child: Padding(padding: EdgeInsets.only(left: 12.h), child: Text("Login", style: CustomTextStyles.titleLargeOnPrimary)))])])); } 
/// Navigates to the otpScreen when the action is triggered.
onTapSUBMIT(BuildContext context) { Navigator.pushNamed(context, AppRoutes.otpScreen); } 
/// Navigates to the loginOneScreen when the action is triggered.
onTapTxtConfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginOneScreen); } 
/// Navigates to the loginOneScreen when the action is triggered.
onTapTxtLogin(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginOneScreen); } 
 }
