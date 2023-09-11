import 'package:flutter/material.dart';
import 'package:food_ordering/res/app/utils/extensions.dart';

import '../model/food_category_model.dart';

class ExploreCategoryWidget extends StatelessWidget {
  const ExploreCategoryWidget(
      {super.key,
      required this.category,
      this.onCategoryTap,
      this.onSeeAllTap});
  final List<FoodCategory> category;
  final VoidCallback? onCategoryTap;
  final VoidCallback? onSeeAllTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        headingTitle(
            context: context,
            title: 'Explore Category',
            onSeeAllTap: onSeeAllTap),
        const SizedBox(height: 10),
        _categoryList(context: context),
      ],
    );
  }

  _categoryList({required BuildContext context}) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return _categoryItem(
              context: context,
              category: category[index],
              onTap: onCategoryTap);
        },
      ),
    );
  }

  _categoryItem(
      {required BuildContext context,
      required FoodCategory category,
      VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 0.008.sp(context)),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 0.19.sw(context),
              width: 0.19.sw(context),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Image.asset(
                  category.image ?? "",
                  height: 0.12.sw(context),
                  width: 0.12.sw(context),
                ),
              ),
            ),
            SizedBox(height: 0.001.sh(context)),
            Text(category.name ?? "",
                style:
                    Theme.of(context).textTheme.copyWith().bodyMedium?.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 0.008.sp(context),
                        )),
          ],
        ),
      ),
    );
  }
}

headingTitle(
    {required BuildContext context, title, VoidCallback? onSeeAllTap}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.copyWith().headlineLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 0.016.sp(context),
              color: const Color(0xff6A6A6A)),
        ),
        TextButton(
          onPressed: onSeeAllTap,
          child: Text(
            'See All',
            style: Theme.of(context).textTheme.copyWith().bodyLarge?.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 0.012.sp(context),
                ),
          ),
        ),
      ],
    ),
  );
}
