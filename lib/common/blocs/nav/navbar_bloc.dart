import 'package:bloc/bloc.dart';
import 'package:speakzy/common/blocs/nav/navbar_event.dart';
import 'package:speakzy/common/blocs/nav/navbar_state.dart';

class NavbarBloc extends Bloc<NavbarEvent, NavbarState>{
  NavbarBloc() : super(const NavbarState()){
    on<NavbarTabChanged>((event, emit){
      emit(NavbarState(selectedIndex: event.index));
    });
  }
}