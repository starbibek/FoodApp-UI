import 'package:flutter/material.dart';
import 'package:food_ordering/res/app/utils/utils_index.dart';
import 'package:food_ordering/res/screens/cart/model/cart_item_model.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<CartItemModel> _cartitems = [
    CartItemModel(
        id: 1,
        name: 'Item 1',
        price: 150.0,
        quantity: 5,
        image:
            'https://cdn.pixabay.com/photo/2017/06/02/18/24/watermelon-2367029_960_720.jpg'),
    CartItemModel(
        id: 2,
        name: 'Item 2',
        price: 130.0,
        quantity: 2,
        image:
            'https://cdn.pixabay.com/photo/2020/03/15/23/05/momos-4935232_960_720.jpg'),
    CartItemModel(
      id: 3,
      name: 'Item 3',
      price: 150.0,
      quantity: 5,
      image:
          'https://th.bing.com/th/id/OIP.DNqtcZbpfs2pTFd75kydwwHaLG?pid=ImgDet&rs=1',
    ),
    CartItemModel(
      id: 4,
      name: 'Item 4',
      price: 150.0,
      quantity: 5,
      image:
          'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_960_720.jpg',
    ),
    CartItemModel(
      id: 5,
      name: 'Item 5',
      price: 150.0,
      quantity: 5,
      image:
          'https://cdn.pixabay.com/photo/2017/12/10/14/47/pizza-3010062_960_720.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          title: Text(
            'My Cart',
            style: TextStyle(
              fontSize: 0.018.sp(context),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              for (CartItemModel item in _cartitems)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 0.85.sw(context),
                    height: 0.15.sh(context),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 0.3.sw(context),
                          height: 0.15.sh(context),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(item.image ?? ""),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              ListTile(
                                isThreeLine: true,
                                dense: true,
                                title: Text(
                                  item.name ?? "",
                                  style: TextStyle(
                                    fontSize: 0.02.sp(context),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  item.price.toString(),
                                  style: TextStyle(
                                    fontSize: 0.016.sp(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                trailing: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border_outlined,
                                    )),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.remove,
                                      size: 0.016.sp(context),
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    item.quantity.toString(),
                                    style: TextStyle(
                                      fontSize: 0.014.sp(context),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.add,
                                      size: 0.016.sp(context),
                                    ),
                                    onPressed: () {},
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    icon: Icon(
                                      Icons.delete,
                                      size: 0.016.sp(context),
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ],
          ),
        )
      ]),
    );
  }
}
