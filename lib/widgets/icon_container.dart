import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconContainer extends StatelessWidget {
  final double size;

  const IconContainer({Key? key, required this.size})
      : assert(size > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(this.size * .15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 25,
            offset: Offset(0, 15),
          ),
        ],
      ),
      padding: EdgeInsets.all(this.size * .15),
      width: this.size,
      height: this.size,
      child: Center(
        child: SvgPicture.asset(
          'assets/icon.svg',
          width: this.size * .6,
          height: this.size * .6,
        ),
      ),
    );
  }
}
