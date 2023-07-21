import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });

}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios Botones',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card
  ),
  MenuItem(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded
  ),
  MenuItem(
    title: 'SnacksBar y dialogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline
  ),
  MenuItem(
    title: 'Animated container',
    subTitle: 'Animacion de los contenedores',
    link: '/animated',
    icon: Icons.animation
  ),
  MenuItem(
    title: 'UI controls + Tiles',
    subTitle: 'Una serie de controles de flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined
  ),
  MenuItem(
    title: 'Tutorial de la aplicacion',
    subTitle: 'Pequeña muestra introductoria',
    link: '/tutorial',
    icon: Icons.wb_incandescent_sharp
  ),
];
