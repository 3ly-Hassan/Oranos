import 'package:flutter/material.dart';
import 'package:oranos_experts/models/expert_model.dart';

class ExpertItem extends StatelessWidget {
  const ExpertItem({super.key, required this.expert});
  final Expert expert;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Colors.grey, //New
              blurRadius: 5.0,
              offset: Offset(0, 2))
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.asset(
              expert.image!,
              fit: BoxFit.cover,
              height: 120,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    ),
                    Text(
                      ' (${expert.rate})',
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.favorite,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  expert.name!,
                  style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'SF',
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                Text(
                  expert.field!,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Facebook',
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
