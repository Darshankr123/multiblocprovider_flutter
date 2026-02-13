import 'package:counter_bloc/bloc/favroite_bloc/favorite_app_bloc.dart';
import 'package:counter_bloc/bloc/favroite_bloc/favorite_app_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteAppScreen extends StatefulWidget {
  const FavoriteAppScreen({super.key});

  @override
  State<FavoriteAppScreen> createState() {
    return _FavoriteAppScreenState();
  }
}

class _FavoriteAppScreenState extends State<FavoriteAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FavoriteBloc, FavoriteItemState>(
        builder: (context, state) {
          if (state.listStatus == ListStatus.loading) {
            return CircularProgressIndicator();
          } else if (state.listStatus == ListStatus.success) {
            return Text("data fetched");
          } else {
            return Text("something went wrong");
          }
        },
      ),
    );
  }
}
