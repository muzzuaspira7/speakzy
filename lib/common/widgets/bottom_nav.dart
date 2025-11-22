import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speakzy/common/blocs/nav/navbar_bloc.dart';
import 'package:speakzy/common/blocs/nav/navbar_event.dart';
import 'package:speakzy/common/blocs/nav/navbar_state.dart';

import '../../features/home/presentation/pages/home.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import 'custom_bottom_nav.dart';

class BottomNavBarScreen extends StatelessWidget {
   BottomNavBarScreen({super.key});

  final List<Widget> _pages =  [
    HomePage(),
    Container(),
    Container(),
    Container(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavbarBloc, NavbarState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.selectedIndex,
            children: _pages,
          ),
          bottomNavigationBar: CustomBottomNavBar(
            currentIndex: state.selectedIndex,
            onTap: (index) {
              context.read<NavbarBloc>().add(NavbarTabChanged(index));
            },
          ),
        );
      },
    );
  }
}
