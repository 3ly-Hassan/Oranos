import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    Key? key,
    required this.text,
    this.left = true,
  }) : super(key: key);
  final String text;
  final bool left;
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: left ? TextDirection.ltr : TextDirection.rtl,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: SvgPicture.asset(
              left ? 'assets/robot-icon.svg' : 'assets/check.svg'),
        ),
        const SizedBox(width: 10),
        Container(
          width: 260,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: left ? Colors.grey[200] : Colors.teal,
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'Facebook',
                fontSize: 16,
                color: left ? Colors.black : Colors.white),
          ),
        )
      ],
    );
  }
}
