import 'package:bloc/bloc.dart';
import 'package:manganku/datasources/recipe/get_recipes.dart';

import 'models/recipe_pagination_models.dart';

part 'recipes_pagination_event.dart';
part 'recipes_pagination_state.dart';

class RecipesPaginationBloc
    extends Bloc<RecipesPaginationEvent, RecipesPaginationState> {
  RecipeServices recipeServices = RecipeServices();
  RecipesPaginationBloc({required this.recipeServices})
      : super(RecipesPaginationInitial()) {
    on<LoadRecipesPagination>(_loadRecipesPagination);
  }

  Future<void> _loadRecipesPagination(
      LoadRecipesPagination event, Emitter<RecipesPaginationState> emit) async {
    if (state is RecipesPaginationInitial) {
      final fetchData = await recipeServices.fetchRecipesPagination();
      return emit(RecipesPaginationLoaded(recipes: fetchData.data.recipes, hasReachedMax: true));
    }
    RecipesPaginationLoaded recipesLoaded = state as RecipesPaginationLoaded;
    final recipe = await recipeServices
        .fetchRecipesPagination(recipesLoaded.recipes.length);
    print('Kepanggil APIs pagination SECOND TIME: ${recipe.data.recipes}');
    recipe.data.recipes.isEmpty
        ? emit(recipesLoaded.copyWith(hasReachedMax: true))
        : emit(recipesLoaded.copyWith(
            recipes: List.of(recipesLoaded.recipes)
              ..addAll(recipe.data.recipes),
            hasReachedMax: false));
  }
}
