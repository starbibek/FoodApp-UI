import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering/res/app/utils/utils_index.dart';

class OffersSlide extends StatelessWidget {
  const OffersSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: 4,
      containerHeight: 0.2.sh(context),
      containerWidth: 0.9.sw(context),
      itemHeight: 0.2.sh(context),
      itemWidth: 0.9.sw(context),
      layout: SwiperLayout.STACK,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.0),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://th.bing.com/th/id/R.4873b64aef5a03131b9b275f847af60e?rik=XXfFABN%2fBDHsFQ&pid=ImgRaw&r=0'),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
