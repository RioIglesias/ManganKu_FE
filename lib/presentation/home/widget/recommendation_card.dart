// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:manganku/helpers/text_theme_extension.dart';

// import '../../../helpers/size_helper.dart';

// Widget recommendationCard() {
//   return BlocBuilder<RecipeFoodBloc, RecipeFoodState>(
//       builder: (context, state) {
//     if (state is RecipeFoodLoading) {
//       return const Center(
//         child: CircularProgressIndicator(),
//       );
//     }
//     if (state is RecipeFoodError) {
//       return Center(
//         child: Text(state.error),
//       );
//     }
//     if (state is RecipeFoodLoaded) {
//       return SizedBox(
//         height: SizeHelper.setHeight(150),
//         child: ListView.separated(
//           separatorBuilder: (context, index) => const SizedBox(
//             width: 10,
//           ),
//           itemCount: min(state.recipes.length, 4),
//           shrinkWrap: true,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) {
//             return Container(
//               width: SizeHelper.widthScreen() * 0.5,
//               // margin: EdgeInsets.only(right: 10),
//               decoration: BoxDecoration(
//                   color: Colors.grey.withOpacity(0.2),
//                   borderRadius: SizeHelper.borderRadiusCircular(all: 10)),
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Stack(
//                       clipBehavior: Clip.none,
//                       children: [
//                         Container(
//                           height: SizeHelper.setHeight(100),
//                           width: SizeHelper.widthScreen(),
//                           decoration: BoxDecoration(
//                               color: Colors.red,
//                               borderRadius:
//                                   SizeHelper.borderRadiusCircular(all: 10),
//                               image: const DecorationImage(
//                                   image: NetworkImage(
//                                     'https://picsum.photos/id/64/200',
//                                   ),
//                                   fit: BoxFit.cover)),
//                         ),
//                         Positioned(
//                           top: 5,
//                           right: 0,
//                           child: Container(
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: SizeHelper.setSp(5)),
//                             margin: EdgeInsets.only(right: SizeHelper.setSp(5)),
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius:
//                                     SizeHelper.borderRadiusCircular(all: 10)),
//                             child: Row(
//                               children: [
//                                 const Icon(
//                                   Icons.star,
//                                   color: Colors.yellow,
//                                 ),
//                                 SizeHelper.horizontalSpace(5),
//                                 Text(
//                                   '4.9',
//                                   style: context.textTheme.bodySmall,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 2.0),
//                       child: Text(
//                         state.recipes[index].name,
//                         style: context.textTheme.bodySmall,
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                     Row(
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.only(right: 10),
//                           child: CircleAvatar(
//                             radius: SizeHelper.setSp(12),
//                             backgroundImage: const NetworkImage(
//                                 'https://picsum.photos/id/64/200'),
//                           ),
//                         ),
//                         Text(
//                           '${state.recipes[index].createdBy}',
//                           style: context.textTheme.bodySmall,
//                         ),
//                       ],
//                     )
//                   ]),
//             );
//           },
//         ),
//       );
//     }
//     return Container();
//   });
// }
