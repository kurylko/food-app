import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:food_app/screens/tabs.dart';
// import 'package:food_app/widgets/main_drawer.dart';
import 'package:food_app/widgets/switcher.dart';
import 'package:food_app/providers/filters_provider.dart';

//outsourse state to the provider 
class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filtersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('here filters'),
      ),
      body: Column(
        children: [
          Switcher(
            value: activeFilters[Filter.glutenFree]!,
            title: 'Gluten-free',
            subtitle: 'Only gluten-free meals',
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.glutenFree, isChecked);
            },
          ),
          Switcher(
            value: activeFilters[Filter.lactoseFree]!,
            title: 'Lactose-free',
            subtitle: 'Only without lactose',
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.lactoseFree, isChecked);
            },
          ),
          Switcher(
            value: activeFilters[Filter.vegan]!,
            title: 'Vegan',
            subtitle: 'Only vegan meals',
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegan, isChecked);
            },
          ),
          Switcher(
            value: activeFilters[Filter.vegeterian]!,
            title: 'Vegeterian',
            subtitle: 'Only vegeterian meals',
            onChanged: (isChecked) {
              ref
                  .read(filtersProvider.notifier)
                  .setFilter(Filter.vegeterian, isChecked);
            },
          ),
        ],
      ),
    );
  }
}
