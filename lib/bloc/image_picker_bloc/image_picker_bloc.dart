// import "package:bloc/bloc.dart";
// import "package:counter_bloc/bloc/image_picker_bloc/image_picker_event.dart";
// import "package:counter_bloc/bloc/image_picker_bloc/image_picker_state.dart";
// import "package:counter_bloc/utils/image_picker_utils.dart";
// import "package:image_picker/image_picker.dart";
//
// class ImagePickerBloc extends Bloc<ImagePickerEvent,ImagePickerState>{
//
//   final ImagePickerUtils _imagePickerUtils;
//
//   ImagePickerBloc(this._imagePickerUtils) : super(ImagePickerState()){
//     on<CameraImage>(_cameraImagePicker);
//     on<GalleryImagePicker>(_galleryImagePicker);
//   }
//
//   void _cameraImagePicker(CameraImage event,Emitter<ImagePickerState> emit)async{
//     XFile? file = await _imagePickerUtils.cameraCapture();
//     emit(state.copyWith(file: file));
//   }
//
//   void _galleryImagePicker(GalleryImagePicker event, Emitter<ImagePickerState> emit)async{
//     XFile? file = await _imagePickerUtils.pickImageFromGallery();
//     emit(state.copyWith(file: file));
//   }
// }

import "package:bloc/bloc.dart";
import "package:counter_bloc/bloc/image_picker_bloc/image_picker_event.dart";
import "package:counter_bloc/bloc/image_picker_bloc/image_picker_state.dart";
import "package:counter_bloc/ui/image_picker/image_picker_screen.dart";
import "package:counter_bloc/utils/image_picker_utils.dart";
import "package:image_picker/image_picker.dart";

class ImagePickerBloc extends Bloc<ImagePickerEvent,ImagePickerState>{

  final ImagePickerUtils _imagePickerUtils;

  ImagePickerBloc(this._imagePickerUtils):super(ImagePickerState()){
    on<CameraImage>(_cameraImagePicker);
    on<GalleryImagePicker>(_galleryImagePicker);
  }

  void _cameraImagePicker(CameraImage event,Emitter<ImagePickerState> emit)async{
    XFile? file = await _imagePickerUtils.cameraImagePicker();
    emit(state.copyWith(file: file));
  }

  void _galleryImagePicker(GalleryImagePicker event,Emitter<ImagePickerState> emit)async{
    XFile? file = await _imagePickerUtils.galleryImagePicker();
    emit(state.copyWith(file: file));
  }
}