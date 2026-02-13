import 'package:flutter/material.dart';
import "package:equatable/equatable.dart";

abstract class FavoriteEvents extends Equatable{
  const FavoriteEvents();

  @override
  List<Object?> get props => [];
}

class FetchFavoriteEvent extends FavoriteEvents{}