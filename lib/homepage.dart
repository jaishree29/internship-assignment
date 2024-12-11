import 'package:e_comm_demo/widgets/customer_review.dart';
import 'package:e_comm_demo/widgets/ratings.dart';
import 'package:e_comm_demo/utils/colors.dart';
import 'package:e_comm_demo/utils/image_strings.dart';
import 'package:e_comm_demo/utils/sizes.dart';
import 'package:e_comm_demo/widgets/bottom_bar.dart';
import 'package:e_comm_demo/widgets/color_and_size_selector.dart';
import 'package:e_comm_demo/widgets/image_carousel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homapage extends StatelessWidget {
  const Homapage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> carouselImages = [
      DImages.dressImage_1,
      DImages.dressImage_2,
      DImages.dressImage_3,
      DImages.dressImage_4
    ];

    final List<String> reviewImages = [
      DImages.dressImage_2,
      DImages.dressImage_3,
      DImages.dressImage_5,
      DImages.dressImage_6,
      DImages.dressImage_7,
      DImages.dressImage_8,
      DImages.dressImage_9,
      DImages.dressImage_10,
    ];

    final TextEditingController pincode = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.arrow_back),
            SizedBox(
              width: DSizes.spaceBtwItems(context),
            ),
            Text(
              'THAT GIRL',
              style: GoogleFonts.dmSerifDisplay(
                color: DColors.primary,
                fontSize: DSizes.fontSizeLg(context),
              ),
            ),
            Row(
              children: [
                Image.asset(
                  DImages.search,
                  height: DSizes.iconMd(context),
                ),
                SizedBox(
                  width: DSizes.defaultSpace(context),
                ),
                Image.asset(
                  DImages.bag,
                  height: DSizes.iconMd(context),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Carousel
            ImageCarousel(
              images: carouselImages,
            ),
            SizedBox(
              height: DSizes.spaceBtwItems(context),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: DSizes.largePadding(context),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Title
                  Text(
                    'Printed Slip Dress',
                    style: GoogleFonts.poppins(
                      fontSize: DSizes.fontSizeLg(context),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: DSizes.smallSizedBoxHeight(context),
                  ),

                  // Price Section
                  Row(
                    children: [
                      Text(
                        '₹1434',
                        style: GoogleFonts.poppins(
                          fontSize: DSizes.fontSizeLg(context),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: DSizes.sm(context),
                      ),
                      Text(
                        '₹2300',
                        style: GoogleFonts.poppins(
                          fontSize: DSizes.fontSizeMd(context),
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough,
                          color: DColors.grey2,
                        ),
                      ),
                      SizedBox(
                        width: DSizes.sm(context),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: DColors.primary,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.all(DSizes.xsmallPadding(context)),
                          child: Text(
                            '-40%',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: DSizes.fontSizeSm(context),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: DSizes.smallSizedBoxHeight(context),
                  ),
                  Text(
                    'Inclusive of all taxes',
                    style: GoogleFonts.poppins(
                      fontSize: DSizes.fontSizeMd(context),
                      fontWeight: FontWeight.w300,
                      color: DColors.grey2,
                    ),
                  ),
                  SizedBox(
                    height: DSizes.defaultSpace(context),
                  ),

                  // Product Description
                  Text(
                    'Short slip dress made of satin, featuring a flared A-line silhouette with a printed design detail. Sleeveless with spaghetti straps for a feminine look.',
                    style: GoogleFonts.poppins(
                      fontSize: DSizes.fontSizeMd(context),
                      fontWeight: FontWeight.w300,
                      color: DColors.grey1,
                    ),
                  ),
                  SizedBox(
                    height: DSizes.defaultSpace(context),
                  ),
                  const Divider(),
                  SizedBox(
                    height: DSizes.defaultSpace(context),
                  ),

                  // Color and Size Selector
                  const ColorAndSizeSelector(),
                  SizedBox(height: DSizes.spaceBtwSections(context)),
                  const Divider(),
                  SizedBox(height: DSizes.spaceBtwSections(context)),

                  //Deliver to
                  Row(
                    children: [
                      Text(
                        "DELIVER TO: ",
                        style: GoogleFonts.poppins(
                          fontSize: DSizes.fontSizeMd(context),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Mumbai',
                        style: GoogleFonts.poppins(
                          fontSize: DSizes.fontSizeMd(context),
                          fontWeight: FontWeight.w500,
                          color: DColors.grey1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: DSizes.spaceBtwItems(context),
                  ),

                  // Pincode Input and Check Button
                  Container(
                    height: DSizes.textFieldHeight(context),
                    decoration: BoxDecoration(
                        border: Border.all(color: DColors.grey3),
                        borderRadius: BorderRadius.all(Radius.zero)),
                    child: Row(
                      children: [
                        // Pincode TextField
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: DSizes.mediumPadding(context)),
                            child: TextField(
                              controller: pincode,
                              decoration: InputDecoration(
                                labelStyle: GoogleFonts.poppins(
                                  fontSize: DSizes.fontSizeMd(context),
                                  fontWeight: FontWeight.w500,
                                ),
                                hintText: '4000001',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: DSizes.smallPadding(context),
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Check Button
                        Container(
                          height: DSizes.textFieldHeight(context),
                          width: DSizes.smallContainerWidth(context),
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.all(Radius.zero)),
                          child: Center(
                            child: Text(
                              'CHECK',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: DSizes.fontSizeMd(context),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: DSizes.spaceBtwItems(context)),
                  Row(
                    children: [
                      Image.asset(
                        DImages.bankNote,
                        height: DSizes.iconMd(context),
                      ),
                      SizedBox(
                        width: DSizes.spaceBtwItems(context),
                      ),
                      Text(
                        'Cash On Delivery Available',
                        style: GoogleFonts.poppins(
                          color: DColors.grey1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: DSizes.spaceBtwItems(context)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        DImages.truck,
                        height: DSizes.iconMd(context),
                      ),
                      SizedBox(
                        width: DSizes.spaceBtwItems(context),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Standard Delivery',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Free Shipping on this product. Save ₹99 ',
                            style: GoogleFonts.poppins(
                              color: DColors.grey1,
                            ),
                          ),
                          Text(
                            'Estimatd Delivery by:',
                            style: GoogleFonts.poppins(
                              color: DColors.grey1,
                            ),
                          ),
                          Text(
                            'Tue, 26 Mar - Thu 28 Mar',
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: DSizes.spaceBtwSections(context)),
                  const Divider(),
                  Padding(
                    padding: EdgeInsets.all(DSizes.largePadding(context)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'About the Product',
                          style: GoogleFonts.poppins(
                            fontSize: DSizes.fontSizeMd(context),
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: EdgeInsets.all(DSizes.largePadding(context)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Wash Care Instructions',
                          style: GoogleFonts.poppins(
                            fontSize: DSizes.fontSizeMd(context),
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: EdgeInsets.all(DSizes.largePadding(context)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Service & Policy',
                          style: GoogleFonts.poppins(
                            fontSize: DSizes.fontSizeMd(context),
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  SizedBox(height: DSizes.spaceBtwSections(context)),
                  const RatingsAndReviews(),
                  SizedBox(height: DSizes.spaceBtwSections(context)),
                  const Divider(),
                  SizedBox(height: DSizes.spaceBtwSections(context)),
                  Text(
                    'Review Photos(150)',
                    style: GoogleFonts.poppins(
                      fontSize: DSizes.fontSizeMd(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: DSizes.spaceBtwSections(context)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(reviewImages.length, (index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              right: DSizes.smallPadding(context)),
                          child: SizedBox(
                            width: DSizes.largeContainerWidth(context),
                            height: DSizes.largeContainerWidth(context),
                            child: ClipRRect(
                              child: Image.asset(
                                reviewImages[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: DSizes.spaceBtwSections(context)),
                  const Divider(),
                  SizedBox(height: DSizes.spaceBtwSections(context)),
                  const CustomerReview(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
