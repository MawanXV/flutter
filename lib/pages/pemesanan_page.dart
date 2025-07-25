import 'package:flutter/material.dart';

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
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
    imagePath: 'assets/images/leengamuk.jpg',
    bio: '5 tahun pengalaman. Bahasa: Indonesia, Inggris.',
    isSelected: selectedGuide == 'Hafiz',
    onPressed: () => setState(() => selectedGuide = 'Hafiz'),
  ),
  GuideCard(
    name: 'Andrian',
    imagePath: 'assets/images/leengamuk.jpg',
    bio: '3 tahun pengalaman. Bahasa: Indonesia.',
    isSelected: selectedGuide == 'Andrian',
    onPressed: () => setState(() => selectedGuide = 'Andrian'),
  ),
  GuideCard(
    name: 'Gekal',
    imagePath: 'assets/images/leengamuk.jpg',
    bio: '2 tahun pengalaman. Bahasa: Indonesia.',
    isSelected: selectedGuide == 'Gekal',
    onPressed: () => setState(() => selectedGuide = 'Gekal'),
  ),
  GuideCard(
    name: 'Himawan',
    imagePath: 'assets/images/leengamuk.jpg',
    bio: '4 tahun pengalaman. Bahasa: Indonesia, Inggris.',
    isSelected: selectedGuide == 'Himawan',
    onPressed: () => setState(() => selectedGuide = 'Himawan'),
  ),
  GuideCard(
    name: 'Raja',
    imagePath: 'assets/images/leengamuk.jpg',
    bio: '6 tahun pengalaman. Bahasa: Indonesia, Jepang.',
    isSelected: selectedGuide == 'Raja',
    onPressed: () => setState(() => selectedGuide = 'Raja'),
  ),
  GuideCard(
    name: 'Reja',
    imagePath: 'assets/images/leengamuk.jpg',
    bio: '5 tahun pengalaman. Bahasa: Inggris.',
    isSelected: selectedGuide == 'Reja',
    onPressed: () => setState(() => selectedGuide = 'Reja'),
  ),
  GuideCard(
    name: 'Ezlan',
    imagePath: 'assets/images/leengamuk.jpg',
    bio: '7 tahun pengalaman. Bahasa: Indonesia.',
    isSelected: selectedGuide == 'Ezlan',
    onPressed: () => setState(() => selectedGuide = 'Ezlan'),
  ),
  GuideCard(
    name: 'Andesmar',
    imagePath: 'assets/images/leengamuk.jpg',
    bio: '3 tahun pengalaman. Bahasa: Indonesia.',
    isSelected: selectedGuide == 'Andesmar',
    onPressed: () => setState(() => selectedGuide = 'Andesmar'),
  ),
],

            ),
          ),

          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Pilih Destinasi Wisata',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 8),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                CategoryCard(title: 'Raja Ampat', imagePath: 'assets/images/ridho-ibrahim-Q5dKAbRfPN0-unsplash.jpg',
                 isSelected: selectedCategory == 'Raja Ampat', onPressed: () => setState(() => selectedCategory = 'Raja Ampat')),
                CategoryCard(title: 'Gunung Bromo', imagePath: 'assets/images/azhar-galih-IFcmpsiuY3k-unsplash.jpg',
                 isSelected: selectedCategory == 'Gunung Bromo', onPressed: () => setState(() => selectedCategory = 'Gunung Bromo')),
                CategoryCard(title: 'Danau Toba', imagePath: 'assets/images/irfannur-diah-PquBsLA8tKM-unsplash.jpg',
                 isSelected: selectedCategory == 'Danau Toba', onPressed: () => setState(() => selectedCategory = 'Danau Toba')),
                CategoryCard(title: 'Kawah Ijen', imagePath: 'assets/images/maksym-ivashchenko-zP_lXqXJ-ew-unsplash.jpg',
                 isSelected: selectedCategory == 'Kawah Ijen', onPressed: () => setState(() => selectedCategory = 'Kawah Ijen')),
                CategoryCard(title: 'Candi Borobudur', imagePath: 'assets/images/mario-la-pergola-KTHA8H_qpOw-unsplash.jpg',
                 isSelected: selectedCategory == 'Candi Borobudur', onPressed: () => setState(() => selectedCategory = 'Candi Borobudur')),
                CategoryCard(title: 'Kota Tua', imagePath: 'assets/images/rifan-29-Yv8QVuRoXfQ-unsplash.jpg',
                 isSelected: selectedCategory == 'Kota Tua', onPressed: () => setState(() => selectedCategory = 'Kota Tua')),
                CategoryCard(title: 'Pulau Komodo', imagePath: 'assets/images/dennis-schmidt-0BP-4-Ct6RQ-unsplash.jpg',
                 isSelected: selectedCategory == 'Pulau Komodo', onPressed: () => setState(() => selectedCategory = 'Pulau Komodo')),
                CategoryCard(title: 'Tirta Gangga', imagePath: 'assets/images/liliia-heNgMZ_qecE-unsplash.jpg',
                 isSelected: selectedCategory == 'Tirta Gangga', onPressed: () => setState(() => selectedCategory = 'Tirta Gangga')),
                CategoryCard(title: 'Tana Toraja', imagePath: 'assets/images/fadhil-abhimantra-skUXpDTtiuU-unsplash.jpg',
                 isSelected: selectedCategory == 'Tana Toraja', onPressed: () => setState(() => selectedCategory = 'Tana Toraja')),
                CategoryCard(title: 'Pecenongan', imagePath: 'assets/images/pecenongan_pegipegicom-.jpg',
                 isSelected: selectedCategory == 'Pecenongan', onPressed: () => setState(() => selectedCategory = 'Pecenongan')),
                CategoryCard(title: 'Jalan Sabang', imagePath: 'assets/images/Strolling-around-Jalan-Sabang.png',
                 isSelected: selectedCategory == 'Jalan Sabang', onPressed: () => setState(() => selectedCategory = 'Jalan Sabang')),
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
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(decoration: const InputDecoration(labelText: 'Nama Lengkap', border: OutlineInputBorder())),
                const SizedBox(height: 12),
                TextFormField(decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder())),
                const SizedBox(height: 12),
                TextFormField(decoration: const InputDecoration(labelText: 'Nomor Telepon', border: OutlineInputBorder())),
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
                    onPressed: () {},
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

// CategoryCard
class CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback? onPressed;
  final bool isSelected;

  const CategoryCard({
    super.key,
    required this.title,
    required this.imagePath,
    this.onPressed,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 240,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.blueAccent : Colors.grey.shade300,
          width: isSelected ? 3 : 1,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              imagePath,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: isSelected ? Colors.blueAccent : Colors.black,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            ),
            child: const Text('Pilih'),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

// GuideCard
class GuideCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final String bio;
  final bool isSelected;
  final VoidCallback onPressed;

  const GuideCard({
    super.key,
    required this.name,
    required this.imagePath,
    required this.bio,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 260,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Colors.blueAccent : Colors.grey.shade300,
          width: isSelected ? 3 : 1,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              imagePath,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              bio,
              style: const TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: isSelected ? Colors.blueAccent : Colors.black,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            ),
            child: const Text('Pilih'),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

// InfoCard (jika tidak dipakai, boleh dihapus)
class InfoCard extends StatelessWidget {
  final String title;
  final String content;

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(content),
          ],
        ),
      ),
    );
  }
}
