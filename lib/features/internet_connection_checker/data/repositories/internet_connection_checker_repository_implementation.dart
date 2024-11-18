import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    show InternetConnection;
import 'package:sky_trade/features/internet_connection_checker/domain/repositories/internet_connection_checker_repository.dart';

final class InternetConnectionCheckerRepositoryImplementation
    implements InternetConnectionCheckerRepository {
  @override
  Future<bool> get hasActiveInternetConnection =>
      InternetConnection().hasInternetAccess;
}
