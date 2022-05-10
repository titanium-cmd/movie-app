import 'package:flutter/material.dart';
import 'package:movie_app/utils.dart';
import 'package:movie_app/views/booking_view.dart';
import 'package:movie_app/views/home_view.dart';
import 'package:movie_app/views/profile_view.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({ Key? key }) : super(key: key);

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  int currentIndex = 0;
  final pages = const [
    HomeView(),
    BookingView(),
    ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customWhite,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Bookings'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Profile'
          ),
        ]
      ),
    );
  }
}