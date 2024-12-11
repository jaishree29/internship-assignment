class Review {
  final String name;
  final String reviewText;
  final List<String>? images;
  final int likeCount;
  final String verifiedBuyerText;
  final String date;

  Review({
    required this.name,
    required this.reviewText,
    this.images,
    this.likeCount = 0,
    required this.verifiedBuyerText,
    required this.date,
  });
}
