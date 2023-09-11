import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../foods/info_pages/food_info_page.dart';
import 'explore_category.dart';

class PopularFoodsWidget extends StatefulWidget {
  const PopularFoodsWidget({super.key});

  @override
  State<PopularFoodsWidget> createState() => _PopularFoodsWidgetState();
}

class _PopularFoodsWidgetState extends State<PopularFoodsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        headingTitle(
          context: context,
          title: 'Popular Foods',
        ),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.84),
          itemCount: 10,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return _foodCard();
          },
        ),
      ],
    );
  }

  _foodCard() {
    return GestureDetector(
      onTap: () {
        Get.to(() => const FoodInfoPage());
      },
      child: Container(
          margin: const EdgeInsets.all(10.0),
          width: 150.0,
          decoration: BoxDecoration(
            gradient: SweepGradient(
              colors: [
                Colors.redAccent,
                Colors.red[200]!,
                Colors.red,
              ],
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              Container(
                  height: 150.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Stack(
                    children: const [
                      Center(
                        child: Icon(
                          Icons.fastfood,
                          color: Colors.white,
                          size: 50.0,
                        ),
                      ),
                      Positioned(
                        top: 5.0,
                        right: 5.0,
                        child: InkWell(
                          onTap: null,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )),
              const SizedBox(height: 10.0),
              const Text(
                'Food Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ],
          )),
    );
  }
}
