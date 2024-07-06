import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_app/core/colors/appcolors.dart';
import 'package:money_app/presentation/cubits/bottom_nav_cubit/bottom_nav_cubit.dart';
import 'package:money_app/presentation/pages/calculator.dart';
import 'package:money_app/presentation/pages/homepage.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final List<Widget> pages = [
    const HomePage(),
    const CalculatorPage(),
  ];
  void onPageChanged(int page) {
    context.read<BottomNavCubit>().changeSelectedIndex(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: (value) => onPageChanged(value),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.white,
          selectedItemColor: AppColors.red,
          unselectedItemColor: AppColors.black.withOpacity(0.5),
          selectedLabelStyle: TextStyle(color: AppColors.red),
          unselectedLabelStyle: TextStyle(color: AppColors.black),
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          enableFeedback: true,
          onTap: (value) {
            context.read<BottomNavCubit>().changeSelectedIndex(value);
            pageController.animateToPage(value,
                duration: const Duration(microseconds: 10),
                curve: Curves.fastLinearToSlowEaseIn);
          },
          currentIndex: context.watch<BottomNavCubit>().state,
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.calculate),
              icon: Icon(Icons.calculate_outlined),
              label: 'Calculator',
            ),
          ]),
    );
  }
}
