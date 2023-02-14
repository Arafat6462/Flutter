import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favourite_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0, // app will start with that page.
        child: Scaffold(
          appBar: AppBar(
            title: Text("Meals"),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favourite',
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              CategoriesScreen(),
              FavoritesScreen(),
            ],
          ),
        ));
  }
}
