import 'package:counter_bloc/bloc/model/favourite_item_model.dart';
import 'package:equatable/equatable.dart';

enum ListStatus { loading, success, failure }

class FavoriteItemState extends Equatable {
  final List<FavoriteItemModel>? favoriteItemList;
  final ListStatus listStatus;

  const FavoriteItemState({
    this.favoriteItemList = const [],
    this.listStatus = ListStatus.loading,
  });

  FavoriteItemState copyWith({
    List<FavoriteItemModel>? favoriteItemList,
    ListStatus? listStatus,
  }) {
    return FavoriteItemState(
      favoriteItemList: favoriteItemList ?? this.favoriteItemList,
      listStatus: listStatus ?? this.listStatus,
    );
  }

  @override
  List<Object?> get props => [favoriteItemList, listStatus];
}
