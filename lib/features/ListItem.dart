import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final Icon icon;

  const ListItem({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  width: 60,
                  height: 70,
                  alignment: Alignment.centerLeft,
                  child: icon),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      )),
                  Text(description,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                      )),
                ],
              ),
            ],
          ),
          Container(
            height: 70,
            padding: EdgeInsets.only(right: 20),
            alignment: Alignment.center,
            child: Text(price,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                )),
          ),
        ],
      ),
    );
  }
}
