import 'dart:core';

import 'package:counter_bloc/bloc/model/favourite_item_model.dart';

class FavoriteRepository {
  Future<List<FavoriteItemModel>> getItem() async {
    await Future.delayed(Duration(seconds: 3));
    return List.of(_generateList(10));
  }

  List<FavoriteItemModel> _generateList(int length) {
    return List.generate(
      length,
      (index) => FavoriteItemModel(id: index, value: 'item $index'),
    );
  }
}
