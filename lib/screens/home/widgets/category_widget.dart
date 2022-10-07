import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oranos_experts/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category, required this.margin});
  final Category category;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return category.name == ''
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(2)),
                margin: EdgeInsets.only(top: margin),
                width: 50,
                height: 6,
              ),
            ],
          )
        : Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 170, 236, 229)),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child:
                      SvgPicture.asset(category.image!, height: 50, width: 50),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(category.name!),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${category.experts} Experts',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
  }
}
