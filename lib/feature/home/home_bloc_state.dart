part of 'home_bloc_bloc.dart';

@immutable
abstract class HomeBlocState {}

abstract class HomeActionState extends HomeBlocState{}

class HomeBlocInitial extends HomeBlocState {}



class HomeLoadingState extends HomeBlocState{}

class HomeloadedSucessState extends HomeBlocState{}

class HomeErrorState extends HomeBlocState{}



class HomeNavigateToWishlistPageActionState extends HomeActionState {}

class  HomeNavigateToCartPageActionState extends HomeActionState {}






