import "package:bloc/bloc.dart";
import "package:counter_bloc/bloc/switch/switch_event.dart";
import "package:counter_bloc/bloc/switch/switch_state.dart";

class SwitchBloc extends Bloc<SwitchEvent,SwitchState>{

  SwitchBloc() : super(SwitchState(isSwitch: false)){
    on<EnableOrDisableNotification>(_enableOrDisableNotification);
    on<SliderEvent>(_sliderEvent);
  }

  void _enableOrDisableNotification(SwitchEvent event,Emitter<SwitchState> emit){
    emit(state.copyWith(switchNotification: !state.isSwitch));
  }

  void _sliderEvent(SliderEvent event,Emitter<SwitchState> emit){
    emit(state.copyWith(slider: event.slider));
  }

}