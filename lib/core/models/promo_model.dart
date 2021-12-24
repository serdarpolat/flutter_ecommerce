class PromoModel {
  final int id;
  final String title;
  final String img;
  final String discount;
  final String date;

  PromoModel(this.id, this.title, this.img, this.discount, this.date);
}

List<PromoModel> promos = [
  PromoModel(0, "All Item Furniture Discount Up to", "assets/images/Chair1.png",
      "50", "30 September 2019"),
  PromoModel(0, "All Item Furniture Discount Up to", "assets/images/Chair2.png",
      "60", "30 September 2019"),
  PromoModel(0, "All Item Furniture Discount Up to", "assets/images/Chair3.png",
      "70", "30 September 2019"),
];
