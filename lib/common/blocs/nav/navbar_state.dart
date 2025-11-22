import 'package:equatable/equatable.dart';

class NavbarState extends Equatable{
  final int selectedIndex;
  const NavbarState({this.selectedIndex = 0});

  @override
  List<Object> get props => [selectedIndex];
}