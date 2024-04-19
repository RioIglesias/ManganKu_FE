class RecipePaginationModels {
  final Data data;

  RecipePaginationModels({
    required this.data,
  });

  factory RecipePaginationModels.fromJson(Map<String, dynamic> json) {
    return RecipePaginationModels(
      data: Data.fromJson(json['data']),
    );
  }
}

class Data {
  final List<Recipes> recipes;

  Data({required this.recipes});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      recipes: List.from(
        json['recipes'].map((recipe) => Recipes.fromJson(recipe)),
      ),
    );
  }
}

class Recipes {
  final int id;
  final String name;
  final String mainPhoto;
  final int category;
  final int duration;
  final int favorite;
  final List<IngredientRecipes> ingredients;
  final List<DirectionCook> directions;
  final String description;
  final bool upload;
  final bool sell;
  final int createdBy;

  Recipes({
    required this.id,
    required this.name,
    required this.mainPhoto,
    required this.category,
    required this.duration,
    required this.favorite,
    required this.ingredients,
    required this.directions,
    required this.description,
    required this.upload,
    required this.sell,
    required this.createdBy,
  });

  factory Recipes.fromJson(Map<String, dynamic> json) {
    return Recipes(
      id: json['id'],
      name: json['name'],
      mainPhoto: json['mainphoto'],
      category: json['category'],
      duration: json['duration'],
      favorite: json['favorite'],
      ingredients: List.from(
        json['ingredients']
            .map((ingredient) => IngredientRecipes.fromJson(ingredient)),
      ),
      directions: List.from(
        json['directions']
            .map((direction) => DirectionCook.fromJson(direction)),
      ),
      description: json['description'],
      upload: json['upload'],
      sell: json['sell'],
      createdBy: json['created_by_id'],
    );
  }
}

class IngredientRecipes {
  final int id;
  final int recipeID;
  final int ingredientID;
  final Ingredient ingredient;
  final int quantity;
  final int portionSize;
  final String unit;

  IngredientRecipes({
    required this.id,
    required this.recipeID,
    required this.ingredientID,
    required this.ingredient,
    required this.quantity,
    required this.portionSize,
    required this.unit,
  });

  factory IngredientRecipes.fromJson(Map<String, dynamic> json) {
    return IngredientRecipes(
      id: json['ID'],
      recipeID: json['RecipeID'],
      ingredientID: json['IngredientID'],
      ingredient: Ingredient.fromJson(json['ingredient']),
      quantity: json['Quantity'],
      portionSize: json['PortionSize'],
      unit: json['Unit'],
    );
  }
}

class DirectionCook {
  final int id;
  final int recipeID;
  final List<ImageDirectionCook> image;
  final String step;

  DirectionCook({
    required this.id,
    required this.recipeID,
    required this.image,
    required this.step,
  });

  factory DirectionCook.fromJson(Map<String, dynamic> json) {
    return DirectionCook(
      id: json['ID'],
      recipeID: json['RecipeID'],
      image: List.from(
          json['Images'].map((images) => ImageDirectionCook.fromJson(images))),
      step: json['Step'],
    );
  }
}

class ImageDirectionCook {
  final String image;

  ImageDirectionCook({
    required this.image,
  });

  factory ImageDirectionCook.fromJson(Map<String, dynamic> json) {
    return ImageDirectionCook(
      image: json['Image'],
    );
  }
}

class Ingredient {
  final int id;
  final String name;
  final String image;

  Ingredient({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
      id: json['ID'],
      name: json['Name'],
      image: json['Image'],
    );
  }
}
