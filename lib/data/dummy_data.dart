import 'package:flutter/material.dart';
import '../models/category.dart';
import 'package:food_app/models/meal.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'Ukrainian',
    color: Colors.yellow,
  ),
  Category(
    id: 'c2',
    title: 'Italian',
    color: Colors.green,
  ),
  Category(
    id: 'c3',
    title: 'German',
    color: Colors.brown,
  ),
  Category(
    id: 'c4',
    title: 'French',
    color: Colors.blue,
  ),
  Category(
    id: 'c5',
    title: 'Ukrainian',
    color: Colors.cyan,
  ),
  Category(
    id: 'c6',
    title: 'Cambodian',
    color: Colors.red,
  ),
  Category(
    id: 'c7',
    title: 'Ukrainian',
    color: Colors.yellow,
  ),
  Category(
    id: 'c8',
    title: 'Ukrainian',
    color: Colors.yellow,
  ),
  Category(
    id: 'c9',
    title: 'American',
    color: Colors.red,
  ),
  Category(
    id: 'c10',
    title: 'Ukrainian',
    color: Colors.yellow,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'Borsch',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl: 'https://pixabay.com/photos/soup-tomato-healthy-homemade-1429793/',
    duration: 90,
    ingredients: [
      '3 tomatoes',
      '1 meat',
      '2 carrots',
      'salo',
    ],
    steps: [
'cut',
'cook',
'eat'
    ],
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false
    ),
];