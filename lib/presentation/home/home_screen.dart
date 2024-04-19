// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:manganku/helpers/size_helper.dart';
import 'package:manganku/helpers/text_theme_extension.dart';
import 'package:manganku/presentation/home/widget/test1.dart';
import 'widget/card_announcement.dart';
import 'widget/grid_product.dart';
import 'widget/list_category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final _scrollController = ScrollController();

  // @override
  // void initState() {
  //   super.initState();
  //   _scrollController.addListener(_onScroll);
  // }

  // @override
  // void dispose() {
  //   _scrollController
  //     ..removeListener(_onScroll)
  //     ..dispose();
  //   super.dispose();
  // }

  // void _onScroll() {
  //   final maxScroll = _scrollController.position.maxScrollExtent;
  //   final currentScroll = _scrollController.offset;

  //   if (currentScroll >= (maxScroll * 1)) {
  //     context.read<RecipeFoodBloc>().add(LoadRecipe());
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.primaryColor,
        appBar: AppBar(
            backgroundColor: context.theme.primaryColor,
            title: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: SizeHelper.borderRadiusCircular(all: 8)),
              child: TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search Recipes',
                      border: InputBorder.none,
                      hintStyle: context.textTheme.bodySmall)),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    print('Notification');
                  },
                  icon: Icon(
                    Icons.notifications_none,
                    size: SizeHelper.setSp(24),
                  )),
            ]),
        body: SingleChildScrollView(
            // controller: _scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                cardAnnouncement(context),
                SizeHelper.verticalSpace(25),
                listCategory(),
                SizeHelper.verticalSpace(25),
                Text(
                  'Recommendeation for ...',
                  style: context.textTheme.bodyMedium,
                ),
                // Text("${SizeHelper.widthScreen()}"),
                SizeHelper.verticalSpace(10),
                customCardRecoomendation(context),
                SizeHelper.verticalSpace(10),
                Text(
                  'Today Trends.',
                  style: context.textTheme.bodyMedium,
                ),
                SizeHelper.verticalSpace(10),
                customCardRecoomendation(context),
                SizeHelper.verticalSpace(10),
                Text(
                  'For You.',
                  style: context.textTheme.bodyMedium,
                ),
                SizeHelper.verticalSpace(10),
                gridProduct()
                // recommendationCard()
              ],
            )));
  }
}
