import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food_app/screens/categories.dart';
import 'package:food_app/screens/meals.dart';
import 'package:food_app/models/meal.dart';
import 'package:food_app/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  final List<Meal> _favouriteMeals = [];

  void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

//Checking if meal is in Favourites
  void _toggleMealFavourite(Meal meal) {
    final isExisting = _favouriteMeals.contains(meal); //cross-widget state
    if (isExisting) {
      setState(() {
        _favouriteMeals.remove(meal);
      });
      _showInfoMessage('Meal is not favourite');
    } else {
      setState(() {
        _favouriteMeals.add(meal);
        _showInfoMessage('Marked as favourite');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoriesScreen(
      onToggleFavourite: _toggleMealFavourite,
    );
    var activePageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(
          meals: _favouriteMeals, onToggleFavourite: _toggleMealFavourite);
      activePageTitle = 'Your favorites';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
      ),
      drawer: const MainDrawer(),      //Side bar 
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoirites'),
        ],
      ),
    );
  }
}
