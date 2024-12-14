// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_bloc/data/cart_item.dart';
import 'package:flutter_application_bloc/feature/home/models/product_data.dart';
import 'package:meta/meta.dart';

part 'cart_bloc_event.dart';
part 'cart_bloc_state.dart';

class CartBlocBloc extends Bloc<CartBlocEvent, CartBlocState> {
  CartBlocBloc() : super(CartBlocInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    emit(CartSucessState(cartItems: cartsItems));
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartBlocState> emit) {}
}
