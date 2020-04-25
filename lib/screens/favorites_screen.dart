import 'package:flutter/material.dart';
import 'package:meals_app/models/Meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favScreen;
  FavoritesScreen(this.favScreen);
  @override
  Widget build(BuildContext context) {
    if (favScreen.isEmpty) {
      return Center(
        child: Text("You have no favorites!"),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favScreen[index].id,
            title: favScreen[index].title,
            imageUrl: favScreen[index].imageUrl,
            duration: favScreen[index].duration,
            complexity: favScreen[index].complexity,
            affordability: favScreen[index].affordability,
          );
        },
        itemCount: favScreen.length,
      );
    }
  }
}
