import 'package:bloc/bloc.dart';
import 'package:counter_bloc/bloc/favroite_bloc/favorite_app_state.dart';
import 'package:counter_bloc/bloc/favroite_bloc/favroite_app_event.dart';
import 'package:counter_bloc/bloc/model/favourite_item_model.dart';
import 'package:counter_bloc/bloc/repository/favroite_repository.dart';

class FavoriteBloc extends Bloc<FavoriteEvents, FavoriteItemState> {

  List<FavoriteItemModel> favoriteList = [];
  FavoriteRepository _favoriteRepository;

  FavoriteBloc(this._favoriteRepository) : super(FavoriteItemState()) {
    on<FetchFavoriteEvent>(fetchListItems);
  }

  void fetchListItems(
    FetchFavoriteEvent event,
    Emitter<FavoriteItemState> emit,
  ) async {
    favoriteList = await _favoriteRepository.getItem();
    emit(
      state.copyWith(
        favoriteItemList: favoriteList,
        listStatus: ListStatus.success,
      ),
    );
  }
}
