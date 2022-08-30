import 'package:flutter/material.dart';

class PageViewIndicator extends StatelessWidget {
  const PageViewIndicator({
    Key? key,
    required this.isCurrentPage,
  }) : super(key: key);

  final bool isCurrentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: isCurrentPage ? 20 : 6,
      decoration: BoxDecoration(
        color: isCurrentPage ? Color(0xffFF7750) : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
