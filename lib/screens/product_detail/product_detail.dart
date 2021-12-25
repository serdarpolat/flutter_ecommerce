import 'package:carry/core/core_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
    required this.item,
  }) : super(key: key);
  final ProductModel item;

  @override
  Widget build(BuildContext context) {
    double prc = item.price - (item.price * (item.discount / 100));
    return Scaffold(
      backgroundColor: Clr.bg,
      appBar: AppBar(
        backgroundColor: Clr.white,
        elevation: 0,
        centerTitle: false,
        leading: MaterialButton(
          onPressed: () => pop(context),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: SvgPicture.asset("assets/icons/Left.svg"),
        ),
        actions: [
          MaterialButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            child: SvgPicture.asset("assets/icons/ShoppingCart.svg"),
          )
        ],
        title: Text(
          item.name,
          style: TextStyle(
            color: Clr.black,
            fontSize: hh(context, 16),
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: w(context),
          height: h(context),
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductDetailHeader(item: item, prc: prc),
                    SizedBox(
                      height: hh(context, 16),
                    ),
                    Container(
                      width: w(context),
                      color: Clr.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: ww(context, 24),
                        vertical: hh(context, 20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Information Furniture",
                            style: TextStyle(
                              color: Clr.black,
                              fontSize: hh(context, 14),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: hh(context, 8),
                          ),
                          Text(
                            "This sofa Make your leisure time or rest at home ore quality accompanied by the comfort of Grolind 2-seat Sofa's. Read more",
                            style: TextStyle(
                              color: Clr.black,
                              fontSize: hh(context, 12),
                            ),
                          ),
                          SizedBox(
                            height: hh(context, 20),
                          ),
                          SizedBox(
                            height: hh(context, 44),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/Discover.svg",
                                      height: hh(context, 24),
                                      color: Clr.inactiveGrey,
                                    ),
                                    SizedBox(
                                      width: ww(context, 9),
                                    ),
                                    Text(
                                      "In Stock",
                                      style: TextStyle(
                                        color: Clr.black,
                                        fontSize: hh(context, 10),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "20+",
                                  style: TextStyle(
                                    color: Clr.black,
                                    fontSize: hh(context, 10),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: hh(context, 44),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/Discover.svg",
                                      height: hh(context, 24),
                                      color: Clr.inactiveGrey,
                                    ),
                                    SizedBox(
                                      width: ww(context, 9),
                                    ),
                                    Text(
                                      "Sold",
                                      style: TextStyle(
                                        color: Clr.black,
                                        fontSize: hh(context, 10),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "10",
                                  style: TextStyle(
                                    color: Clr.black,
                                    fontSize: hh(context, 10),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: hh(context, 92),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: Container(
                  width: w(context),
                  height: hh(context, 76),
                  child: Row(
                    children: [
                      SizedBox(
                        width: ww(context, 16),
                      ),
                      CustomButton(
                        elevation: 4,
                        bgColor: Clr.bg,
                        title: SvgPicture.asset(
                          "assets/icons/Heart.svg",
                          color: Clr.inactiveGrey,
                          height: hh(context, 16),
                        ),
                        onTap: () {},
                      ),
                      SizedBox(
                        width: ww(context, 16),
                      ),
                      Expanded(
                        child: CustomButton(
                          bgColor: Clr.accent,
                          title: Center(
                            child: Text(
                              "ADD TO CART",
                              style: TextStyle(
                                  color: Clr.white, fontSize: hh(context, 14)),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      SizedBox(
                        width: ww(context, 16),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Clr.white,
                    boxShadow: [
                      BoxShadow(
                        color: Clr.lightGrey,
                        offset: Offset(0, 5),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductDetailHeader extends StatelessWidget {
  const ProductDetailHeader({
    Key? key,
    required this.item,
    required this.prc,
  }) : super(key: key);

  final ProductModel item;
  final double prc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w(context),
      color: Clr.white,
      padding: EdgeInsets.symmetric(horizontal: ww(context, 24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: hh(context, 14)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: ww(context, 28),
                height: ww(context, 28),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Clr.black,
                ),
                child: Center(
                  child: Text(
                    item.discount.toStringAsFixed(0) + "%",
                    style: TextStyle(
                      fontSize: hh(context, 9),
                      color: Clr.white,
                    ),
                  ),
                ),
              ),
              Image.asset(
                item.img,
                height: hh(context, 260),
                width: ww(context, 240),
              ),
              SizedBox(
                height: hh(context, 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: ww(context, 20),
                      height: ww(context, 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffA4A8AB),
                      ),
                    ),
                    Container(
                      width: ww(context, 20),
                      height: ww(context, 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff1B1B1B),
                      ),
                    ),
                    Container(
                      width: ww(context, 20),
                      height: ww(context, 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff263C54),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                color: Clr.grey,
                borderRadius: BorderRadius.circular(ww(context, 5)),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(ww(context, 5)),
                  child: SizedBox(
                    width: ww(context, 61),
                    height: hh(context, 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Share",
                          style: TextStyle(
                            color: Clr.white,
                            fontSize: hh(context, 9),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(width: 10),
                        SvgPicture.asset(
                          "assets/icons/Filter.svg",
                          color: Clr.white,
                          height: hh(context, 9),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: hh(context, 8),
                width: ww(context, 56),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: hh(context, 8),
                      height: hh(context, 8),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Clr.grey, width: ww(context, 1)),
                          shape: BoxShape.circle),
                    ),
                    Container(
                      width: hh(context, 8),
                      height: hh(context, 8),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Clr.grey, width: ww(context, 1)),
                          shape: BoxShape.circle),
                    ),
                    Container(
                      width: hh(context, 8),
                      height: hh(context, 8),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Clr.grey, width: ww(context, 1)),
                          shape: BoxShape.circle),
                    ),
                    Container(
                      width: hh(context, 8),
                      height: hh(context, 8),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Clr.grey, width: ww(context, 1)),
                          shape: BoxShape.circle),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: w(context),
            height: hh(context, 82),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: hh(context, 10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      color: Clr.black,
                      fontSize: hh(context, 16),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$" + prc.toStringAsFixed(2),
                        style: TextStyle(
                          color: Clr.accent,
                          fontSize: hh(context, 12),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: ww(context, 4),
                      ),
                      Text(
                        "\$" + item.price.toStringAsFixed(2),
                        style: TextStyle(
                          color: Clr.grey,
                          fontSize: hh(context, 11),
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: hh(context, 16),
                    child: Row(
                      children: [
                        SizedBox(
                          height: hh(context, 10),
                          child: Row(
                            children: [
                              Row(
                                children: List.generate(5, (index) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        right: index != 4 ? ww(context, 2) : 0),
                                    child: SvgPicture.asset(
                                      "assets/icons/Star.svg",
                                      color: (index + 1) > item.starCount
                                          ? Clr.lightGrey
                                          : Colors.yellow,
                                    ),
                                  );
                                }),
                              ),
                              SizedBox(
                                width: ww(context, 5),
                              ),
                              Text(
                                item.starCount.toString() + ".0",
                                style: TextStyle(
                                  color: Clr.black,
                                  fontSize: hh(context, 8),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          "assets/icons/Heart.svg",
                          color: item.isLiked ? Clr.accent : Clr.lightGrey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
