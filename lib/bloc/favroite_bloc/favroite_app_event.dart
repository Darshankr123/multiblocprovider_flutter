import 'package:counter_bloc/bloc/model/favourite_item_model.dart';
import 'package:equatable/equatable.dart';

abstract class FavoriteEvents extends Equatable {
  const FavoriteEvents();

  @override
  List<Object?> get props => [];
}

class FetchFavoriteList extends FavoriteEvents{}

class FavoriteItem extends FavoriteEvents{
  final FavoriteItemModal item;

  const FavoriteItem({required this.item});
}