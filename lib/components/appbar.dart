import 'package:flutter/material.dart';

import '../helpers/size_helper.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.leading,
    this.titleWidget,
    this.showActionIcon = false,
    this.showColor,
    this.tap,
    this.showShadow,
    this.showColor2,
    this.height,
    this.bottomRadius,
    this.border,
  });

  final Widget? leading;
  final Widget? titleWidget;
  final bool showActionIcon;
  final Color? showColor2;
  final Color? showColor;
  final double? height;
  final Border? border;
  final List<BoxShadow>? showShadow;
  final double? bottomRadius;
  final VoidCallback? tap;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
  @override
  Size get preferredSize => Size.fromHeight(SizeHelper.setSp(height ?? 80));
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
