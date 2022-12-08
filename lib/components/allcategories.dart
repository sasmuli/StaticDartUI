import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Recomends extends StatelessWidget {
  const Recomends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          AllCategories(
            image: "assets/images/Pic1.png",
            title: "CPU",
            count: 700,
            press: () {},
          ),
          AllCategories(
            image: "assets/images/Pic2.png",
            title: "Motherboard",
            count: 1100,
            press: () {},
          ),
          AllCategories(
            image: "assets/images/Pic3.png",
            title: "DRAM",
            count: 980,
            press: () {},
          ),
          AllCategories(
            image: "assets/images/Pic4.png",
            title: "GPU",
            count: 330,
            press: () {},
          ),
          AllCategories(
            image: "assets/images/Pic5.png",
            title: "Cooling",
            count: 1700,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class AllCategories extends StatelessWidget {
  const AllCategories({
    Key? key,
    required this.image,
    required this.title,
    required this.count,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final int count;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.25),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$count".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
