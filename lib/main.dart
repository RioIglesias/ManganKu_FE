import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manganku/splash_screen.dart';

import 'bloc/bloc/recipes_pagination_bloc.dart';
import 'datasources/recipe/get_recipes.dart';
import 'helpers/app_themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RecipesPaginationBloc(recipeServices: RecipeServices())
            ..add(LoadRecipesPagination()),
      child: ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.theme,
            darkTheme: AppTheme.theme,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
