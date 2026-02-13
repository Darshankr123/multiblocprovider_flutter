import 'dart:io';

import 'package:counter_bloc/bloc/image_picker_bloc/image_picker_bloc.dart';
import 'package:counter_bloc/bloc/image_picker_bloc/image_picker_event.dart';
import 'package:counter_bloc/bloc/image_picker_bloc/image_picker_state.dart';
import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker Bloc")),
      body: Center(
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     BlocBuilder<ImagePickerBloc, ImagePickerState>(
        //       builder: (context, state) {
        //         return state.file == null
        //             ? InkWell(
        //                 onTap: () {
        //                   context.read<ImagePickerBloc>().add(CameraImage());
        //                 },
        //                 child: Icon(Icons.image),
        //               )
        //             : Image.file(File(state.file!.path.toString()));
        //       },
        //     ),
        //     const SizedBox(width: 40,),
        //     BlocBuilder<ImagePickerBloc,ImagePickerState>(
        //       builder: (context, state) {
        //         return state.file == null
        //             ? InkWell(
        //                 onTap: () {
        //                   context.read<ImagePickerBloc>().add(
        //                     GalleryImagePicker(),
        //                   );
        //                 },
        //           child: Icon(Icons.gamepad),
        //               )
        //             : Image.file(File(state.file!.path.toString()));
        //         ;
        //       },
        //     ),
        //   ],
        // ),
        child: BlocBuilder<ImagePickerBloc, ImagePickerState>(
          builder: (context, state) {
            return state.file == null
                ? InkWell(
                    onTap: () {
                      context.read<ImagePickerBloc>().add(CameraImage());
                    },
                    child: Icon(Icons.image),
                  )
                : Image.file(File(state.file!.path.toString()));
          },
        ),
      ),
    );
  }
}
