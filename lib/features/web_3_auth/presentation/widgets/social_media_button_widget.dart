import 'package:flutter/material.dart';

class SocialMediaButtonWidget extends StatelessWidget {
  const SocialMediaButtonWidget({
    required this.text,
    required this.imagePath,
    super.key,
  });

  final String text;
  final Widget imagePath;

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
            imagePath,
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
              width: 24,
            ),
            // Adjust this width to match the image width
          ],
        ),
      ),
    );
  }
}
