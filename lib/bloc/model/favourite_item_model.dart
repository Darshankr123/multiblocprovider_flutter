import 'package:equatable/equatable.dart';

class FavoriteItemModal extends Equatable {
  const FavoriteItemModal({
    required this.id,
    required this.value,
    this.isDeleting = false,
    this.isFavorite = false,
  });

  final String id;
  final String value;
  final bool isDeleting;
  final bool isFavorite;

  FavoriteItemModal copyWith({
    String? id,
    String? value,
    bool? isDeleting,
    bool? isFavorite,
  }) {
    return FavoriteItemModal(
      id: id ?? this.id,
      value: value ?? this.value,
      isDeleting: isDeleting ?? this.isDeleting,
      isFavorite: isFavorite ?? this.isFavorite
    );
  }

  @override
  List<Object?> get props => [id, value, isDeleting, isFavorite];
}
