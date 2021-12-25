class ProductModel {
  final int id;
  final String img;
  final double discount;
  final String name;
  final double price;
  final int starCount;
  final bool isLiked;

  ProductModel(this.id, this.img, this.discount, this.name, this.price,
      this.starCount, this.isLiked);
}

List<ProductModel> products = [
  ProductModel(
    0,
    "assets/images/Chair1.png",
    30,
    "Chair Dacey li - Black",
    80,
    5,
    false,
  ),
  ProductModel(
    1,
    "assets/images/Chair2.png",
    30,
    "Elly Sofa Patchwork",
    80,
    3,
    true,
  ),
  ProductModel(
    2,
    "assets/images/Chair3.png",
    30,
    "Chair Dacey li - Black",
    80,
    4,
    true,
  ),
  ProductModel(
    3,
    "assets/images/Chair4.png",
    30,
    "Chair Dacey li - Black",
    80,
    5,
    false,
  ),
  ProductModel(
    4,
    "assets/images/Chair5.png",
    30,
    "Chair Dacey li - Black",
    80,
    4,
    false,
  ),
  ProductModel(
    5,
    "assets/images/Desk1.png",
    30,
    "Chair Dacey li - Black",
    80,
    3,
    false,
  ),
  ProductModel(
    6,
    "assets/images/Desk2.png",
    30,
    "Chair Dacey li - Black",
    80,
    5,
    false,
  ),
  ProductModel(
    7,
    "assets/images/Desk3.png",
    30,
    "Chair Dacey li - Black",
    80,
    5,
    false,
  ),
  ProductModel(
    8,
    "assets/images/Desk4.png",
    30,
    "Chair Dacey li - Black",
    80,
    5,
    false,
  ),
];
