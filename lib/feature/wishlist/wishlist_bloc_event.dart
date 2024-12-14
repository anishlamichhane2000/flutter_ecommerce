part of 'wishlist_bloc_bloc.dart';

@immutable
abstract class WishlistBlocEvent {}


class  WishListInitialEvent extends WishlistBlocEvent  {
 

}


class RemoveFromWishlist extends WishlistBlocEvent{}
