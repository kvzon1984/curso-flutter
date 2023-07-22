import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class DrewerMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;
  const DrewerMenu({super.key, required this.scaffoldKey});

  @override
  State<DrewerMenu> createState() => _DrewerMenuState();
}

class _DrewerMenuState extends State<DrewerMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() {
          navDrawerIndex = value;
        });

        final menuItem = appMenuItems[value];

        context.push( menuItem.link );

        widget.scaffoldKey.currentState?.closeDrawer(); // Cerrar el Drawer

      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 5 : 20, 26, 10),
          child: const Text('Menu Principal', style: TextStyle(fontSize: 20),),
        ),

        ...appMenuItems
          .sublist(0,3)
          .map((item) => NavigationDrawerDestination(
            icon: Icon(item.icon),
            label: Text(item.title)
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
          child: Divider(),
        ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 10, 26, 10),
          child: Text('Mas Opciones', style: TextStyle(fontSize: 20),),
        ),
        ...appMenuItems
          .sublist(3)
          .map((item) => NavigationDrawerDestination(
            icon: Icon(item.icon),
            label: Text(item.title)
          ),
        ),
      ],
    );
  }
}
