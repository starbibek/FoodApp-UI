import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ordering/res/app/contants/manager/assets_manager.dart';
import 'package:food_ordering/res/app/utils/extensions.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../app/config/app_route/routes_names.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _pageController = PageController();
  final int _numPages = 3;
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              _buildPage(
                assetsManager.foodULoveSvg,
                "Find Food You Love",
                "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep",
              ),
              _buildPage(
                assetsManager.deliverySvg,
                "Fast Delivery",
                "Fast food delivery to your home, office wherever you are",
              ),
              _buildPage(
                assetsManager.liveTrackingSvg,
                "Live Tracking",
                "Real time tracking of your food on the app once you placed the order",
              ),
            ],
          ),
          Positioned(
            bottom: 40.0,
            left: 0.0,
            right: 0.0,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: _numPages,
                  effect: const WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.redAccent,
                    dotHeight: 10.0,
                    dotWidth: 10.0,
                  ),
                ),
                const SizedBox(height: 20.0),
                TextButton(
                  onPressed: () {
                    if (_currentPage == _numPages - 1) {
                      // Navigate to home screen
                      Get.offNamed(RouteNames.auth);
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.redAccent,
                    disabledForegroundColor: Colors.grey.withOpacity(0.38),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  child: Text(
                    _currentPage == _numPages - 1 ? "Get Started" : "Next",
                    style: Theme.of(context)
                        .textTheme
                        .copyWith()
                        .bodyLarge
                        ?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 0.012.sp(context),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(String image, String title, String subtitle) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
          height: 0.4.sh(context),
        ),
        const SizedBox(height: 30.0),
        Padding(
          padding: EdgeInsets.all(0.002.sp(context)),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 0.028.sp(context),
                color: Colors.grey[800],
                fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(height: 15.0),
        Padding(
          padding: EdgeInsets.all(0.001.sp(context)),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.copyWith().bodyLarge?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
        ),
      ],
    );
  }
}
