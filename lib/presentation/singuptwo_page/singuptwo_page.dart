import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/widgets/custom_outlined_button.dart';import 'package:jenson_k_s_application1/widgets/custom_text_form_field.dart';class SinguptwoPage extends StatefulWidget {const SinguptwoPage({Key? key}) : super(key: key);

@override SinguptwoPageState createState() =>  SinguptwoPageState();

 }

// ignore_for_file: must_be_immutable
class SinguptwoPageState extends State<SinguptwoPage> with  AutomaticKeepAliveClientMixin<SinguptwoPage> {TextEditingController emailController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, backgroundColor: Colors.transparent, resizeToAvoidBottomInset: false, body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgLoginOne), fit: BoxFit.cover)), child: Form(key: _formKey, child: Container(width: double.maxFinite, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgLoginOne), fit: BoxFit.cover)), child: Column(children: [SizedBox(height: 32.v), _buildEmailForm(context)])))))); } 
/// Section Widget
Widget _buildEmailForm(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 30.h, right: 21.h), child: Column(children: [Padding(padding: EdgeInsets.symmetric(horizontal: 33.h), child: CustomTextFormField(controller: emailController, hintText: "Enter email address", textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress, contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v), borderDecoration: TextFormFieldStyleHelper.outlineBlackTL10, filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1))), SizedBox(height: 168.v), CustomOutlinedButton(width: 112.h, text: "SUBMIT", buttonStyle: CustomButtonStyles.outlineBlackTL181, onPressed: () {onTapSUBMIT(context);}), SizedBox(height: 42.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [GestureDetector(onTap: () {onTapTxtConfirmation(context);}, child: Text("Already have an account?", style: CustomTextStyles.titleLargeOnPrimaryContainer)), GestureDetector(onTap: () {onTapTxtLogin3(context);}, child: Padding(padding: EdgeInsets.only(left: 14.h), child: RichText(text: TextSpan(children: [TextSpan(text: " "), TextSpan(text: "Login", style: CustomTextStyles.titleLargeOnPrimaryRegular)]), textAlign: TextAlign.left)))])])); } 
/// Navigates to the livestockScreen when the action is triggered.
onTapSUBMIT(BuildContext context) { Navigator.pushNamed(context, AppRoutes.livestockScreen); } 
/// Navigates to the loginOneScreen when the action is triggered.
onTapTxtConfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginOneScreen); } 
/// Navigates to the loginOneScreen when the action is triggered.
onTapTxtLogin3(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginOneScreen); } 
 }
