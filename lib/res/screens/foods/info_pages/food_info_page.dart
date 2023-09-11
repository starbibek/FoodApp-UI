import 'package:flutter/material.dart';
import 'package:food_ordering/res/app/contants/manager/color_manager.dart';
import 'package:food_ordering/res/app/utils/extensions.dart';
import 'package:get/get.dart';

class FoodInfoPage extends StatefulWidget {
  const FoodInfoPage({super.key});

  @override
  State<FoodInfoPage> createState() => _FoodInfoPageState();
}

class _FoodInfoPageState extends State<FoodInfoPage> {
  bool isFav = false;
  int _items = 1;
  toogleFav() {
    setState(() {
      isFav = !isFav;
    });
  }

  increaseItems() {
    setState(() {
      _items++;
    });
  }

  decreaseItems() {
    setState(() {
      _items--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          actions: [
            IconButton(
                onPressed: () {
                  toogleFav();
                },
                icon: Icon(
                  isFav ? Icons.favorite : Icons.favorite_border,
                  color: isFav ? Colors.redAccent : Colors.white,
                )),
          ],
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
              )),
          collapsedHeight: 0.4.sh(context),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0.1.sh(context)),
            child: _plusMinusPrice(),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.redAccent.shade700,
                    Colors.redAccent.shade400,
                    Colors.white,
                  ],
                ),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/R.1e438fe666c20c205c9c5d91ac8a54bb?rik=phagaac1ifM5vw&riu=http%3a%2f%2ffoodivine.ca%2fwp-content%2fuploads%2f2017%2f04%2fphoto-of-chicken-plate-vegetable-gray.jpg&ehk=63IgLONRzPhgPROsotSF6HOGH%2f2GuSWpc04HajKNEz0%3d&risl=&pid=ImgRaw&r=0"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              _foodInfo(
                  title: "Special Dish",
                  price: "380",
                  description:
                      '''Momo can be served as a snack or as a main dish, and it is often accompanied by a spicy tomato-based sauce called chutney. In addition to the meat-filled momos, there are also vegetarian momos that are filled with vegetables such as cabbage, carrot, and mushroom.'''),
              SizedBox(
                height: 0.02.sh(context),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Note"),
                  SizedBox(
                    height: 0.01.sh(context),
                  ),
                  SizedBox(
                    width: 0.9.sw(context),
                    child: TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        fillColor: colorManager.kFillerColorLT,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        hintText: "Type your note here if any",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 0.02.sh(context),
              ),
              _addRemoveButton(),
            ],
          ),
        ),
      ],
    ));
  }

  _foodInfo({required title, required price, required description}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 0.6.sw(context),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:
                            Theme.of(context).textTheme.headlineLarge?.copyWith(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 0.02.sp(context),
                                  color: Colors.black,
                                ),
                      ),
                    ),
                  )),
              Text(
                'Rs. $price',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 0.016.sp(context),
                      color: Colors.black,
                    ),
              ),
            ],
          ),
          SizedBox(
            height: 0.012.sh(context),
          ),
          Text(
            description,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 0.010.sp(context),
                  color: Colors.black,
                ),
          ),
        ],
      ),
    );
  }

  Widget _plusMinusPrice() {
    return Container(
      height: 0.05.sh(context),
      constraints: BoxConstraints(
        maxWidth: 0.35.sw(context),
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              if (_items > 1) {
                decreaseItems();
              }
            },
            icon: Icon(
              Icons.remove,
              color: Colors.white,
              size: Theme.of(context).textTheme.copyWith().bodyLarge?.fontSize,
            ),
          ),
          Text(
            _items.toString(),
            style: Theme.of(context).textTheme.copyWith().bodyLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 0.014.sp(context),
                ),
          ),
          IconButton(
            onPressed: () {
              increaseItems();
            },
            icon: Icon(
              Icons.add,
              color: Colors.white,
              size: Theme.of(context).textTheme.copyWith().bodyLarge?.fontSize,
            ),
          ),
        ],
      ),
    );
  }

  _addRemoveButton() {
    return Container(
      height: 0.055.sh(context),
      width: 0.85.sw(context),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          'Add to Cart',
          style: Theme.of(context)
              .textTheme
              .copyWith()
              .bodyLarge
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
