import 'package:flutter/material.dart';
import 'package:manganku/helpers/text_theme_extension.dart';

import '../../../helpers/size_helper.dart';

Widget cardAnnouncement(BuildContext context) {
  return Stack(
    children: [
      Container(
        height: SizeHelper.setHeight(150),
        width: SizeHelper.widthScreen(),
        decoration: BoxDecoration(
            borderRadius: SizeHelper.borderRadiusCircular(all: 10),
            color: Colors.blue.shade100),
      ),
      //  Assets Image
      Positioned(
        top: 0,
        bottom: 0,
        right: -40,
        child: Container(
          width: SizeHelper.setWidth(250),
          decoration: BoxDecoration(),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/image/cooking-illu-1.png',
                fit: BoxFit.cover,
              )),
        ),
      ),
      // Text
      Positioned(
        top: 57,
        left: 22,
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            color: Colors.amber,
          ),
          child: Text(
            'HI RIO!, MAU MASAK APA HARI INI ?',
            maxLines: 3,
            style: context.textTheme.bodySmall,
          ),
        ),
      ),
      // Button
      Positioned(
          bottom: 50,
          left: 15,
          child: Center(
            child: InkWell(
              onTap: () {
                print('Button 1');
              },
              child: Container(
                height: 25,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Beri Saya Rekomendasi",
                  style: context.textTheme.bodySmall,
                ),
              ),
            ),
          )),
    ],
  );
}
