class CategoryIconModel {
  final int id;
  final String icon;
  final String title;

  CategoryIconModel(this.id, this.icon, this.title);
}

List<CategoryIconModel> categoryIcons = [
  CategoryIconModel(0, "assets/icons/LivingRoom.svg", "Living Room"),
  CategoryIconModel(1, "assets/icons/Bathroom.svg", "Bathroom"),
  CategoryIconModel(2, "assets/icons/Workspace.svg", "Workspace"),
];
