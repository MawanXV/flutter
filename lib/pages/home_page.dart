  // File: lib/pages/home_page.dart
  import 'package:flutter/material.dart';
  import '../widgets/category_card.dart';
  import '../widgets/info_card.dart';


  class HomePage extends StatelessWidget {
    const HomePage({super.key});

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
                child: Text(
                  'Jelajahi Berdasarkan Kategori',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              const CategoryCard(title: 'Alam', imagePath: 'assets/images/sutirta-budiman-DxmBSgUYKis-unsplash.jpg'),
              const CategoryCard(title: 'Sejarah', imagePath: 'assets/images/steffen-bertram-28joUilHigc-unsplash (1).jpg'),
              const CategoryCard(title: 'Budaya', imagePath: 'assets/images/saung-digital-zUigoVJBp80-unsplash (1).jpg'),
              const CategoryCard(title: 'Kuliner', imagePath: 'assets/images/mufid-majnun-uEmmhAMSUdU-unsplash.jpg'),

              const SizedBox(height: 32),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Tentang NusaGuide',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  '"Explore Nusantara" bersama NusaGuide, platform yang menghadirkan pengalaman wisata autentik melalui sentuhan budaya lokal dan pemandu terpercaya dari seluruh penjuru Indonesia.',
                  textAlign: TextAlign.center,
                ),
              ),

              const InfoCard(
                title: "Visi Kami",
                content: "Menjadi jembatan antara kekayaan budaya Indonesia dan wisatawan, dengan layanan pemandu lokal yang hangat dan profesional."
              ),
              const InfoCard(
                title: "Misi Kami",
                content: "• Menyajikan pengalaman wisata yang bermakna dan penuh nilai budaya.\n• Memberdayakan pemandu lokal di berbagai daerah Indonesia.\n• Menyediakan platform praktis untuk menemukan dan memesan tur dengan mudah."
              ),
              const InfoCard(
                title: "Tim Kami",
                content: "Andrian Kroco – Raja Scam\nGekal – Travel Strategist & Pendiri NusaGuide\nHafiz – Developer & Desainer UI/UX\nAndesmar – Enginer abal abal\nHimawan – Koordinator Komunitas Pemandu Lokal"
              ),

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
            'assets/images/melvin-tan-VO1EisKqdEE-unsplash.jpg',
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
                  'Petualangan Tak Terlupakan\nDimulai dari Sini – Temukan Destinasi Impianmu!',
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
