import 'package:flutter/material.dart';
import 'package:food_ordering/res/app/contants/manager/color_manager.dart';
import 'package:food_ordering/res/app/utils/extensions.dart';
import 'package:food_ordering/res/screens/cart/cart_page.dart';
import 'package:food_ordering/res/screens/home/widget/explore_category.dart';
import 'package:food_ordering/res/screens/home/widget/offers_slide.dart';
import 'package:food_ordering/res/screens/home/widget/popular_foods.dart';
import 'package:get/get.dart';

import 'model/food_category_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<FoodCategory> _list = [
    FoodCategory(
        id: 1,
        description: "description",
        image: "assets/icons/dessert.png",
        name: "Dessert",
        subCategory: []),
    FoodCategory(
        id: 1,
        description: "description",
        image: "assets/icons/soup.png",
        name: "Soups",
        subCategory: []),
    FoodCategory(
        id: 1,
        description: "description",
        image: "assets/icons/salad.png",
        name: "Salad",
        subCategory: []),
    FoodCategory(
        id: 1,
        description: "description",
        image: "assets/icons/nepali_cuisine.png",
        name: "Nepali Cuisine",
        subCategory: []),
    FoodCategory(
        id: 1,
        description: "description",
        image: "assets/icons/chinese_cuisine.png",
        name: "Chinese Cuisine",
        subCategory: []),
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text(
                  "Forbes Kitchen",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Colors.redAccent, fontSize: 0.018.sp(context)),
                ),
                floating: true,
                elevation: 0,
                scrolledUnderElevation: 0,
                snap: true,
                centerTitle: false,
                actions: [
                  IconButton(
                    icon: const Icon(Icons.notifications_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.shopping_cart_outlined),
                    onPressed: () {
                      Get.to(() => const CartPage());
                    },
                  ),
                ],
              ),
              __searchBar(context),
              _offerBannerSlider(),
              SliverToBoxAdapter(
                child: ExploreCategoryWidget(
                  onCategoryTap: () {},
                  category: _list,
                ),
              ),
              const SliverToBoxAdapter(child: PopularFoodsWidget()),
            ],
          ),
        ),
      ),
    );
  }

  _offerBannerSlider() {
    return const SliverToBoxAdapter(
      child: OffersSlide(),
    );
  }

  __searchBar(BuildContext context) => SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextField(
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search',
              filled: true,
              fillColor: colorManager.kFillerColorLT,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: colorManager.kTextColorLT.withOpacity(0.2),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey[300]!,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 8),
            ),
          ),
        ),
      );
}
