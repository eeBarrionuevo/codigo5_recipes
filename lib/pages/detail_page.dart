import 'package:codigo5_recipes/models/recipe_model.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  RecipeModel model;
  DetailPage({required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
    );
  }
}
