import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_comm_demo/utils/colors.dart';
import 'package:e_comm_demo/utils/sizes.dart';

class CustomProgressIndicator extends StatelessWidget {
  final double progress;
  final IconData? icon;
  final String? text;
  final String heading;
  final String subHeading;

  const CustomProgressIndicator({
    super.key,
    required this.progress,
    this.icon,
    this.text,
    required this.heading,
    required this.subHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: DSizes.xxxl(context),
                height: DSizes.xxxl(context),
                child: CircularProgressIndicator(
                  value: progress,
                  backgroundColor: DColors.grey,
                  color: DColors.primary,
                  strokeWidth: 2.0,
                ),
              ),
              if (icon != null)
                Icon(
                  icon,
                  size: DSizes.iconLg(context),
                  color: DColors.primary,
                )
              else if (text != null)
                Text(
                  text!,
                  style: GoogleFonts.poppins(
                    fontSize: DSizes.fontSizeMd(context),
                    fontWeight: FontWeight.bold,
                    color: DColors.primary,
                  ),
                ),
            ],
          ),
        ),
        SizedBox(height: DSizes.smallSizedBoxHeight(context)),
        Text(
          heading,
          style: GoogleFonts.poppins(
            fontSize: DSizes.fontSizeMd(context),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: DSizes.xsmallPadding(context)),
        Text(
          subHeading,
          style: GoogleFonts.poppins(
            fontSize: DSizes.fontSizeSm(context),
            fontWeight: FontWeight.w400,
            color: DColors.grey1,
          ),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.visible,
        ),
      ],
    );
  }
}
