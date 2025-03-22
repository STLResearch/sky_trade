import 'package:flutter/material.dart' show BuildContext;
import 'package:sky_trade/core/localization/l10n/generated/app_localizations.dart';

extension AppLocalizationExtensions on BuildContext {
  AppLocalizations get localize => AppLocalizations.of(this);
}
