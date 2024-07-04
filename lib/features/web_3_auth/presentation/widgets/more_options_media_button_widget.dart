import 'package:flutter/material.dart';

class MoreOptionsMediaButtonWidget extends StatelessWidget {
  const MoreOptionsMediaButtonWidget({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: Color(0xFF595959)),
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF595959),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            // Adjust this height to match the image height
          ],
        ),
      ),
    );
  }
}
