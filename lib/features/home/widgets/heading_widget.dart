import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat Datang cat lovers',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 158, 116, 188),
                ),
              ),
              Text(
                'SAYANGI KUCING ANDA!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
