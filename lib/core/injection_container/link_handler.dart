import 'package:get_it/get_it.dart' show GetIt;
import 'package:sky_trade/features/link_handler/data/repositories/link_handler_repository_implementation.dart';
import 'package:sky_trade/features/link_handler/domain/repositories/link_handler_repository.dart';
import 'package:sky_trade/features/link_handler/presentation/blocs/app_link_bloc/app_link_bloc.dart'
    show AppLinkBloc;
import 'package:sky_trade/features/link_handler/presentation/blocs/check_link_bloc/check_link_bloc.dart'
    show CheckLinkBloc;
import 'package:sky_trade/features/link_handler/presentation/blocs/handle_link_bloc/handle_link_bloc.dart'
    show HandleLinkBloc;

final _sl = GetIt.I;

Future<void> registerLinkHandlerServices() async {
  _sl
    // BLoCs
    ..registerFactory<AppLinkBloc>(
      () => AppLinkBloc(
        _sl(),
      ),
    )
    ..registerFactory<CheckLinkBloc>(
      () => CheckLinkBloc(
        _sl(),
      ),
    )
    ..registerFactory<HandleLinkBloc>(
      () => HandleLinkBloc(
        _sl(),
      ),
    )

    // Repositories
    ..registerLazySingleton<LinkHandlerRepository>(
      () => LinkHandlerRepositoryImplementation(
        _sl(),
      ),
    );
}
