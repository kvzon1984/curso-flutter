import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar( BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar =  SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2)
    );

    ScaffoldMessenger.of(context).showSnackBar( snackbar);

  }

  void openDialog(BuildContext context){

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text('Culpa dolor id aute exercitation excepteur anim eiusmod ullamco. Do nostrud ad deserunt ullamco minim dolor ex minim do sint quis excepteur ullamco. Officia magna commodo do enim proident officia ex qui laboris nisi ipsum. Irure irure deserunt sunt sunt esse laboris do officia exercitation enim veniam eiusmod ea. Magna sit eu commodo duis incididunt cupidatat nulla veniam excepteur esse qui eu magna consectetur. Velit id amet dolore minim esse aliquip sit cillum proident. Culpa consequat veniam exercitation minim fugiat velit cupidatat minim laborum nisi.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Elit irure sunt anim aute sit laboris. Veniam est ut magna proident culpa ipsum cupidatat non nostrud consequat ex. Mollit nulla et dolore deserunt sit amet tempor cupidatat ipsum aute. Velit occaecat sunt minim dolor dolore excepteur. Ad est adipisicing ipsum est enim ad quis eiusmod do tempor.')
                  ]
                );
              },
              child: const Text('Licencias Usadas')
            ),
            FilledButton(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar Dialogo')
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar( context ),
        label: const Text('Mostrar SnackBars'),
      ),
    );
  }
}