import 'package:flutter/material.dart';
import 'package:manganku/helpers/size_helper.dart';

class PrototypeHeight extends StatelessWidget {
  final Widget prototype;
  final Widget listView;

  const PrototypeHeight({
    Key? key,
    required this.prototype,
    required this.listView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IgnorePointer(
          child: Opacity(
            opacity: 0.0,
            child: prototype,
          ),
        ),
        SizedBox(width: SizeHelper.widthScreen()),
        Positioned.fill(child: listView),
      ],
    );
  }
}
