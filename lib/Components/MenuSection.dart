import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuSection extends StatelessWidget {
  final List menuItems = ["Messages", "Appels", "Status"];
  MenuSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 25),
          child: Row(
            children: menuItems.map((item) {
              return Container(
                margin: const EdgeInsets.only(right: 55),
                child: Text(
                  item,
                  style: GoogleFonts.inter(
                    color: Colors.white60,
                    fontSize: 29,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
