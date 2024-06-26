import 'dart:io' show Platform;

import 'package:flutter/material.dart';

abstract class PlatformWidget<I extends Widget, A extends Widget> extends StatelessWidget {
  const PlatformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      print('andro');
      return createAndroidWidget(context);
    } else if (Platform.isIOS) {
      print('ios');
      return createIosWidget(context);
    }
    return Container();
  }

  I createIosWidget(BuildContext context);

  A createAndroidWidget(BuildContext context);
}
