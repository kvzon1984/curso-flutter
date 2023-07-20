import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../config/menu/menu_items.dart';

class HomeScreens extends StatelessWidget {

  static const String name = 'home_screen';

  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {

  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
      final menuItems = appMenuItems[index];

      return _CustomListTile(menuItems: menuItems);
    },);
  }
}

class _CustomListTile extends StatelessWidget {

  final MenuItem menuItems;

  const _CustomListTile({
    required this.menuItems,
  });


  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      splashColor: colors.primary,
      leading: Icon(menuItems.icon, color: colors.primary,),
      trailing: Icon( Icons.arrow_forward_ios_rounded, color: colors.primary,),
      title: Text(menuItems.title),
      subtitle: Text(menuItems.subTitle),
      onTap: () {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //       builder: (context) => const ButtonsScreen(),
        //     ),
        //   );

        // Navigator.pushNamed(context, menuItems.link);

        // context.pushNamed( CardsScreen.name );

        context.push( menuItems.link );
      },
    );
  }
}