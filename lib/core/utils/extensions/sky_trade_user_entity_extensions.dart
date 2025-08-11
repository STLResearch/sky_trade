// SPDX-License-Identifier: UNLICENSED
                            
import 'package:sky_trade/core/resources/numbers/ui.dart' show one, two, zero;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show pirateKey;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString, whiteSpace;
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart'
    show SkyTradeUserEntity;

extension SkyTradeUserEntityExtensions on SkyTradeUserEntity {
  String get initials {
    final splitName = displayName.split(
      whiteSpace,
    );

    if (splitName.isEmpty || splitName.first.isEmpty) {
      return emptyString;
    }

    if (splitName.length == one ||
        (splitName.length >= two && splitName[one].isEmpty)) {
      return splitName.first[zero].toUpperCase();
    }

    final firstInitial = splitName.first[zero];
    final secondInitial = splitName[one][zero];

    return firstInitial.toUpperCase() + secondInitial.toUpperCase();
  }

  String get displayName =>
      username ??
      switch (name.isNotEmpty) {
        true when name != pirateKey => name,
        _ => email,
      };
}
