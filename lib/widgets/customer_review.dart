import 'package:e_comm_demo/utils/image_strings.dart';
import 'package:e_comm_demo/utils/sizes.dart';
import 'package:e_comm_demo/widgets/review_item.dart';
import 'package:e_comm_demo/widgets/review_modal.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerReview extends StatelessWidget {
  const CustomerReview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Review> reviews = [
      Review(
        name: 'Sofia',
        reviewText:
            'Ut aliquet venenatis elit, at condimentum mi bibendum non. Sed vitae dui quis neque fermentum tincidunt. Quisque id aliquam magna. Proin sit amet sagittis sem...',
        images: [DImages.dressImage_3, DImages.dressImage_6],
        likeCount: 4,
        verifiedBuyerText: 'Verified Buyer, 20th July, 2024',
        date: '20th July, 2024',
      ),
      Review(
        name: 'Sofia',
        reviewText:
            'Ut aliquet venenatis elit, at condimentum mi bibendum non. Sed vitae dui quis neque fermentum tincidunt. Quisque id aliquam magna. Proin sit amet sagittis sem...',
        likeCount: 4,
        verifiedBuyerText: 'Verified Buyer, 20th July, 2024',
        date: '20th July, 2024',
      ),
      Review(
        name: 'Sofia',
        reviewText:
            'Ut aliquet venenatis elit, at condimentum mi bibendum non. Sed vitae dui quis neque fermentum tincidunt. Quisque id aliquam magna. Proin sit amet sagittis sem...',
        likeCount: 4,
        verifiedBuyerText: 'Verified Buyer, 20th July, 2024',
        date: '20th July, 2024',
      ),
      
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Customer Reviews(${reviews.length})',
          style: GoogleFonts.poppins(
            fontSize: DSizes.fontSizeMd(context),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: DSizes.spaceBtwSections(context)),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: DSizes.smallPadding(context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                reviews.map((review) => ReviewItem(review: review)).toList(),
          ),
        ),
      ],
    );
  }
}
