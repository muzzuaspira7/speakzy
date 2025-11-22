import 'package:equatable/equatable.dart';

abstract class NavbarEvent extends Equatable{
  const NavbarEvent();
  @override
  List<Object> get props => [];
}

class NavbarTabChanged extends NavbarEvent{
  final int index;
  const NavbarTabChanged(this.index);
  @override
  List<Object> get props => [index];
}
