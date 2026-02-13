import "package:equatable/equatable.dart";

class FavoriteItemModel extends Equatable {
  final int? id;
  final String? value;
  final bool? isDeleting;
  final bool? isFavorite;

  FavoriteItemModel({
     this.id,
     this.value,
     this.isDeleting,
     this.isFavorite,
  });

  FavoriteItemModel copyWith({
    int? id,
    String? value,
    bool? isDeleting,
    bool? isFavorite,
  }) {
    return FavoriteItemModel(
      id: id ?? this.id,
      value: value ?? this.value,
      isDeleting: isDeleting ?? this.isDeleting,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  List<Object?> get props => [id, value, isDeleting, isFavorite];
}
