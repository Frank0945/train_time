import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/core/theme/constants/theme_constants.dart';
import 'package:train_time/core/theme/repository/theme_repo.dart';
import 'package:train_time/core/theme/theme_event.dart';
import 'package:train_time/core/theme/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final ThemeRepo themeRepo;

  ThemeBloc({
    required this.themeRepo,
  }) : super(ThemeState(
            themeMode: defaultThemeMode, seedColor: defaultSeedColor)) {
    on<LoadTheme>(_onLoadTheme);
    on<UpdateTheme>(_onUpdateTheme);
    add(LoadTheme());
  }

  void _onLoadTheme(LoadTheme event, Emitter<ThemeState> emit) {
    final themeMode = themeRepo.loadThemeMode();
    final seedColor = themeRepo.loadSeedColor();
    emit(state.copyWith(themeMode: themeMode, seedColor: seedColor));
  }

  void _onUpdateTheme(UpdateTheme event, Emitter<ThemeState> emit) {
    if (event.themeMode != null) {
      themeRepo.saveThemeMode(event.themeMode!);
    }
    if (event.seedColor != null) {
      themeRepo.saveSeedColor(event.seedColor!);
    }
    emit(
        state.copyWith(themeMode: event.themeMode, seedColor: event.seedColor));
  }
}
