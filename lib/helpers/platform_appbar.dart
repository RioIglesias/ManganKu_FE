import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manganku/helpers/platform_widget.dart';
import 'package:manganku/helpers/size_helper.dart';

class PlatformAppBar extends PlatformWidget<CupertinoNavigationBar, AppBar>
    implements PreferredSizeWidget {
  final Widget title;
  final Widget? leading;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final Color? color;
  final bool center;
  const PlatformAppBar({
    super.key,
    required this.title,
    this.leading,
    this.bottom,
    this.center = false,
    this.elevation,
    this.color,
  });

  @override
  Size get preferredSize => Size.fromHeight(SizeHelper.setSp(70));

  @override
  CupertinoNavigationBar createIosWidget(BuildContext context) =>
      CupertinoNavigationBar(
        middle: title,
        leading: leading,
      );

  @override
  AppBar createAndroidWidget(BuildContext context) => AppBar(
        title: title,
        centerTitle: center,
        leading: leading ??
            IconButton(
              onPressed: () => AutoRouter.of(context).maybePop(),
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
            ),
        bottom: bottom,
        elevation: elevation ?? 0,
        backgroundColor: color,
      );
}
