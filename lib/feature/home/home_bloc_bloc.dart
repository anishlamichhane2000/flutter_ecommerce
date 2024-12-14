import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_bloc/data/cart_item.dart';
import 'package:flutter_application_bloc/data/grocery_data.dart';
import 'package:flutter_application_bloc/data/wishlist_item.dart';
import 'package:flutter_application_bloc/feature/home/models/product_data.dart';
import 'package:meta/meta.dart';

part 'home_bloc_event.dart';
part 'home_bloc_state.dart';

class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  HomeBlocBloc() : super(HomeBlocInitial()) {
    on<HomeProductWishlistButtonClickedEvent>(
        homeProductWishlistButtonClickedEvent);
    on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);

    on<HomeWishlistNavigateButtonClickedEvent>(
        homeWishlistNavigateButtonClickedEvent);
    on<HomeCartNavigateButtonClickedEvent>(
        homeProducttNavigateButtonClickedEvent);
    on<HomeInitialEvent>(homeInitialEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeBlocState> emit) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(HomeloadedSucessState(
        products: GroceryData.groceryProducts
            .map((e) => ProductDataModel(
                  id: e['id'],
                  name: e['name'],
                  description: e['description'],
                  price: e['price'],
                  imageUrl: e['imageUrl'],
                ))
            .toList()));
  }

  FutureOr<void> homeProductWishlistButtonClickedEvent(
      HomeProductWishlistButtonClickedEvent event,
      Emitter<HomeBlocState> emit) {
    print('Add to Favourite');
    wishlistItems.add(event.clickedProduct);
    emit(HomeProductWishlistActionState());
  }

  FutureOr<void> homeProductCartButtonClickedEvent(
      HomeProductCartButtonClickedEvent event, Emitter<HomeBlocState> emit) {
    print('Add to cart');
    cartsItems.add(event.clickedProduct);
    emit(HomeProductItemCartActionState());
  }

  FutureOr<void> homeWishlistNavigateButtonClickedEvent(
      HomeWishlistNavigateButtonClickedEvent event,
      Emitter<HomeBlocState> emit) {
    print('Navigate to Favourite');
    emit(HomeNavigateToWishlistPageActionState());
  }

  FutureOr<void> homeProducttNavigateButtonClickedEvent(
      HomeCartNavigateButtonClickedEvent event, Emitter<HomeBlocState> emit) {
    print('Navigate to cart');
    emit(HomeNavigateToCartPageActionState());
  }
}
