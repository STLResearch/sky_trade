import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';

class InviteFriendsWidget extends StatelessWidget {
  const InviteFriendsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: SizedBox(
        height: 55,
        child: TextField(
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontFamily: FontFamily.poppins,
            color: hex222222,
          ),
          decoration: InputDecoration(
            hintText: 'email address',
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(3),
              child: IconButton(
                icon: Assets.svgs.inviteFriends.svg(),
                onPressed: () {},
                style: IconButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: hex0653EA,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
