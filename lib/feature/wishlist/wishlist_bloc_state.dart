part of 'wishlist_bloc_bloc.dart';

@immutable
abstract class WishlistBlocState {}

abstract class WishListActionState extends WishlistBlocState {}

class WishlistBlocInitial extends WishlistBlocState {}

class WishlistLoadingSuccessSate extends WishlistBlocState {
  final List<ProductDataModel> wishlistItems;

  WishlistLoadingSuccessSate({required this.wishlistItems});
}
