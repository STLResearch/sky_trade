import 'package:flutter/material.dart' show BuildContext;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppLocalizationExtensions on BuildContext {
  AppLocalizations get localize => AppLocalizations.of(this);
}
