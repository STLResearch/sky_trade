import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';

class ActionCardWidget extends StatelessWidget {
  const ActionCardWidget({
    required this.title,
    required this.icon,
    required this.description,
    super.key,
  });

  final String title;
  final SvgPicture icon;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: SizedBox(
        child: Card(
          elevation: 12,
          shadowColor: hex263A4DE9,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: hexFFFFFF,
          child: Padding(
            padding: const EdgeInsets.all(17),
            child: Row(
              children: [
                SizedBox(
                  width: 76,
                  child: Column(
                    children: [
                      Card(
                        elevation: 0,
                        color: hexE9F5FE,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.all(13),
                            child: icon,
                          ),
                        ),
                      ),
                      Text(
                          title,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamily.poppins,
                            color: hex4285F4,
                          ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox( width: 13),
                Expanded(
                  child: Center(
                    child: Text(
                      description,
                      style: const TextStyle(
                        fontSize: 12.5,
                        fontWeight: FontWeight.w400,
                        fontFamily: FontFamily.poppins,
                        color: hex222222,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
