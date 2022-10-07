import 'package:flutter/material.dart';
import 'package:oranos_experts/constants.dart';

class CategoriesCheck extends StatelessWidget {
  const CategoriesCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ...List.generate(
        5,
        (index) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundColor:
                    index == 1 || index == 4 ? Colors.teal : Colors.grey[200],
                child: index == 1 || index == 4
                    ? const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 16,
                      )
                    : null,
              ),
              const SizedBox(width: 5),
              Text(
                categories[index + 1].name!,
                style: const TextStyle(
                    fontFamily: 'Facebook', color: Colors.black),
              )
            ],
          ),
        ),
      ),
      const SizedBox(height: 10),
      Text(
        'Say Done, Or press Send to Apply',
        style: TextStyle(color: Colors.grey[400], fontSize: 18),
      )
    ]);
  }
}
