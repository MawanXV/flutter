// File: lib/pages/home_page.dart
import 'package:flutter/material.dart';
import '../widgets/category_card.dart';

class DestinasiPage extends StatelessWidget {
  const DestinasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildHeroSection(),
            const SizedBox(height: 32),

            const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
             alignment: Alignment.center,
              child: Text(
               'Wisata Alam',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 16),
            const CategoryCard(title: 'Raja Ampat', imagePath: 'assets/images/ridho-ibrahim-Q5dKAbRfPN0-unsplash.jpg'),
            const CategoryCard(title: 'Gunung Bromo', imagePath: 'assets/images/azhar-galih-IFcmpsiuY3k-unsplash.jpg'),
            const CategoryCard(title: 'Danau Toba', imagePath: 'assets/images/irfannur-diah-PquBsLA8tKM-unsplash.jpg'),
            const CategoryCard(title: 'Kawah Ijen', imagePath: 'assets/images/maksym-ivashchenko-zP_lXqXJ-ew-unsplash.jpg'),

            const SizedBox(height: 32),

            const SizedBox(height: 32),

            const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
             alignment: Alignment.center,
              child: Text(
               'Wisata Sejarah',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 16),
            const CategoryCard(title: 'Candi Borobudur', imagePath: 'assets/images/mario-la-pergola-KTHA8H_qpOw-unsplash.jpg'),
            const CategoryCard(title: 'Candi Prambanan', imagePath: 'assets/images/wendy-winarno-timeiBVLB8E-unsplash.jpg'),
            const CategoryCard(title: 'Kota Tua', imagePath: 'assets/images/rifan-29-Yv8QVuRoXfQ-unsplash.jpg'),
            const CategoryCard(title: 'Pulau Komodo', imagePath: 'assets/images/dennis-schmidt-0BP-4-Ct6RQ-unsplash.jpg'),

            const SizedBox(height: 32),

            const SizedBox(height: 32),

            const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
             alignment: Alignment.center,
              child: Text(
               'Wisata Budaya',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 16),
            const CategoryCard(title: 'Tirta Gangga', imagePath: 'assets/images/liliia-heNgMZ_qecE-unsplash.jpg'),
            const CategoryCard(title: 'Tana Toraja', imagePath: 'assets/images/fadhil-abhimantra-skUXpDTtiuU-unsplash.jpg'),

            const SizedBox(height: 32),

            const SizedBox(height: 32),

            const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
             alignment: Alignment.center,
              child: Text(
               'Wisata Kuliner',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 16),
            const CategoryCard(title: 'Pecenongan', imagePath: 'assets/images/pecenongan_pegipegicom-.jpg'),
            const CategoryCard(title: 'Jalan Sabang', imagePath: 'assets/images/Strolling-around-Jalan-Sabang.png'),

            const SizedBox(height: 32),

            

            const SizedBox(height: 32),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/ernests-vaga-u8n_Ud67QDo-unsplash.jpg',
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          height: 400,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [
                Colors.black.withAlpha((0.6 * 255).toInt()),
                Colors.transparent,
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sudah Temukan Destinasi Impianmu?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                onPressed: () {},
                child: const Text('Temukan Sekarang'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFooter() {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'NusaGuide',
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            'Menjelajahi keindahan Indonesia bersama pemandu lokal terpercaya.',
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 16),
          Text(
            'Menu:\n• Beranda\n• Destinasi',
            style: TextStyle(color: Colors.white70),
          ),
          SizedBox(height: 16),
          Text(
            'Kontak:\nEmail: info@nusaguide.com\nTelp: +62 812-3456-7890',
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
