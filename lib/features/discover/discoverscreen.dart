// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:mountain_travel/core/data/data.dart';
import 'package:mountain_travel/features/discover/widget/custom_card.dart';
import 'package:mountain_travel/features/discover/widget/custom_icon.dart';
import 'package:mountain_travel/features/discover/widget/master_painter.dart';
import 'package:mountain_travel/features/home/model/place_model.dart';
import 'package:mountain_travel/router/router.dart';

class DiscoverScreen extends StatefulWidget {
  List<PlaceModel> model_list;
  DiscoverScreen({
    Key? key,
    required this.model_list,
  }) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: MasterPainter1(),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                CustomIcon(
                    icon: Icons.arrow_back_ios_new_sharp,
                    function: () {
                      context.pop();
                    }),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  // widget.model.belogto,
                  widget.model_list[0].belogto,
                  style: GoogleFonts.poppins(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Packages",
                  style: GoogleFonts.poppins(fontSize: 40, color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Container(
                //   height: 100,
                //   width: 200,
                //   decoration: BoxDecoration(
                //       color: Colors.white.withOpacity(0.1),
                //       borderRadius: BorderRadius.circular(50)),
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Row(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.all(10.0),
                //           child: Column(
                //             children: [
                //               Text(
                //                 "Sort by",
                //                 style: GoogleFonts.poppins(
                //                     fontSize: 16,
                //                     color: Colors.white,
                //                     fontWeight: FontWeight.w400),
                //               ),
                //               Text(
                //                 "Price",
                //                 style: GoogleFonts.poppins(
                //                     fontSize: 24,
                //                     color: Colors.white,
                //                     fontWeight: FontWeight.w400),
                //               )
                //             ],
                //           ),
                //         ),
                //         CustomIcon(icon: Iconsax.arrow_down_14, function: () {})
                //       ],
                //     ),
                //   ),
                // ),
                // Row(
                //   children: [
                //     Expanded(
                //       child: Column(
                //         children: [
                //           Container(
                //             height: 100,
                //             width: 200,
                //             decoration: BoxDecoration(
                //                 color: Colors.white.withOpacity(0.1),
                //                 borderRadius: BorderRadius.circular(50)),
                //             child: Padding(
                //               padding: const EdgeInsets.all(8.0),
                //               child: Row(
                //                 crossAxisAlignment: CrossAxisAlignment.center,
                //                 mainAxisAlignment:
                //                     MainAxisAlignment.spaceBetween,
                //                 children: [
                //                   Padding(
                //                     padding: const EdgeInsets.all(10.0),
                //                     child: Column(
                //                       children: [
                //                         Text(
                //                           "Sort by",
                //                           style: GoogleFonts.poppins(
                //                               fontSize: 16,
                //                               color: Colors.white,
                //                               fontWeight: FontWeight.w400),
                //                         ),
                //                         Text(
                //                           "Price",
                //                           style: GoogleFonts.poppins(
                //                               fontSize: 24,
                //                               color: Colors.white,
                //                               fontWeight: FontWeight.w400),
                //                         )
                //                       ],
                //                     ),
                //                   ),
                //                   CustomIcon(
                //                       icon: Iconsax.arrow_down_14,
                //                       function: () {})
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //     Expanded(child: Column(
                //       children: [

                //       ],
                //     ))
                //   ],
                // )
                SizedBox(
                  height: MediaQuery.of(context).size.height *
                      place_items.length /
                      4,
                  width: 420,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: widget.model_list.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.56,
                    ),
                    itemBuilder: (context, index) {
                      var data = widget.model_list[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                            onTap: () {
                              context.push(Routes.checkoutscreen.path,
                                  extra: data);
                            },
                            child: CustomContainerCard(
                              data: data,
                            )),
                      );
                    },
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
