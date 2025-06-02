import 'dart:ui' show VoidCallback;

import 'package:flutter/material.dart'
    show
        AlertDialog,
        BorderRadius,
        BuildContext,
        Colors,
        Column,
        CrossAxisAlignment,
        Divider,
        EdgeInsets,
        FontWeight,
        MainAxisAlignment,
        MainAxisSize,
        RoundedRectangleBorder,
        SizedBox,
        Text,
        TextButton,
        TextStyle,
        Theme,
        showDialog;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart' show FontFamily;
import 'package:sky_trade/core/resources/colors.dart'
    show hex0072F0, hex686868, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteenDotNil,
        nilDotNil,
        oneDotNil,
        sixteenDotNil,
        tenDotNil,
        thirteenDotNil,
        twelveDotNil,
        twentyDotNil,
        twentyFourDotNil;

import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

final class LocationActionDialog {
  static void show(
    BuildContext context, {
    required String title,
    required String content,
    bool? dismissible,
    String? allowButtonText,
    VoidCallback? onAllowPressed,
    String? settingsButtonText,
    VoidCallback? onSettingsPressed,
    bool showAllowButton = true,
    bool showSettingsButton = false,
  }) {
    showDialog<void>(
      context: context,
      barrierDismissible: dismissible ?? true,
      builder: (_) => AlertDialog.adaptive(
        backgroundColor: hexFFFFFF,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            eightDotNil,
          ),
        ),
        contentPadding: const EdgeInsets.fromLTRB(
          twentyFourDotNil,
          tenDotNil,
          twentyFourDotNil,
          nilDotNil,
        ),
        actionsPadding: const EdgeInsets.fromLTRB(
          eightDotNil,
          nilDotNil,
          eightDotNil,
          nilDotNil,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontFamily: FontFamily.roboto,
                    fontSize: fifteenDotNil,
                    height: twentyDotNil / fifteenDotNil,
                    letterSpacing: nilDotNil,
                  ),
            ),
          ],
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              content,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontFamily: FontFamily.roboto,
                    fontSize: thirteenDotNil,
                    height: twentyDotNil / thirteenDotNil,
                    letterSpacing: nilDotNil,
                    color: hex686868,
                  ),
            ),
            const SizedBox(
              height: eightDotNil,
            ),
            const Divider(
              height: oneDotNil,
            ),
          ],
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          if (showAllowButton && onAllowPressed != null)
            TextButton(
              onPressed: onAllowPressed,
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
              child: Text(
                allowButtonText ?? context.localize.allow,
                style: const TextStyle(
                  fontFamily: FontFamily.poppins,
                  fontWeight: FontWeight.w500,
                  fontSize: twelveDotNil,
                  height: sixteenDotNil / twelveDotNil,
                  letterSpacing: nilDotNil,
                  color: hex0072F0,
                ),
              ),
            ),
          if (showSettingsButton && onSettingsPressed != null)
            TextButton(
              onPressed: onSettingsPressed,
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
              child: Text(
                settingsButtonText ?? context.localize.openSettings,
                style: const TextStyle(
                  fontFamily: FontFamily.poppins,
                  fontWeight: FontWeight.w500,
                  fontSize: twelveDotNil,
                  height: sixteenDotNil / twelveDotNil,
                  letterSpacing: nilDotNil,
                  color: hex0072F0,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
