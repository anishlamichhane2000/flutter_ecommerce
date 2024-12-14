import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_bloc/data/wishlist_item.dart';
import 'package:flutter_application_bloc/feature/home/models/product_data.dart';
import 'package:meta/meta.dart';

part 'wishlist_bloc_event.dart';
part 'wishlist_bloc_state.dart';

class WishlistBlocBloc extends Bloc<WishlistBlocEvent, WishlistBlocState> {
  WishlistBlocBloc() : super(WishlistBlocInitial()) {
    on<WishListInitialEvent>(wishListInitialEvent);
    // ignore: invalid_use_of_visible_for_testing_member
    emit(WishlistLoadingSuccessSate(wishlistItems: wishlistItems));
  }

  FutureOr<void> wishListInitialEvent(
      WishListInitialEvent event, Emitter<WishlistBlocState> emit) {}
}
