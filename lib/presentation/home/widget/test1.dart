import 'package:flutter/material.dart';
import 'package:manganku/helpers/text_theme_extension.dart';

import '../../../helpers/size_helper.dart';

Widget customCardRecoomendation(BuildContext context) {
  return Container(
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < 4; i++)
            Container(
              width: SizeHelper.widthScreen() * 0.5,
              margin: EdgeInsets.only(right: i >= 4 - 1 ? 0 : 8),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: SizeHelper.borderRadiusCircular(all: 10)),
              child: InkWell(
                onTap: () {
                  print('Has been press ${i + 1}');
                },
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: SizeHelper.setHeight(100),
                            width: SizeHelper.widthScreen(),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    SizeHelper.borderRadiusCircular(all: 10),
                                image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/image/nasigoreng.jpg',
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            top: 5,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeHelper.setSp(5)),
                              margin:
                                  EdgeInsets.only(right: SizeHelper.setSp(5)),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      SizeHelper.borderRadiusCircular(all: 10)),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  SizeHelper.horizontalSpace(5),
                                  Text(
                                    '4.9',
                                    style: context.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 2.0, left: 4, top: 5, bottom: 4),
                        child: Text(
                          "Ayam Goyeng",
                          style: context.textTheme.titleLarge,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 4,
                        ),
                        child: Text(
                          'Chicken',
                          style: context.textTheme.bodySmall,
                        ),
                      ),
                      SizeHelper.verticalSpace(5),
                      Row(
                        children: [
                          Icon(Icons.access_time_rounded),
                          SizeHelper.horizontalSpace(5),
                          Text(
                            '12 Menit',
                            style: context.textTheme.bodySmall,
                          ),
                        ],
                      ),
                      SizeHelper.verticalSpace(10),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                              radius: SizeHelper.setSp(12),
                              backgroundImage: const NetworkImage(
                                  'https://picsum.photos/id/64/200'),
                            ),
                          ),
                          Text(
                            'Duration',
                            style: context.textTheme.bodySmall,
                          ),
                        ],
                      ),
                      SizeHelper.verticalSpace(5),
                    ]),
              ),
            )
        ],
      ),
    ),
  );
}
