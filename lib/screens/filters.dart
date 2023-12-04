import 'package:flutter/material.dart';
// import 'package:food_app/screens/tabs.dart';
// import 'package:food_app/widgets/main_drawer.dart';
import 'package:food_app/widgets/switcher.dart';

enum Filter { glutenFree, lactoseFree, vegan, vegeterian }

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key, required this.currentFilters});

  final Map<Filter, bool> currentFilters;

  @override
  State<StatefulWidget> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _vegeterianFilterSet = false;
  var _veganFilterSet = false;

  @override
  void initState(){
    super.initState();
    _glutenFreeFilterSet = widget.currentFilters[Filter.glutenFree]!;
    _lactoseFreeFilterSet = widget.currentFilters[Filter.lactoseFree]!;
    _veganFilterSet = widget.currentFilters[Filter.vegan]!;
    _vegeterianFilterSet = widget.currentFilters[Filter.vegeterian]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('here filters'),
      ),
      // drawer: MainDrawer(
      //   onSelectScreen: (identifier) {
      //     Navigator.of(context).pop();
      //     if (identifier == 'meals') {
      //       Navigator.of(context)
      //           .pushReplacement(MaterialPageRoute(builder: (ctx) => const TabsScreen()));
      //     }
      //   },
      // ),
      body: WillPopScope(
        onWillPop: () async {                    //this is map - return future
          Navigator.of(context).pop({
            Filter.glutenFree: _glutenFreeFilterSet,
            Filter.lactoseFree: _lactoseFreeFilterSet,
            Filter.vegan: _veganFilterSet,
            Filter.vegeterian: _vegeterianFilterSet,
          });
          return false;
        },
        child: Column(
          children: [
            Switcher(
              value: _glutenFreeFilterSet,
              title: 'Gluten-free',
              subtitle: 'Only gluten-free meals',
              onChanged: (isChecked) {
                setState(() {
                  _glutenFreeFilterSet = isChecked;
                });
              },
            ),
            Switcher(
              value: _lactoseFreeFilterSet,
              title: 'Lactose-free',
              subtitle: 'Only without lactose',
              onChanged: (isChecked) {
                setState(() {
                  _lactoseFreeFilterSet = isChecked;
                });
              },
            ),
            Switcher(
              value: _veganFilterSet,
              title: 'Vegan',
              subtitle: 'Only vegan meals',
              onChanged: (isChecked) {
                setState(() {
                  _veganFilterSet = isChecked;
                });
              },
            ),
            Switcher(
              value: _vegeterianFilterSet,
              title: 'Vegeterian',
              subtitle: 'Only vegeterian meals',
              onChanged: (isChecked) {
                setState(() {
                  _vegeterianFilterSet = isChecked;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
