import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geepx1/App%20bar%20screens/notification_screen.dart';
import 'package:geepx1/Classes/navigation_class.dart';
import 'package:geepx1/main%20screens/cart.dart';
import 'package:geepx1/main%20screens/explore.dart';
import 'package:geepx1/main%20screens/wishlist.dart';
import 'package:badges/badges.dart' as badges;

import 'App bar screens/search_screen.dart';
import 'Color Scheme/color_schemes.g.dart';
import 'main screens/home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Navigation _navigation = Navigation();
  int currentPageIndex = 0;
  final List<Widget> _screens = [
    const MainHome(),
    const WishList(),
    const Explore(),
    const Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset(
            'assets/geepx.svg',
            color: Theme.of(context).brightness == Brightness.light
                ? lightColorScheme.primary
                : darkColorScheme.onSurface,
            width: 90,
          ),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NotificationScreen()));
              },
              alignment: Alignment.center,
              icon: badges.Badge(
                padding: const EdgeInsets.all(6),
                badgeColor: const Color.fromRGBO(159, 50, 50, 1),
                position: const badges.BadgePosition(end: -5, top: -8),
                badgeContent: const Text(
                  "0",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                child: Icon(
                  Icons.notifications_outlined,
                  size: 25,
                  color: Theme.of(context).brightness == Brightness.light
                      ? lightColorScheme.onSurface
                      : darkColorScheme.onSurfaceVariant,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchScreen()));
              },
              icon: Icon(
                Icons.search,
                color: Theme.of(context).brightness == Brightness.light
                    ? lightColorScheme.onSurface
                    : darkColorScheme.onSurfaceVariant,
              ),
            ),
            GestureDetector(
              onTap: () {
                _navigation.showLoginScreens(
                  context,
                );
              },
              child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.transparent,
                      child: Icon(
                        Icons.account_circle,
                        color: Theme.of(context).brightness == Brightness.light
                            ? lightColorScheme.onSurface
                            : darkColorScheme.onSurfaceVariant,
                        size: 30,
                      ))),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home_filled),
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.favorite),
              icon: Icon(Icons.favorite_border),
              label: 'Wishlist',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.explore),
              icon: Icon(Icons.explore_outlined),
              label: 'Explore',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.shopping_cart),
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
          ],
        ),
        body: _screens[currentPageIndex]);
  }
}
