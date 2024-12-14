import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/feature/wishlist/ui/wishlist_tile.dart';
import 'package:flutter_application_bloc/feature/wishlist/wishlist_bloc_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  final WishlistBlocBloc wishlistbloc = WishlistBlocBloc();
  @override
  void initState() {
    wishlistbloc.add(WishListInitialEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('wishlist item'),
      ),
      body: BlocConsumer<WishlistBlocBloc, WishlistBlocState>(
        bloc: wishlistbloc,
        listenWhen: (previous, current) => current is WishListActionState,
        buildWhen: (previous, current) => current is WishListActionState,
        listener: (context, state) {},
        builder: (context, state) {
          switch (state.runtimeType) {
            case WishlistLoadingSuccessSate:
              final successstate = state as WishlistLoadingSuccessSate;

              return ListView.builder(
                itemCount: successstate.wishlistItems.length,
                itemBuilder: (context, index) {
                  return WishlistTile(
                      productDataModel: successstate.wishlistItems[index],
                      wishlistbloc: wishlistbloc);
                },
              );

            default:
              return SizedBox();
          }
        },
      ),
    );
  }
}
