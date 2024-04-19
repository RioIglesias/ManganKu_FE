import 'package:flutter/material.dart';

import '../../../helpers/size_helper.dart';

Widget listCategory() {
  List test = [
    'Seafood',
    'Nasi',
    'Mie',
    'Sayuran',
    'Manis',
    'Tidak Pedas',
    'Pedas',
  ];
  return SizedBox(
    height: SizeHelper.setHeight(20),
    child: ListView.separated(
      separatorBuilder: (context, index) => SizedBox(width: 15,),
      itemCount: test.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
            padding: EdgeInsets.symmetric(horizontal: SizeHelper.setSp(10)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: SizeHelper.borderRadiusCircular(all: 10)),
            child: InkWell(
                onTap: () {
                  print('Button ${index + 1}');
                },
                child: Text(test[index])));
      },
    ),
  );
}
