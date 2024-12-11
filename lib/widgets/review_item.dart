import 'package:e_comm_demo/utils/colors.dart';
import 'package:e_comm_demo/utils/sizes.dart';
import 'package:e_comm_demo/models/review_modal.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewItem extends StatelessWidget {
  final Review review;

  const ReviewItem({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: List.generate(5, (index) {
            return Icon(
              Icons.star_purple500_sharp,
              size: DSizes.iconMd(context),
              color: index < 4 ? DColors.primary : DColors.grey,
            );
          }),
        ),
        SizedBox(height: DSizes.sm(context)),
        Text(
          'Highly Recommended',
          style: GoogleFonts.poppins(
            fontSize: DSizes.fontSizeMd(context),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: DSizes.spaceBtwItems(context)),
        RichText(
          text: TextSpan(
            style: GoogleFonts.poppins(
              fontSize: DSizes.fontSizeMd(context),
              fontWeight: FontWeight.w600,
            ),
            children: [
              TextSpan(
                text: review.reviewText,
                style: GoogleFonts.poppins(
                  fontSize: DSizes.fontSizeSm(context),
                  color: DColors.grey1,
                  fontWeight: FontWeight.normal,
                ),
              ),
              TextSpan(
                text: 'See more',
                style: GoogleFonts.poppins(
                  fontSize: DSizes.fontSizeSm(context),
                  color: DColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: DColors.primary,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: DSizes.spaceBtwItems(context)),
        if (review.images != null && review.images!.isNotEmpty)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(review.images!.length, (index) {
                return Padding(
                  padding: EdgeInsets.only(right: DSizes.smallPadding(context)),
                  child: SizedBox(
                    width: DSizes.largeContainerWidth(context),
                    height: DSizes.largeContainerWidth(context),
                    child: ClipRRect(
                      child: Image.asset(
                        review.images![index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        review.images == null
            ? const SizedBox(
                height: 0,
              )
            : SizedBox(height: DSizes.spaceBtwSections(context)),
        Text(
          review.name,
          style: GoogleFonts.poppins(
            fontSize: DSizes.fontSizeMd(context),
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.check_circle_outline_rounded,
                  color: DColors.primary,
                ),
                SizedBox(width: DSizes.sm(context)),
                Text(
                  review.verifiedBuyerText,
                  style: GoogleFonts.poppins(
                    fontSize: DSizes.sfont(context),
                    color: DColors.grey1,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Helpful?',
                  style: GoogleFonts.poppins(
                    fontSize: DSizes.sfont(context),
                    color: DColors.grey1,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(width: DSizes.sm(context)),
                Icon(
                  Icons.thumb_up_alt_outlined,
                  color: DColors.primary,
                  size: DSizes.iconSm(context),
                ),
                SizedBox(width: DSizes.sm(context)),
                Text(
                  '${review.likeCount}',
                  style: GoogleFonts.poppins(
                    fontSize: DSizes.md(context),
                    color: DColors.primary,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(width: DSizes.sm(context)),
                Icon(
                  Icons.more_vert_rounded,
                  color: Colors.black,
                  size: DSizes.iconSm(context),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: DSizes.spaceBtwSections(context)),
        const Divider(),
        SizedBox(height: DSizes.spaceBtwSections(context)),
      ],
    );
  }
}
