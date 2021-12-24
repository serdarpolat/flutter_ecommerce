class BottomIconModel {
  final int id;
  final String icon;
  final String title;

  BottomIconModel(this.id, this.icon, this.title);
}

List<BottomIconModel> bottomIcons = [
  BottomIconModel(0, "assets/icons/Home.svg", "Home"),
  BottomIconModel(1, "assets/icons/Discover.svg", "Discover"),
  BottomIconModel(2, "assets/icons/Receipt.svg", "Coupon"),
  BottomIconModel(3, "assets/icons/ShoppingCart.svg", "Cart"),
  BottomIconModel(4, "assets/icons/User.svg", "Profile"),
];
