import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/feature/cart/ui/cart.dart';
import 'package:flutter_application_bloc/feature/home/home_bloc_bloc.dart';
import 'package:flutter_application_bloc/feature/wishlist/ui/wishlist.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBlocBloc homebloc = HomeBlocBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBlocBloc, HomeBlocState>(
      bloc: homebloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageActionState) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartPage(),
              ));
        }
        if (state is HomeNavigateToWishlistPageActionState) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Wishlist(),
              ));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('anish grocery app'),
            actions: [
              IconButton(
                  onPressed: () {
                    homebloc.add(HomeWishlistNavigateButtonClickedEvent());
                  },
                  icon: Icon(Icons.favorite_border_outlined)),
              IconButton(
                  onPressed: () {
                    homebloc.add(HomeCartNavigateButtonClickedEvent());
                  },
                  icon: Icon(Icons.shopping_bag_outlined))
            ],
          ),
          body: Container(),
        );
      },
    );
  }
}
