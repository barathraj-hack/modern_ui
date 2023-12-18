import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  final String title;
  VoidCallback onTap;

  MyAppBar({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //title
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.outfit(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          //search button
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(12),
                color: Color.fromARGB(255, 233, 236, 239),
              ),
              child: const Icon(
                Icons.search,
                size: 36,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
