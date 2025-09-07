import 'package:flutter/material.dart';
import 'package:starbucks_clone/screens/cards_screen.dart';
import 'package:starbucks_clone/screens/gift_screen.dart';
import 'package:starbucks_clone/screens/order_screen.dart';
import 'package:starbucks_clone/screens/store_screen.dart';
import 'package:starbucks_clone/widgets/nav_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;
    switch (_currentIndex) {
      case 0:
        screen = HomeScreen();
        break;
      case 1:
        screen = CardScreen();
        break;
      case 2:
        screen = OrderScreen();
        break;
      case 3:
        screen = GiftScreen();
        break;
      case 4:
        screen = StoreScreen();
        break;
      default:
        throw UnimplementedError('no widget for $_currentIndex');
    }

    var colorScheme = Theme.of(context).colorScheme;
    var mainArea = ColoredBox(
      color: colorScheme.surfaceContainerHighest,
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 200),
        child: screen,
      ),
    );

    return Scaffold(
      body: screen,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavItem(
              index: 0,
              currentIndex: _currentIndex,
              icon: Icons.star,
              label: 'Home',
              onTabTapped: _onTabTapped,
            ),
            NavItem(
              index: 1,
              currentIndex: _currentIndex,
              icon: Icons.credit_card,
              label: 'Cards',
              onTabTapped: _onTabTapped,
            ),
            NavItem(
              index: 2,
              currentIndex: _currentIndex,
              icon: Icons.local_drink,
              label: 'Order',
              onTabTapped: _onTabTapped,
            ),
            NavItem(
              index: 3,
              currentIndex: _currentIndex,
              icon: Icons.card_giftcard,
              label: 'Gift',
              onTabTapped: _onTabTapped,
            ),
            NavItem(
              index: 4,
              currentIndex: _currentIndex,
              icon: Icons.store,
              label: 'Store',
              onTabTapped: _onTabTapped,
            ),
          ],
        ),
      ),
    );
  }
}
