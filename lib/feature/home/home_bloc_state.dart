part of 'home_bloc_bloc.dart';

@immutable
abstract class HomeBlocState {}

abstract class HomeActionState extends HomeBlocState {}

class HomeBlocInitial extends HomeBlocState {}

// class HomeInitial extends HomeBlocState {}

class HomeLoadingState extends HomeBlocState {}

class HomeloadedSucessState extends HomeBlocState {
  final List<ProductDataModel> products;

  HomeloadedSucessState({required this.products});
}

class HomeErrorState extends HomeBlocState {}

class HomeNavigateToWishlistPageActionState extends HomeActionState {}

class HomeNavigateToCartPageActionState extends HomeActionState {}

class HomeProductItemCartActionState extends HomeActionState {}

class HomeProductWishlistActionState extends HomeActionState {}
