import 'package:e_comm_demo/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DSizes.bottomBarHeight(context),
      padding: EdgeInsets.symmetric(
        horizontal: DSizes.largePadding(context),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Like Button
          IconButton(
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            onPressed: () {},
          ),

          // Add to Bag Button
          Expanded(
            child: Container(
              height: DSizes.buttonHeight(context),
              // margin: EdgeInsets.only(left: DSizes.sm(context)),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.zero)
              ),
              child: Center(
                child: Text(
                  'Add to Bag',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: DSizes.fontSizeMd(context),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),

          // Buy Now Button
          Expanded(
            child: Container(
              height: DSizes.buttonHeight(context),
              margin: EdgeInsets.only(left: DSizes.sm(context)),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(Radius.zero)
              ),
              child: Center(
                child: Text(
                  'Buy Now',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: DSizes.fontSizeMd(context),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
