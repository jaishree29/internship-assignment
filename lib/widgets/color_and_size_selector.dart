import 'package:e_comm_demo/utils/colors.dart';
import 'package:e_comm_demo/utils/sizes.dart';
import 'package:e_comm_demo/widgets/color_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorAndSizeSelector extends StatefulWidget {
  const ColorAndSizeSelector({super.key});

  @override
  State<ColorAndSizeSelector> createState() => _ColorAndSizeSelectorState();
}

class _ColorAndSizeSelectorState extends State<ColorAndSizeSelector> {
  Color? selectedColor;
  String selectedSize = "";
  final List<String> sizes = ['XS', 'S', 'M', 'L', 'XL'];
  final String unavailableSize = 'XS';

  final Map<String, String> sizeFullForms = {
    'XS': 'Extra Small',
    'S': 'Small',
    'M': 'Medium',
    'L': 'Large',
    'XL': 'Extra Large',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Color Heading
        Row(
          children: [
            Text(
              "COLOR: ",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: DSizes.fontSizeMd(context),
              ),
            ),
            Text(
              selectedColor == Colors.pink
                  ? "Persian Rose"
                  : selectedColor == Colors.black
                      ? "Black"
                      : "None",
              style: GoogleFonts.poppins(
                fontSize: DSizes.fontSizeMd(context),
                fontWeight: FontWeight.w500,
                color: DColors.grey1,
              ),
            ),
          ],
        ),
        SizedBox(height: DSizes.spaceBtwItems(context)),

        // Color Selection
        Row(
          children: [
            ColorButton(
              color: Colors.pink,
              isSelected: selectedColor == Colors.pink,
              onTap: () => setState(() => selectedColor = Colors.pink),
            ),
            SizedBox(
              width: DSizes.spaceBtwItems(context),
            ),
            ColorButton(
              color: Colors.black,
              isSelected: selectedColor == Colors.black,
              onTap: () => setState(() => selectedColor = Colors.black),
            ),
          ],
        ),
        SizedBox(
          height: DSizes.spaceBtwSections(context),
        ),

        // Size Heading
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "SIZE: ",
                  style: GoogleFonts.poppins(
                    fontSize: DSizes.fontSizeMd(context),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  selectedSize.isEmpty
                      ? "None"
                      : sizeFullForms[selectedSize] ?? "None",
                  style: GoogleFonts.poppins(
                    fontSize: DSizes.fontSizeMd(context),
                    fontWeight: FontWeight.w500,
                    color: DColors.grey1,
                  ),
                ),
              ],
            ),
            Text(
              "Size Guide",
              style: GoogleFonts.poppins(
                fontSize: DSizes.fontSizeMd(context),
                fontWeight: FontWeight.w500,
                color: DColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: DColors.primary,
              ),
            ),
          ],
        ),
        SizedBox(height: DSizes.spaceBtwItems(context)),

        // Size Selection
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: sizes.map((size) {
            final isUnavailable = size == unavailableSize;
            final isSelected = selectedSize == size;

            return GestureDetector(
              onTap: isUnavailable
                  ? null
                  : () {
                      setState(() {
                        selectedSize = size;
                      });
                    },
              child: Container(
                alignment: Alignment.center,
                width: DSizes.xxxl(context),
                height: DSizes.xxl(context),
                decoration: BoxDecoration(
                  color: isUnavailable ? Colors.grey : Colors.transparent,
                  border: Border.all(
                    color: isSelected ? Colors.black : Colors.grey,
                    width: 2,
                  ),
                ),
                child: Text(
                  size,
                  style: TextStyle(
                    color: isUnavailable ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
