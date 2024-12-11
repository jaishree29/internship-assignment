import 'package:e_comm_demo/models/grid_item.dart';
import 'package:e_comm_demo/widgets/grid_item_card.dart';
import 'package:flutter/material.dart';
import 'package:e_comm_demo/utils/sizes.dart';

class ImageGridSection extends StatelessWidget {
  final List<GridItem> items;

  const ImageGridSection({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, 
        crossAxisSpacing: DSizes.defaultSpace(context),
        mainAxisSpacing: DSizes.defaultSpace(context),
        childAspectRatio: 0.7,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return GridItemCard(item: item);
      },
    );
  }
}
