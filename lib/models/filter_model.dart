class Filter {
  final int id;
  final String value;

  Filter({
    required this.id,
    required this.value,
  });
}

class Filters {
  static List<Filter> filters = [
    Filter(id: 1, value: '#Trending'),
    Filter(id: 2, value: '#Food'),
    Filter(id: 3, value: '#Activity'),
    Filter(id: 4, value: '#Shopping'),
    Filter(id: 5, value: '#Football'),
  ];
}
