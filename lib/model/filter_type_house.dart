class FilterTypeHouse {
  final String text;
  final bool isActive;

  const FilterTypeHouse({
    required this.text,
    required this.isActive,
  });
}

List<FilterTypeHouse> getFilterTypeHouses() {
  final List<FilterTypeHouse> filterTypes = [];

  filterTypes.add(
    const FilterTypeHouse(
      text: 'House',
      isActive: true,
    ),
  );

  filterTypes.add(
    const FilterTypeHouse(
      text: 'Apartament',
      isActive: false,
    ),
  );

  filterTypes.add(
    const FilterTypeHouse(
      text: 'Hotel',
      isActive: false,
    ),
  );

  filterTypes.add(
    const FilterTypeHouse(
      text: 'Villa',
      isActive: false,
    ),
  );

  filterTypes.add(
    const FilterTypeHouse(
      text: 'Cottage',
      isActive: false,
    ),
  );

  return filterTypes;
}
