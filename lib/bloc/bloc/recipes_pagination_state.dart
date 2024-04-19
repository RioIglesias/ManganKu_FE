part of 'recipes_pagination_bloc.dart';

class RecipesPaginationState {}

final class RecipesPaginationInitial extends RecipesPaginationState {}

final class RecipesPaginationLoading extends RecipesPaginationState {}

final class RecipesPaginationLoaded extends RecipesPaginationState {
  final List<Recipes> recipes;
  final bool hasReachedMax;

  RecipesPaginationLoaded(
      {this.recipes = const <Recipes>[], this.hasReachedMax = false});

  RecipesPaginationLoaded copyWith(
      {List<Recipes>? recipes, bool? hasReachedMax}) {
    return RecipesPaginationLoaded(
      recipes: recipes ?? this.recipes,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}

final class RecipesPaginationError extends RecipesPaginationState {
  final String error;

  RecipesPaginationError(this.error);
}
