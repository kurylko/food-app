import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter { glutenFree, lactoseFree, vegan, vegeterian }

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegan: false,
          Filter.vegeterian: false,
        });


void setFilters(Map<Filter, bool> chosenFilters) {
  state = chosenFilters;
}

//manipulating the filters in immutable way
  void setFilter(Filter filter, bool isActive) {
    // state[filter] = isActive; //not allowed!! => mutating state
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filtersProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>(
  (ref) => FiltersNotifier(),
);
