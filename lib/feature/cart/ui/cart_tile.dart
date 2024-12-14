import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/feature/cart/cart_bloc_bloc.dart';
import 'package:flutter_application_bloc/feature/home/home_bloc_bloc.dart';
import 'package:flutter_application_bloc/feature/home/models/product_data.dart';

class CartTile extends StatelessWidget {
  final ProductDataModel productDataModel;
    final CartBlocBloc cartbloc;
  const CartTile(
      {super.key, required this.productDataModel, required this.cartbloc});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(productDataModel.imageUrl))),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(productDataModel.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(productDataModel.description,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal)),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$ ' + productDataModel.price.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        // homebloc.add(HomeProductWishlistButtonClickedEvent(
                        //     clickedProduct: productDataModel));
                        // homebloc.add(HomeWishlistNavigateButtonClickedEvent());
                      },
                      icon: Icon(Icons.favorite_border_outlined)),
                  IconButton(
                      onPressed: () {
                        // homebloc.add(HomeCartNavigateButtonClickedEvent());
                        // homebloc.add(HomeProductCartButtonClickedEvent(
                        //     clickedProduct: productDataModel));
                      },
                      icon: Icon(Icons.shopping_bag_outlined))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
