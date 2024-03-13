import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mountain_travel/features/home/widget/custom_icon.dart';
import 'package:mountain_travel/features/home/widget/master_painter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: secondrycolor,
      body: CustomPaint(
        painter: MasterPainter(),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIcon(
                      icon: Icons.menu,
                      function: () {},
                    ),
                    CustomIcon(
                      icon: Icons.search,
                      function: () {},
                    )
                  ],
                ),
              ),
              Text(
                "Explore",
                style: GoogleFonts.oswald(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
