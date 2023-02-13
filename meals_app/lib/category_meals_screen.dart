import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  static const routeName = '/category-meals'; // to not mispell the screen name

  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryId = routesArgs['id'];
    final categoryTitle = routesArgs['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text("${categoryTitle} ${categoryId}"),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {},
        itemCount: 20,
      ),
    );
  }
}
