import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_comm_demo/utils/colors.dart';
import 'package:e_comm_demo/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageCarousel extends StatefulWidget {
  final List<String> images;

  const ImageCarousel({super.key, required this.images});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: DSizes.imageCarouselHeight(context),
                viewportFraction: 1.0,
                autoPlay: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: widget.images.map((image) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: DSizes.screenWidth(context),
                      // margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Positioned(
              bottom: 14,
              left: 14,
              child: Container(
                padding: EdgeInsets.all(
                  DSizes.smallPadding(context),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    DSizes.borderRadiusCircular(context),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      ' 3.9 ',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: DSizes.fontSizeSm(context),
                      ),
                    ),
                    Icon(
                      Icons.star_rounded,
                      color: DColors.primary,
                      size: DSizes.iconSm(context),
                    ),
                    Text(
                      ' | ',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade400,
                        fontSize: DSizes.fontSizeMd(context),
                      ),
                    ),
                    Text(
                      '237 Reviews',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: DSizes.fontSizeSm(context),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: DSizes.spaceBtwItems(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.images.asMap().entries.map((entry) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: DSizes.xs(context)),
              width: _currentIndex == entry.key ? DSizes.md(context): DSizes.sm(context),
              height: _currentIndex == entry.key ? DSizes.md(context): DSizes.sm(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == entry.key
                    ? DColors.primary 
                    : DColors.lgrey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
