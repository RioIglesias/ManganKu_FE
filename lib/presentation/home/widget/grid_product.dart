
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:manganku/helpers/text_theme_extension.dart';

import '../../../bloc/bloc/recipes_pagination_bloc.dart';
import '../../../helpers/size_helper.dart';
import '../bottom.dart';

Widget gridProduct() {
  return BlocBuilder<RecipesPaginationBloc, RecipesPaginationState>(
    builder: (context, state) {
      if (state is RecipesPaginationLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is RecipesPaginationError) {
        return Center(
          child: Text(state.error),
        );
      }
      if (state is RecipesPaginationLoaded) {
        return MasonryGridView.builder(
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          shrinkWrap: true,
          itemCount: state.hasReachedMax
              ? state.recipes.length
              : state.recipes.length + 1,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return index >= state.recipes.length
                ? const BottomLoader()
                : Container(
                    width: SizeHelper.widthScreen() * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: SizeHelper.borderRadiusCircular(all: 10),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              ClipRRect(
                                borderRadius:
                                    SizeHelper.borderRadiusCircular(all: 10),
                                child: Image.network(
                                  'https://picsum.photos/200/300',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                  top: 5,
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: SizeHelper.setSp(5)),
                                    margin: EdgeInsets.only(
                                        right: SizeHelper.setSp(5)),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            SizeHelper.borderRadiusCircular(
                                                all: 10)),
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
                                  ))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 2.0),
                            child: Text(
                              state.recipes[index].name,
                              style: context.textTheme.bodySmall,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
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
                                'Person ${index + 1}',
                                style: context.textTheme.bodySmall,
                              ),
                            ],
                          )
                        ]),
                  );
          },
        );
      }
      return const Text('galas');
    },
  );
}
