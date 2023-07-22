
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutables el Provider lo hace inmutable pero accedsible a los demas por el ref
final colorListProvider = Provider((ref) => colorList);

final StateProvider<bool> isDarkModeProvider = StateProvider<bool>((ref) => false);

final selectedIndexColorProvider = StateProvider((ref) => 0);
