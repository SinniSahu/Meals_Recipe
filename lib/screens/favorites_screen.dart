import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favMeals;

  FavoritesScreen(this.favMeals);

  @override
  Widget build(BuildContext context) {
    if (favMeals.isEmpty) {
      return Center(child: Text('You have no favorites yet !!'));
    }
    else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
              id: favMeals[index].id,
              title: favMeals[index].title,
              imageUrl: favMeals[index].imageUrl,
              duration: favMeals[index].duration,
              complexity: favMeals[index].complexity,
              affordability: favMeals[index].affordability);
        },
        itemCount: favMeals.length,
      );
    }

  }
}