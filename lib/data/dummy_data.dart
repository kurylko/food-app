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
    title: 'Greek',
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
    categories: ['c1',],
    title: 'Borsch',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl: 'https://cdn.pixabay.com/photo/2016/11/13/22/03/tomatoes-1822185_1280.jpg',
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

    Meal(
    id: 'm2',
    categories: ['c2'],
    title: 'Pasta Carbonara',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl: 'https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466_1280.jpg',
    duration: 30,
    ingredients: [
      '1 milk',
      '1 Parmesan',
      'pasta',
    ],
    steps: [
'cut',
'cook',
'eat'
    ],
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false
    ),

    Meal(
    id: 'm3',
    categories: ['c1',],
    title: 'Varenyky',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl: 'https://cdn.pixabay.com/photo/2018/06/15/23/27/cherries-3477927_1280.jpg',
    duration: 45,
    ingredients: [
      'flour',
      'Cherries',
      'sugar'
    ],
    steps: [
'cut',
'cook',
'eat'
    ],
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: true,
    isVegetarian: true
    ),

    Meal(
    id: 'm4',
    categories: ['c5',],
    title: 'Greek Salad',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl: 'https://cdn.pixabay.com/photo/2017/02/15/10/39/salad-2068220_1280.jpg',
    duration: 20,
    ingredients: [
      'Tonatoes',
      'Onions',
      'cheese',
      'cucumber',
      'paprika'
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
    Meal(
    id: 'm5',
    categories: ['c3',],
    title: 'CurryWurst',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl: 'https://cdn.pixabay.com/photo/2022/01/24/12/16/sausage-6963299_1280.jpg',
    duration: 25,
    ingredients: [
      'Wurst',
      'onions',
      'Ketchup'
    ],
    steps: [
'cut',
'cook',
'eat'
    ],
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false
    ),
    Meal(
    id: 'm6',
    categories: ['c4',],
    title: 'Croissant',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl: 'https://cdn.pixabay.com/photo/2021/08/21/07/55/croissant-6562091_1280.jpg',
    duration: 25,
    ingredients: [
      'Flour',
      'Butter',
      'sugar',
    ],
    steps: [
'cut',
'cook',
'eat'
    ],
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true
    ),
];