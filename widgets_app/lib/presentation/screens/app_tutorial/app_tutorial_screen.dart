import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}
final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'Velit nostrud aliqua est culpa velit. Ut sint adipisicing cillum tempor. Est occaecat pariatur sit incididunt et pariatur voluptate eiusmod.', 'assets/images/1.png'),
  SlideInfo('Entrega rapida', 'Sit aliqua aute ullamco voluptate duis. Enim consectetur deserunt veniam Lorem esse ullamco ullamco. In ut exercitation ipsum labore Lorem aliqua officia exercitation sunt sint. Elit dolore labore cillum ullamco eu nulla. Aliqua quis irure do sint aliquip aliqua nostrud sunt irure elit minim irure ullamco.', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'Reprehenderit elit pariatur sunt nulla ad irure. Consectetur elit aute ea laborum laborum et cupidatat nisi. Et pariatur excepteur minim ullamco cupidatat deserunt est qui irure enim nostrud ut incididunt ad. Laboris esse consequat culpa consectetur et in sunt nostrud est in amet aliquip non consectetur.', 'assets/images/3.png')
];

class AppTutorialScreen extends StatefulWidget {

  static const name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final PageController pageViewController = PageController();
  bool isFinishPage = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {

      final page = pageViewController.page ?? 0;
      if ( !isFinishPage && page >= (slides.length - 1.5)){
        setState(() {
          isFinishPage = true;
        });
      }
      print('${pageViewController.page}');
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map(
              (slideData) => _Slide(
                title: slideData.title,
                caption: slideData.caption,
                imageUrl: slideData.imageUrl
              )
            ).toList(),

          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text('Saltar'),
              onPressed: () => context.pop(),
            )
          ),

          isFinishPage ?
            Positioned(
              bottom: 30,
              right: 30,
              child: FadeInRight(
                from: 15,
                delay: const Duration(seconds: 1),
                child: FilledButton(
                  child: const Text('Comenzar'),
                  onPressed: () => context.pop(),
                ),
              )
            ): const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text( title , style: titleStyle,),
            const SizedBox(height: 10),
            Text( caption, style: captionStyle,),
          ],
        ),
      ),
    );
  }
}