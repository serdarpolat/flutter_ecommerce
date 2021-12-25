import 'package:carry/core/core_files.dart';
import 'package:carry/screens/screen_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.bg,
      appBar: AppBar(
        backgroundColor: Clr.bg,
        elevation: 0,
        centerTitle: false,
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
          "Categories",
          style: TextStyle(
            color: Clr.black,
            fontSize: hh(context, 16),
          ),
        ),
        leading: MaterialButton(
          onPressed: () => pop(context),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: SvgPicture.asset("assets/icons/Left.svg"),
        ),
      ),
      body: SizedBox(
        width: w(context),
        height: h(context),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: hh(context, 10),
              ),
              SearchLayout(),
              SizedBox(
                height: hh(context, 20),
              ),
              DefaultPadding(
                child: Text(
                  "Categories",
                  style: TextStyle(
                    color: Clr.black,
                    fontSize: hh(context, 16),
                  ),
                ),
              ),
              SizedBox(
                height: hh(context, 22),
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: categoryIcons.length,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: ww(context, 24)),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (BuildContext context, int index) {
                  var c = categoryIcons[index];

                  return CategoryItem(item: c);
                },
              ),
              SizedBox(
                height: hh(context, 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
