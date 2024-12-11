import 'package:e_comm_demo/models/grid_item.dart';
import 'package:e_comm_demo/utils/colors.dart';
import 'package:e_comm_demo/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridItemCard extends StatefulWidget {
  final GridItem item;

  const GridItemCard({
    super.key,
    required this.item,
  });

  @override
  State<GridItemCard> createState() => _GridItemCardState();
}

class _GridItemCardState extends State<GridItemCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image with heart button
        Stack(
          children: [
            ClipRRect(
              child: Image.asset(
                widget.item.image,
                height: DSizes.gridHeight(
                    context),
                width: double.infinity,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              top: DSizes.sm(context),
              right: DSizes.sm(context),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
                child: Icon(
                  Icons.favorite,
                  color: isLiked ? DColors.primary : Colors.white,
                  size: DSizes.iconMd(context),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: DSizes.smallSizedBoxHeight(context)),

        // Heading text
        Text(
          widget.item.heading,
          style: GoogleFonts.poppins(
            fontSize: DSizes.fontSizeMd(context),
            fontWeight: FontWeight.w600,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),

        // Subheading text
        Text(
          widget.item.subHeading,
          style: GoogleFonts.poppins(
            fontSize: DSizes.fontSizeSm(context),
            fontWeight: FontWeight.w400,
            color: DColors.grey1,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
