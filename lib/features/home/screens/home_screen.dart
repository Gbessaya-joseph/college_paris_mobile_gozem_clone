import 'package:flutter/material.dart';
import 'package:gozem_clone/features/home/screens/home_body_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [Icon(Icons.notifications_outlined)],
        //leading: Image.asset("assets/account1.jpg"),
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/account1.jpg"),
        ),
        title: Image.asset(
          'assets/logo2.png',
          height: 75,
          width: 175,
        ),
      ),
      body: const HomeBodyScreen(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        iconSize: 32,
        elevation: 10,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Acceuil'),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: 'Aide'),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_pin), label: 'Adresses'),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time_filled_rounded), label: 'Activites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Compte')
        ],
      ),
    );
  }
}
