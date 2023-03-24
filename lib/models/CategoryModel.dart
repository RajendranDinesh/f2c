class Categories {
  final String name;
  final bool like;
  final String path;

  Categories({
    required this.name,
    required this.path,
    this.like = false,
  });

  static List<Categories> category = [
    Categories(name: 'Fruits', path: 'assets/images/category/fruit_basket.png'),
    Categories(name: 'Vegetables', path: 'assets/images/category/vegetables.png'),
    Categories(name: 'Millets', path: 'assets/images/category/millets.png'),
    Categories(name: 'Grains', path: 'assets/images/category/grains.png'),
    Categories(name: 'Flowers', path: 'assets/images/category/hibiscus.png'),
  ];
}