// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mountain_travel/core/animations/fade_animation.dart';
import 'package:mountain_travel/core/common_color/common_color.dart';
import 'package:mountain_travel/features/discover/widget/custom_icon.dart';
import 'package:mountain_travel/features/home/widget/beach_screen.dart';
import 'package:mountain_travel/features/home/widget/hotel_screen.dart';
import 'package:mountain_travel/features/home/widget/master_painter.dart';
import 'package:mountain_travel/features/home/widget/mountain_screen.dart';
import 'package:mountain_travel/features/home/widget/restaurant_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> place_name = ["Packages", "Beaches", "Hotels", "Restaurants"];
  List<Widget> place_widget = [
    const MoutainScreen(),
    const Beach_Screen(),
    const HotelScreen(),
    const Restaurant_Screen(),
  ];
  int selecteditem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: secondrycolor,
      body: CustomPaint(
        painter: MasterPainter(),
        child: Padding(
          padding: const EdgeInsets.only(left: 3, right: 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FadeAnimation(
                      duration: const Duration(seconds: 1),
                      begin: 0.1,
                      end: 0.9,
                      child: CustomIcon(
                        icon: Icons.menu,
                        function: () {},
                      ),
                    ),
                    FadeAnimation(
                      duration: const Duration(seconds: 1),
                      begin: 0.1,
                      end: 0.9,
                      child: CustomIcon(
                        icon: Icons.search,
                        function: () {},
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Explore",
                style: GoogleFonts.poppins(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "the world",
                style: GoogleFonts.poppins(fontSize: 40, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 420,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: place_name.length,
                  itemBuilder: (context, index) {
                    var data = place_name[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selecteditem = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(microseconds: 950),
                          child: Column(
                            children: [
                              Text(data,
                                  style: GoogleFonts.lato(
                                    decoration: TextDecoration.underline,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: index == selecteditem
                                        ? yellowcolor
                                        : Colors.white,
                                  )),
                              selecteditem == index
                                  ? TweenAnimationBuilder<double>(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      tween: Tween<double>(begin: 0, end: 50),
                                      builder: (context, value, child) {
                                        return Container(
                                          height: 2,
                                          width: value,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: yellowcolor),
                                        );
                                      },
                                    )
                                  : const SizedBox.shrink()
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.6,
                width: 420,
                child: PageView(
                  children: [
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.6,
                      width: 420,
                      child: place_widget[selecteditem],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
