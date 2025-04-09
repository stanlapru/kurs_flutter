import 'package:flutter/material.dart';
import 'package:kurs_flutter/features/account/presentation/account_screen.dart';
import 'package:kurs_flutter/features/feed/presentation/feed_screen.dart';
import 'package:kurs_flutter/features/home/presentation/home_screen.dart';
import 'package:kurs_flutter/features/services/presentation/services_screen.dart';

class NavigationWrapper extends StatefulWidget {
  const NavigationWrapper({super.key});

  @override
  _NavigationWrapperState createState() => _NavigationWrapperState();
}

class _NavigationWrapperState extends State<NavigationWrapper> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const FeedScreen(),
    const ServicesScreen(),
    const AccountScreen(),
  ];

  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Домашняя',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.rss_feed),
      label: 'Лента',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.business_center),
      label: 'Сервисы',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Аккаунт',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: _bottomNavBarItems,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
