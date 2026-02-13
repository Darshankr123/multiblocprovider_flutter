import 'package:counter_bloc/bloc/counter_bloc/counter_bloc.dart';
import 'package:counter_bloc/bloc/favroite_bloc/favorite_app_bloc.dart';
import 'package:counter_bloc/bloc/image_picker_bloc/image_picker_bloc.dart';
import 'package:counter_bloc/bloc/repository/favroite_repository.dart';
import 'package:counter_bloc/bloc/switch/switch_bloc.dart';
import 'package:counter_bloc/bloc/todo/todo_bloc.dart';
import 'package:counter_bloc/ui/favroite_app/favroite_app_screen.dart';
// import 'package:counter_bloc/ui/counter_screen.dart';
import 'package:counter_bloc/ui/image_picker/image_picker_screen.dart';
import 'package:counter_bloc/ui/switch_screen/switch_screen.dart';
import 'package:counter_bloc/ui/todo/to_do_screen/todo_screen.dart';
import 'package:counter_bloc/utils/image_picker_utils.dart';
import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";


void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(create: (_) => SwitchBloc()),
        BlocProvider(create: (_)=>ImagePickerBloc(ImagePickerUtils())),
        BlocProvider(create: (_)=>TodoBloc()),
        BlocProvider(create: (_)=>FavoriteBloc(FavoriteRepository()))
      ],
      // child: Counter(),
      // child: TodoScreen(),
        child: MaterialApp(
          title: "Flutter Demo",
          themeMode: ThemeMode.dark,
          theme: ThemeData(
            brightness: Brightness.dark,
            useMaterial3: true
          ),
          home: const FavoriteAppScreen(),
        )
    );
  }
}
