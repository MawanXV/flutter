import 'package:flutter/material.dart';
import '../components/category_card.dart';
import '../components/guide_card.dart';


class PemesananPage extends StatefulWidget {
  const PemesananPage({super.key});

  @override
  State<PemesananPage> createState() => _PemesananPageState();
}

class _PemesananPageState extends State<PemesananPage> {
  String? selectedGuide;
  String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pemesanan'),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 16),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Pilih Pemandu Wisata',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 8),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                GuideCard(
                  name: 'Hafiz',
                  imagePath: 'assets/images/hafiz.jpg',
                  bio: '5 tahun pengalaman. Bahasa: Indonesia, Inggris.',
                  isSelected: selectedGuide == 'Hafiz',
                  onPressed: () {
                    setState(() {
                      selectedGuide = 'Hafiz';
                    });
                  },
                ),
                GuideCard(
                  name: 'Andrian',
                  imagePath: 'assets/images/andrian.jpg',
                  bio: '3 tahun pengalaman. Bahasa: Indonesia.',
                  isSelected: selectedGuide == 'Andrian',
                  onPressed: () {
                    setState(() {
                      selectedGuide = 'Andrian';
                    });
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Pilih Destinasi Wisata',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 8),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                CategoryCard(
                  title: 'Alam',
                  imagePath: 'assets/images/sutirta-budiman-DxmBSgUYKis-unsplash.jpg',
                  isSelected: selectedCategory == 'Alam',
                  onTap: () {
                    setState(() {
                      selectedCategory = 'Alam';
                    });
                  },
                ),
                CategoryCard(
                  title: 'Sejarah',
                  imagePath: 'assets/images/steffen-bertram-28joUilHigc-unsplash (1).jpg',
                  isSelected: selectedCategory == 'Sejarah',
                  onTap: () {
                    setState(() {
                      selectedCategory = 'Sejarah';
                    });
                  },
                ),
                CategoryCard(
                  title: 'Budaya',
                  imagePath: 'assets/images/saung-digital-zUigoVJBp80-unsplash (1).jpg',
                  isSelected: selectedCategory == 'Budaya',
                  onTap: () {
                    setState(() {
                      selectedCategory = 'Budaya';
                    });
                  },
                ),
                CategoryCard(
                  title: 'Kuliner',
                  imagePath: 'assets/images/mufid-majnun-uEmmhAMSUdU-unsplash.jpg',
                  isSelected: selectedCategory == 'Kuliner',
                  onTap: () {
                    setState(() {
                      selectedCategory = 'Kuliner';
                    });
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 32),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Formulir Pemesanan',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Nama Lengkap',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Nomor Telepon',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Pemandu yang Dipilih',
                    border: const OutlineInputBorder(),
                    hintText: selectedGuide ?? 'Belum dipilih',
                  ),
                  readOnly: true,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Destinasi yang Dipilih',
                    border: const OutlineInputBorder(),
                    hintText: selectedCategory ?? 'Belum dipilih',
                  ),
                  readOnly: true,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Tambahkan logika pemesanan
                    },
                    child: const Text('Kirim Pemesanan'),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
