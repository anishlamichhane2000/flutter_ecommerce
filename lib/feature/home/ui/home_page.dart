import 'package:flutter/material.dart';
import 'package:flutter_application_bloc/feature/home/home_bloc_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBlocBloc homebloc = HomeBlocBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBlocBloc, HomeBlocState>(
      bloc: homebloc,
      // listenWhen: ,
      // buildWhen: ,
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('anish grocery app'),
            actions: [
              IconButton(
                  onPressed: () {
                    homebloc.add(HomeWishlistNavigateButtonClickedEvent());
                  },
                  icon: Icon(Icons.favorite_border_outlined)),
              IconButton(
                  onPressed: () {
                    homebloc.add(HomeCartNavigateButtonClickedEvent());
                  },
                  icon: Icon(Icons.shopping_bag_outlined))
            ],
          ),
          body: Container(),
        );
      },
    );
  }
}
