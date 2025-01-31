import "package:get_it/get_it.dart";
import "package:shared_preferences/shared_preferences.dart";
import "package:train_time/core/storage/shared_preferences_service.dart";
import "package:train_time/core/theme/repository/theme_repo.dart";
import "package:train_time/core/theme/theme_bloc.dart";
import "package:train_time/features/schedule_view/data/repositories/schedule_repo_impl.dart";
import "package:train_time/features/schedule_view/data/repositories/train_repo_impl.dart";
import "package:train_time/features/schedule_view/domain/repositories/schedule_repo.dart";
import "package:train_time/features/schedule_view/domain/repositories/train_repo.dart";
import "package:train_time/features/schedule_view/domain/usecases/schedule_usecase.dart";
import "package:train_time/features/schedule_view/domain/usecases/train_status_usecase.dart";
import "package:train_time/features/train_search/data/repositories/station_repo_impl.dart";
import "package:train_time/features/train_search/domain/repositories/marker_repo.dart";
import "package:train_time/features/train_search/domain/repositories/selected_station_repo.dart";
import "package:train_time/features/train_search/domain/repositories/station_repo.dart";
import "package:train_time/features/train_search/domain/usecases/station_usecase.dart";
import "package:train_time/features/train_search/presentation/blocs/marker/marker_bloc.dart";
import "package:train_time/features/train_search/presentation/blocs/picker/picker_bloc.dart";
import "package:train_time/features/train_search/presentation/blocs/selected/selected_bloc.dart";

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Storage
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferencesService>(
    SharedPreferencesService()..initWithInstance(sharedPreferences),
  );

  // Repositories
  sl.registerSingleton<ThemeRepo>(ThemeRepo(sl()));
  sl.registerSingleton<StationRepo>(StationRepoImpl());
  sl.registerSingleton<SelectedStationRepo>(SelectedStationRepo(sl()));
  sl.registerSingleton<MarkerRepo>(MarkerRepo(sl()));
  sl.registerSingleton<ScheduleRepo>(ScheduleRepoImpl());
  sl.registerSingleton<TrainRepo>(TrainRepoImpl());

  // Usecases
  sl.registerSingleton<StationUsecase>(StationUsecase(sl()));
  sl.registerSingleton<ScheduleUsecase>(ScheduleUsecase(sl()));
  sl.registerSingleton<TrainStatusUsecase>(TrainStatusUsecase(sl()));

  // Blocs
  sl.registerSingleton<ThemeBloc>(
    ThemeBloc(
      themeRepo: sl(),
    ),
  );

  sl.registerSingleton<PickerBloc>(
    PickerBloc(
      stationUsecase: sl(),
      selectedStationRepo: sl(),
    ),
  );

  sl.registerSingleton<SelectedBloc>(
    SelectedBloc(
      stationUsecase: sl(),
      selectedStationRepo: sl(),
    ),
  );

  sl.registerSingleton<MarkerBloc>(
    MarkerBloc(
      markerRepo: sl(),
      stationUsecase: sl(),
    ),
  );
}
