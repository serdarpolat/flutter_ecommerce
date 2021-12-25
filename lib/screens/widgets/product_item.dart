import 'package:carry/core/core_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, required this.item, this.onTap})
      : super(key: key);
  final Function()? onTap;

  final ProductModel item;

  @override
  Widget build(BuildContext context) {
    double prc = item.price - (item.price * (item.discount / 100));
    return Material(
      color: Clr.white,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(5),
        child: Container(
          padding: EdgeInsets.all(ww(context, 10)),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: hh(context, 154),
                    child: Padding(
                      padding: EdgeInsets.all(ww(context, 10)),
                      child: Image.asset(item.img),
                    ),
                  ),
                  Text(
                    item.name,
                    style: TextStyle(
                      color: Clr.black,
                      fontSize: hh(context, 9),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$" + prc.toStringAsFixed(2),
                        style: TextStyle(
                          color: Clr.accent,
                          fontSize: hh(context, 9),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: ww(context, 4),
                      ),
                      Text(
                        "\$" + item.price.toStringAsFixed(2),
                        style: TextStyle(
                          color: Clr.grey,
                          fontSize: hh(context, 8),
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
              Positioned(
                top: ww(context, 0),
                right: ww(context, 10),
                child: Container(
                  width: ww(context, 28),
                  height: ww(context, 28),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Clr.black,
                  ),
                  child: Center(
                    child: Text(
                      item.discount.toStringAsFixed(0) + "%",
                      style:
                          TextStyle(fontSize: hh(context, 9), color: Clr.white),
                    ),
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
