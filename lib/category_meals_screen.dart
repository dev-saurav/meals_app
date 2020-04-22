import 'package:flutter/material.dart';
import './dummy_data.dart';
import './models/Meal.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "/categories-meals";
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = args["title"];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Text("lofl"),
    );
  }
}
