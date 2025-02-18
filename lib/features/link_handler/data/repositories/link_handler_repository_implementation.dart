import 'package:app_links/app_links.dart';
import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/link_handler_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/link_handler/domain/entities/link_entity.dart';
import 'package:sky_trade/features/link_handler/domain/repositories/link_handler_repository.dart';
import 'package:url_launcher/url_launcher.dart' show canLaunchUrl, launchUrl;

final class LinkHandlerRepositoryImplementation
    with DataHandler
    implements LinkHandlerRepository {
  const LinkHandlerRepositoryImplementation(
    AppLinks appLinks,
  ) : _appLinks = appLinks;

  final AppLinks _appLinks;

  @override
  Stream<Uri> get linkStream => _appLinks.uriLinkStream;

  @override
  Future<Either<CheckLinkFailure, LinkEntity>> checkLink({
    required String link,
  }) =>
      handleData<CheckLinkFailure, LinkEntity>(
        dataSourceOperation: () => canLaunchUrl(
          Uri.parse(
            link,
          ),
        ).then(
          (checked) => LinkEntity(
            handled: checked,
          ),
        ),
        onSuccess: (linkEntity) => linkEntity,
        onFailure: (_) => CheckLinkFailure(),
      );

  @override
  Future<Either<HandleLinkFailure, LinkEntity>> handleLink({
    required String link,
  }) =>
      handleData<HandleLinkFailure, LinkEntity>(
        dataSourceOperation: () => launchUrl(
          Uri.parse(
            link,
          ),
        ).then(
          (handled) => LinkEntity(
            handled: handled,
          ),
        ),
        onSuccess: (linkEntity) => linkEntity,
        onFailure: (_) => HandleLinkFailure(),
      );
}
