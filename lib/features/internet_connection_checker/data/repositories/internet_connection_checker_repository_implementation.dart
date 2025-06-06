import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    show InternetConnection;
import 'package:sky_trade/features/internet_connection_checker/domain/repositories/internet_connection_checker_repository.dart';

final class InternetConnectionCheckerRepositoryImplementation
    implements InternetConnectionCheckerRepository {
  const InternetConnectionCheckerRepositoryImplementation(
    InternetConnection internetConnection,
  ) : _internetConnection = internetConnection;

  final InternetConnection _internetConnection;

  @override
  Future<bool> get hasActiveInternetConnection =>
      _internetConnection.hasInternetAccess;
}
