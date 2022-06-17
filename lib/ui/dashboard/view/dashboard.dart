import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tripkuy/core/app/app.dart';
import 'package:tripkuy/core/util/util.dart';
import 'package:tripkuy/ui/dashboard/cubit/dashboard_cubit.dart';
import 'package:tripkuy/ui/destination/destination_view.dart';
import 'package:tripkuy/ui/profile/profile.dart';
import 'package:tripkuy/ui/tourguide/tourguide.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key, this.page = 0}) : super(key: key);
  final int page;

  final DashboardCubit dashboardCubit = DashboardCubit();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
        create: (context) => dashboardCubit..pickItem(page),
        child: Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          body: WillPopScope(
              onWillPop: () => dashboardCubit.handleWillPop(),
              child: BlocBuilder<DashboardCubit, DashboardState>(
                builder: (context, state) {
                  switch (state.navBarItem) {
                    case NavBarItem.place:
                      return const DestinationView();
                    case NavBarItem.tourguide:
                      return const TourGuideView();
                    default:
                      return Container();
                  }
                },
              )),
          bottomNavigationBar: buildBottomNavigation(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          // floatingActionButton: _buildFloatingActionButton(),
        ));
  }

  Widget buildBottomNavigation() {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorPalette.teal,
          currentIndex: state.navBarItem.index,
          unselectedItemColor: ColorPalette.black,
          selectedItemColor: ColorPalette.black,
          onTap: (index) => dashboardCubit.pickItem(index),
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.location_city, color: ColorPalette.black),
              icon: Icon(Icons.location_city, color: ColorPalette.black),
              label: "Tempat Kuliner",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.group_outlined, color: ColorPalette.black),
              icon: Icon(Icons.group_outlined, color: ColorPalette.black),
              label: "Data Kurir",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.group_outlined, color: ColorPalette.black),
              icon:
                  Icon(Icons.account_circle_rounded, color: ColorPalette.black),
              label: "Profile",
            ),
          ],
        );
      },
    );
  }
}
