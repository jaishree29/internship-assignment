import 'package:e_comm_demo/widgets/color_button.dart';
import 'package:flutter/material.dart';

class ColorAndSizeSelector extends StatefulWidget {
  const ColorAndSizeSelector({super.key});

  @override
  State<ColorAndSizeSelector> createState() => _ColorAndSizeSelectorState();
}

class _ColorAndSizeSelectorState extends State<ColorAndSizeSelector> {
  Color? selectedColor;
  String selectedSize = "";
  final List<String> sizes = ['XS', 'S', 'M', 'L', 'XL'];
  final String unavailableSize = 'M';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Color Heading 
        Row(
          children: [
            const Text("COLOR: ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(
              selectedColor == Colors.pink
                  ? "Persian Rose"
                  : selectedColor == Colors.black
                      ? "Black"
                      : "None",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 16),
    
        // Color Selection
        Row(
          children: [
            ColorButton(
              color: Colors.pink,
              isSelected: selectedColor == Colors.pink,
              onTap: () => setState(() => selectedColor = Colors.pink),
            ),
            const SizedBox(width: 16),
            ColorButton(
              color: Colors.black,
              isSelected: selectedColor == Colors.black,
              onTap: () => setState(() => selectedColor = Colors.black),
            ),
          ],
        ),
        const SizedBox(height: 24),
    
        // Size Heading
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("SIZE: ${selectedSize.isEmpty ? "None" : selectedSize}",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16)),
            const Text("SIZE GUIDE",
                style: TextStyle(color: Colors.blue, fontSize: 16)),
          ],
        ),
        const SizedBox(height: 16),
    
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
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: isUnavailable ? Colors.grey : Colors.transparent,
                  border: Border.all(
                    color: isSelected ? Colors.black : Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
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
        const SizedBox(height: 24),
    
        const Divider(thickness: 1, color: Colors.grey),
      ],
    );
  }
}
