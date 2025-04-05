import 'package:flutter/material.dart';
import 'package:kurs_flutter/features/account/presentation/account_screen.dart';
import 'package:kurs_flutter/features/auth/presentation/auth_screen.dart';
import 'package:kurs_flutter/features/chat/presentation/chat_screen.dart';
import 'package:kurs_flutter/features/feed/presentation/feed_screen.dart';
import 'package:kurs_flutter/features/home/presentation/home_screen.dart';
import 'package:kurs_flutter/features/register/presentation/register_screen.dart';
import 'package:kurs_flutter/features/services/presentation/services_screen.dart';
import 'package:kurs_flutter/shared/etc/navigation_wrapper.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Курс Flutter Проект Тест',
      initialRoute: "/",
      routes: {
        "/": (context) => const NavigationWrapper(),
        "/home": (context) => const HomeScreen(),
        "/feed": (context) => const FeedScreen(),
        "/chat": (context) => const ChatScreen(),
        "/auth": (context) => const AuthScreen(),
        "/register": (context) => const RegisterScreen(),
        "/services": (context) => const ServicesScreen(),
        "/account": (context) => const AccountScreen(),
      }
    );
  }
}
