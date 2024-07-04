import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EmailFieldWidget extends StatelessWidget {
  const EmailFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              AppLocalizations.of(context)!.email,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            const Text(
              '*',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Colors.red,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context)!.emailatmaildotcom,
            hintStyle: const TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color(0xFFB8B8B8), // Hint text color: #B8B8B8
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 22,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                color: Color(
                  0xFF87878D,
                ),
              ), // Border color: #87878D
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFF87878D)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFF87878D)),
            ),
            floatingLabelBehavior:
                FloatingLabelBehavior.never, // Prevent label from floating
          ),
        ),
      ],
    );
  }
}
