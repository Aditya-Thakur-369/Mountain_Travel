// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, use_super_parameters, camel_case_types, non_constant_identifier_names

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mountain_travel/core/common_color/common_color.dart';
import 'package:mountain_travel/core/data/data.dart';
import 'package:mountain_travel/features/home/model/place_model.dart';
import 'package:mountain_travel/router/router.dart';
import 'package:slider_button/slider_button.dart';

class Beach_Screen extends StatefulWidget {
  const Beach_Screen({super.key});

  @override
  State<Beach_Screen> createState() => _Beach_ScreenState();
}

class _Beach_ScreenState extends State<Beach_Screen> {
  late PlaceModel current_place;
  int seletedindex = 0;

  @override
  void initState() {
    current_place = beach_items[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.4 + 50,
          width: 400,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Swiper(
                itemWidth: screenSize.width / 1.1,
                itemHeight: screenSize.width / 1,
                itemCount: beach_items.length,
                scrollDirection: Axis.horizontal,
                autoplay: true,
                viewportFraction: 0.8,
                scale: 0.9,
                onIndexChanged: (value) {
                  setState(() {
                    current_place = beach_items[seletedindex];
                  });
                },
                onTap: (index) {
                  context.push(Routes.checkoutscreen.path,
                      extra: beach_items[index]);
                },
                itemBuilder: (context, index) {
                  seletedindex = index;
                  var data = beach_items[index];
                  return ImageCard(
                    model: data,
                  );
                },
                // layout: SwiperLayout.STACK,
                // layout: SwiperLayout.CUSTOM,
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/location.png",
              scale: 22,
              color: yellowcolor,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              // "Mountain",
                "${current_place.belogto} ( ${current_place.name} ) ",
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SliderButton(
          disable: false,
          vibrationFlag: true,
          dismissThresholds: 0.75,
          action: () async {
            context.push(Routes.discoverscreen.path, extra: beach_items);
            return null;
          },
          alignLabel: Alignment.center,
          label: Text(
            "                   Discover ${current_place.belogto}  > > >",
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
          ),
          width: 400,
          height: 90,
          buttonSize: 70,
          buttonColor: yellowcolor,
          shimmer: false,
          icon: const Icon(Iconsax.archive_14),
          backgroundColor: Colors.transparent.withOpacity(0.4),
        ),
      ],
    );
  }
}

class ImageCard extends StatelessWidget {
  PlaceModel model;
  ImageCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent.withOpacity(0.3),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              width: 200,
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Image.asset(
                model.image_url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              bottom: 120,
              left: 10,
              child: Text(
                model.name,
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
            bottom: 90,
            left: 10,
            child: Text(
              model.trip,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black.withOpacity(0.4)),
                  child: Column(
                    children: [
                      FittedBox(
                        child: Text(
                          model.timing['days'] ?? '',
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          "days",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black.withOpacity(0.4)),
                  child: Column(
                    children: [
                      FittedBox(
                        child: Text(
                          model.timing['hours'] ?? '',
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          "hours",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black.withOpacity(0.4)),
                  child: Column(
                    children: [
                      FittedBox(
                        child: Text(
                          model.timing['minute'] ?? '',
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          "minute",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
