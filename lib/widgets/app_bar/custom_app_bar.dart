import 'package:flutter/material.dart';
import 'package:jenson_k_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 55.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? 55.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill_1:
        return Container(
          height: 51.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.cyanA400,
          ),
        );
      case Style.bgFill_2:
        return Stack(
          children: [
            Container(
              height: 55.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.cyanA400,
              ),
            ),
            Container(
              height: 1.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 54.v),
              decoration: BoxDecoration(
                color: appTheme.black900,
              ),
            ),
          ],
        );
      case Style.bgFill:
        return Container(
          height: 81.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.deepPurple50,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill_1,
  bgFill_2,
  bgFill,
}
