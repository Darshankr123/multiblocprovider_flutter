import 'package:bloc/bloc.dart';
import 'package:counter_bloc/bloc/favroite_bloc/favorite_app_state.dart';
import 'package:counter_bloc/bloc/favroite_bloc/favroite_app_event.dart';
import 'package:counter_bloc/bloc/model/favourite_item_model.dart';
import 'package:counter_bloc/bloc/repository/favroite_repository.dart';

class FavoriteBloc extends Bloc<FavoriteEvents, FavoriteItemState> {

  List<FavoriteItemModal> favoriteList = [];

  FavoriteRepository _repository;

  FavoriteBloc(this._repository) : super(const FavoriteItemState()) {
    on<FetchFavoriteList>(fetchList);
    on<FavoriteItem>(_addToFavoriteItem);
  }

  void fetchList(FetchFavoriteList event,
      Emitter<FavoriteItemState> emit) async {
    favoriteList = await _repository.fetchItems();
    emit(state.copyWith(listStatus: ListStatus.success,
        favoriteItemList: List.from(favoriteList)));
  }

  void _addToFavoriteItem(FavoriteItem event,Emitter<FavoriteItemState> emit)async {
    final index = favoriteList.indexWhere((element) => element.id == event.item.id);
    favoriteList[index] = event.item;
    emit(state.copyWith(favoriteItemList: List.from(favoriteList)));
  }
}