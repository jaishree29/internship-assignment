import 'package:e_comm_demo/widgets/progress_data.dart';
import 'package:e_comm_demo/widgets/progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_comm_demo/utils/colors.dart';
import 'package:e_comm_demo/utils/sizes.dart';

class RatingsAndReviews extends StatelessWidget {
  const RatingsAndReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List progressItems = [
      ProgressData(
        progress: 0.85,
        icon: Icons.settings_ethernet_rounded,
        heading: 'Sizing',
        subHeading: 'True to Size',
      ),
      ProgressData(
        progress: 0.90,
        text: '4.5',
        heading: 'Quality',
        subHeading: 'Out of 5',
      ),
      ProgressData(
        progress: 0.80,
        text: '4.1',
        heading: 'Fit',
        subHeading: 'Out of 5',
      ),
      ProgressData(
        progress: 0.87,
        text: '87%',
        heading: 'Would Recommend',
        subHeading: 'Total 160 Recommendations',
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Ratings and Reviews',
              style: GoogleFonts.poppins(
                fontSize: DSizes.fontSizeMd(context),
                fontWeight: FontWeight.w600,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Write a Review',
                style: GoogleFonts.poppins(
                  fontSize: DSizes.fontSizeMd(context),
                  color: DColors.primary,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  decorationColor: DColors.primary,
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: DSizes.xxl(context)),

        // Rating Overview Section
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '4.0/5',
              style: GoogleFonts.poppins(
                fontSize: DSizes.fontSizeXLg(context),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: DSizes.sm(context)),

            // Star Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star_purple500_sharp,
                  size: DSizes.iconMd(context),
                  color: index < 4 ? DColors.primary : DColors.grey,
                );
              }),
            ),
            SizedBox(height: DSizes.smallSizedBoxHeight(context)),
            Text(
              'Based on 237 Star Ratings',
              style: GoogleFonts.poppins(
                fontSize: DSizes.fontSizeSm(context),
                fontWeight: FontWeight.w400,
                color: DColors.grey1,
              ),
            ),
          ],
        ),

        SizedBox(height: DSizes.spaceBtwSections(context)),
        const Divider(),
        SizedBox(height: DSizes.spaceBtwSections(context)),

        // Grid Section
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: DSizes.defaultSpace(context),
            mainAxisSpacing: DSizes.defaultSpace(context),
            childAspectRatio: 1.3,
          ),
          itemCount: progressItems.length,
          itemBuilder: (context, index) {
            final item = progressItems[index];
            return CustomProgressIndicator(
              progress: item.progress,
              icon: item.icon,
              text: item.text,
              heading: item.heading,
              subHeading: item.subHeading,
            );
          },
        ),
      ],
    );
  }
}
