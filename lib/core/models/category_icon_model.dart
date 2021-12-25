class CategoryIconModel {
  final int id;
  final String icon;
  final String title;

  CategoryIconModel(this.id, this.icon, this.title);
}

List<CategoryIconModel> categoryIcons = [
  CategoryIconModel(0, "assets/icons/LivingRoom.svg", "Living Room"),
  CategoryIconModel(1, "assets/icons/Bathroom.svg", "Bathroom"),
  CategoryIconModel(2, "assets/icons/Workspace.svg", ""),
  CategoryIconModel(3, "assets/icons/Kitchen.svg", "Kitchen"),
  CategoryIconModel(4, "assets/icons/Bedroom.svg", "Bedroom"),
  CategoryIconModel(5, "assets/icons/Hole.svg", "Hole"),
  CategoryIconModel(6, "assets/icons/Workspace.svg", "Office"),
  CategoryIconModel(7, "assets/icons/Kitchen1.svg", "Kitchen1"),
];
