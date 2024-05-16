import 'package:flutter/material.dart';
import 'package:mobileapp_scabies/core/constants/colors.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/scabies.jpg',
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 16,
                  top: 40,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.brandColor.withOpacity(0.5),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 16,
                  top: 40,
                  child: Container(
                    width: 40, // Sesuaikan dengan kebutuhan ukuran lingkaran
                    height: 40, // Sesuaikan dengan kebutuhan ukuran lingkaran
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.brandColor.withOpacity(0.5),
                    ),
                    child: IconButton(
                      onPressed: () {
                        _showFullScreenImage(
                            context, 'assets/images/jamur.jpg');
                      },
                      icon: const Icon(
                        Icons.zoom_in,
                        color: Colors
                            .white, // Ganti dengan warna ikon yang diinginkan
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sunday, 7 January 2024',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.graySecondColor,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Penyakit scabies pada kucing',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Infeksi kulit oleh tungau Sarcoptes scabiei, menyebabkan gatal-gatal parah, rambut rontok, dan kulit kemerahan. Sangat menular ke hewan lain dan manusia.',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showFullScreenImage(BuildContext context, String image) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.all(0),
        backgroundColor: Colors.transparent,
        content: SizedBox(
          width: 400,
          height: MediaQuery.of(context).size.width * 0.8,
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors
                          .black12, // Ganti dengan warna latar belakang yang diinginkan
                      shape: BoxShape.circle,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
