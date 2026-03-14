class CategoryModel {
  final String header;
  final List<String> items;
  bool isExpanded;

  CategoryModel({
    required this.header,
    required this.items,
    this.isExpanded = false,
  });
}