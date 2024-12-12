import 'dart:async';

import 'package:bloc/bloc.dart';
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
    on<HomeCartNavigateButtonClickedEvent>(homeProducttNavigateButtonClickedEvent);
  }

  FutureOr<void> homeProductWishlistButtonClickedEvent(
      HomeProductWishlistButtonClickedEvent event,
      Emitter<HomeBlocState> emit) {
    print('Add to Favourite');
  }

  FutureOr<void> homeProductCartButtonClickedEvent(
      HomeProductCartButtonClickedEvent event, Emitter<HomeBlocState> emit) {
    print('Add to cart');
  }

  FutureOr<void> homeWishlistNavigateButtonClickedEvent(
      HomeWishlistNavigateButtonClickedEvent event,
      Emitter<HomeBlocState> emit) {
        print('Add to Favourite');
      }

  FutureOr<void> homeProducttNavigateButtonClickedEvent(HomeCartNavigateButtonClickedEvent event, Emitter<HomeBlocState> emit) {
    print('Add to cart');
  }
}
