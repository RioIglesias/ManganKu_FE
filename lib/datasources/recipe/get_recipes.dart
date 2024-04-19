import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../bloc/bloc/models/recipe_pagination_models.dart';


class RecipeServices {
//   Future<RecipeModels> fetchRecommendationRecipes([int start = 0, int limit = 4]) async {
//     String url =
//         'http://10.0.2.2:8080/api/recommendation-recipes?start=$start?_limit=$limit';

// print('URL:::: $url');
//     try {
//       final response = await http.get(Uri.parse(url));
//       final body = jsonDecode(response.body);
//       if (response.statusCode == 200) {
//         // If the server did return a  200 OK response, then parse the JSON.
//         // print('Server responded with succes: ${response.body}');
//         final result = RecipePaginationModels.fromJson(body);
//         return result;
//       } else {
//         print('Server responded with failed:\n${response.body}');

//         throw Exception().toString();
//       }
//     } catch (e) {
//       print(e.toString());
//       throw Exception(e);
//     }
//   }
  Future<RecipePaginationModels> fetchRecipesPagination([int start = 0]) async {
    String url = 'http://10.0.2.2:8080/api/recipes?start=$start';

    print('URL:::: $url');
    try {
      final response = await http.get(Uri.parse(url));
      final body = jsonDecode(response.body);
      if (response.statusCode == 200) {
        // If the server did return a  200 OK response, then parse the JSON.
        // print('Server responded with succes: ${response.body}');
        final result = RecipePaginationModels.fromJson(body);
        return result;
      } else {
        print('Server responded with failed:\n${response.body}');

        throw Exception().toString();
      }
    } catch (e) {
      print(e.toString());
      throw Exception(e);
    }
  }
}
