import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favourite_screen.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': const CategoriesScreen(), 'title': "Categories"},
    {'page': const FavoritesScreen(), 'title': 'Your Favorite'}
  ];

  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        // unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        currentIndex: _selectedPageIndex, // change selected color.
        // selectedFontSize: 16,

        // type: BottomNavigationBarType.shifting,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourites'),
        ],
      ),
    );
  }
}
