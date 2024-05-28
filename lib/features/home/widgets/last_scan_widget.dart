import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';
import 'package:mobileapp_scabies/features/dashboard/provider/dashboard_provider.dart';
import 'package:provider/provider.dart';

class LastScanWidget extends StatelessWidget {
  const LastScanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.purpleColor,
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/bg-last-scan.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 26,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              'WELCOME TO CAT DIAGNOS SCANNER',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Provider.of<DashboardProvider>(context, listen: false)
                    .setSelectedIndex(context, 1);
              },
             child: const Text(
                'Baca lebih lanjut',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 48, 79, 116),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
