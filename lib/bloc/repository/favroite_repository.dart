import 'package:counter_bloc/bloc/model/favourite_item_model.dart';

class FavoriteRepository {
  Future<List<FavoriteItemModal>> fetchItems() async {
    await Future.delayed(Duration(seconds: 3));
    return List.of(_generateList(10));
  }

  List<FavoriteItemModal> _generateList(int length) {
    return List.generate(
      length,
      (index) => FavoriteItemModal(id: index.toString(), value: "Item $index}"),
    );
  }
}
