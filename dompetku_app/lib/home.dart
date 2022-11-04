import 'package:dompetku_app/widgets/akun_screen.dart';
import 'package:dompetku_app/widgets/menu_box.dart';
import 'package:dompetku_app/widgets/transaction_detail.dart';
import 'package:dompetku_app/widgets/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:dompetku_app/util/app_theme.dart';

import 'models/transaksi.dart';
import 'widgets/home_screen.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int selectedPage = 0;

  final _pageOptions = [
    HomeScreen(),
    DetailTransactionScreen(),
    Akun_Screen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt_rounded,
              ),
              label: 'Transaksi'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.feed,
              ),
              label: 'Transaksi'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              label: 'Akun'),
        ],
        selectedItemColor: const Color(0xFF3D538F),
        unselectedItemColor: const Color(0xFF3D538F),
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
          
        },
      ),
    );
  }
}