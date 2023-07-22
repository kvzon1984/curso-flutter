
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores inmutables el Provider lo hace inmutable pero accedsible a los demas por el ref
final colorListProvider = Provider((ref) => colorList);

// Se preocupa del dark mode
// final StateProvider<bool> isDarkModeProvider = StateProvider<bool>((ref) => false);

// Se preocupa del index del color seleccionado
// final selectedIndexColorProvider = StateProvider((ref) => 0);

// objeto de tipo AppTheme (custom)

final themeNotifierProvider = StateNotifierProvider<ThemeControllerNotifier, AppTheme>(
  (ref) => ThemeControllerNotifier(),
);


//Esto Crea un copia del estado y no es nada menos que el AppTheme cons sus propiedades y metodos
class ThemeControllerNotifier extends StateNotifier<AppTheme>{

  ThemeControllerNotifier(): super( AppTheme());

  void toggleDarskMode() {
    state = state.copyWith( isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int value) {
    state = state.copyWith( selectedColor: value);
  }

}
