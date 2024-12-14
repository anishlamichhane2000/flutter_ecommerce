part of 'cart_bloc_bloc.dart';

@immutable
abstract class CartBlocState {}

abstract class CartActionState extends CartBlocState {}

class CartBlocInitial extends CartBlocState {}

class CartSucessState extends CartBlocState {
  final List<ProductDataModel> cartItems;

  CartSucessState({required this.cartItems});
}
