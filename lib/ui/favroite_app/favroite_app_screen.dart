import 'package:counter_bloc/bloc/favroite_bloc/favorite_app_bloc.dart';
import 'package:counter_bloc/bloc/favroite_bloc/favorite_app_state.dart';
import 'package:counter_bloc/bloc/favroite_bloc/favroite_app_event.dart';
import 'package:counter_bloc/bloc/model/favourite_item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";

class FavoriteAppScreen extends StatefulWidget {
  const FavoriteAppScreen({super.key});

  @override
  State<FavoriteAppScreen> createState() {
    return _FavroiteAppScreenState();
  }
}

class _FavroiteAppScreenState extends State<FavoriteAppScreen> {
  @override
  void initState() {
    super.initState();
    context.read<FavoriteBloc>().add(FetchFavoriteList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorite App")),
      body: BlocBuilder<FavoriteBloc, FavoriteItemState>(
        builder: (context, state) {
          switch (state.listStatus) {
            case ListStatus.Loading:
              return Center(child: const CircularProgressIndicator());
            case ListStatus.failure:
              return const Text("Something Went Wrong");
            case ListStatus.success:
              return ListView.builder(
                itemCount: state.favoriteItemList.length,
                itemBuilder: (context, index) {
                  final item = state.favoriteItemList[index];
                  return Card(
                    child: ListTile(
                      title: Text(item.value),
                      trailing: IconButton(
                        onPressed: () {
                          FavoriteItemModal favoriteItemModal =
                              FavoriteItemModal(
                                id: item.id,
                                value: item.value,
                                isFavorite: !item.isFavorite,
                              );
                          context.read<FavoriteBloc>().add(
                            FavoriteItem(item: favoriteItemModal),
                          );
                        },
                        icon: Icon(
                          item.isFavorite == true
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                        ),
                      ),
                    ),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
