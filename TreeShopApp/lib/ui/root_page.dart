import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/screens/cart_page.dart';
import 'package:flutter_application_1/ui/screens/favorite_page.dart';
import 'package:flutter_application_1/ui/screens/home_page.dart';
import 'package:flutter_application_1/ui/screens/profile_page.dart';

class RootPage extends StatefulWidget{
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}
class _RootPageState extends State<RootPage>{
  int _bottomNavIndex = 0;

  List<Widget> pages = const [
    HomePage(),
    FavoritePage(),
    CartPage(),
    ProfilePage()
  ];
  List<IconData> iconList = [Icons.home, Icons.favorite, Icons.shopping_cart, Icons.person];
  //https://youtu.be/4Y10k43UGrU?si=JLAugnIM2aMHBh10
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Root page'),
        ),
      );
  }

}