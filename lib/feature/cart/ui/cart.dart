import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/data/cart_item.dart';
import 'package:flutter_application_bloc/feature/cart/cart_bloc_bloc.dart';
import 'package:flutter_application_bloc/feature/cart/ui/cart_tile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final CartBlocBloc cartBloc = CartBlocBloc();
  @override
  void initState() {
    cartBloc.add(CartInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Cart item'),
      ),
      body: BlocConsumer<CartBlocBloc, CartBlocState>(
        bloc: cartBloc,
        listenWhen: (previous, current) => current is CartActionState,
        buildWhen: (previous, current) => current is! CartActionState,
        listener: (context, state) {},
        builder: (context, state) {
          switch (state.runtimeType) {
            case CartSucessState:
              final sucessState = state as CartSucessState;

              return ListView.builder(
                  itemCount: sucessState.cartItems.length,
                  itemBuilder: (context, index) {
                    return CartTile(
                      productDataModel: sucessState.cartItems[index],
                      cartbloc: cartBloc,
                    );
                  });
            default:
              return Container();
          }
        },
      ),
    );
  }
}
