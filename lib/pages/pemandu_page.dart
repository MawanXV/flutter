// File: lib/pages/pemandu_page.dart
import 'package:flutter/material.dart';

class PemanduPage extends StatelessWidget {
  const PemanduPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NusaGuide'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Pilih Pemandu Wisata Terbaik untuk Perjalananmu',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
                child: const Text('Pesan Sekarang'),
              ),
              const SizedBox(height: 20),
              const GuideProfile(
                name: 'Andre',
                fullName: 'Andre Pratama',
                location: 'Yogyakarta',
                languages: 'Indonesia, Inggris, Jepang',
                experience: 'Sejak 2014',
                specialization: 'Wisata Sejarah, Trekking, Tour Budaya',
                certification: 'Sertifikat Pemandu Wisata Nasional',
                rating: '4.9/5 dari 112 wisatawan',
                testimonial:
                    '"Andre sangat ramah dan informatif, membuat trip kami jadi berkesan."',
              ),
              GuideProfile(
                name: 'Sarah',
                fullName: 'Sarah Lestari',
                location: 'Bandung',
                languages: 'Indonesia, Inggris',
                experience: '7 tahun',
                specialization: 'Wisata Kuliner, Hidden Gem Lokal',
                certification: 'Tour Guide Berlisensi Kota Bandung',
                rating: '4.8/5 dari 89 wisatawan',
                testimonial:
                    '"Sarah tahu tempat makan terenak yang gak ada di Google!"',
              ),
              GuideProfile(
                name: 'Budi',
                fullName: 'Budi Santosa',
                location: 'Samarinda',
                languages: 'Indonesia, Inggris',
                experience: '9 tahun',
                specialization: 'Wisata Hutan Hujan Tropis, Trekking',
                certification: 'Pemandu Ekowisata Bersertifikat',
                rating: '4.7/5 dari 73 wisatawan',
                testimonial:
                    '"Tur bersama Budi seperti belajar langsung dari ahli!"',
              ),
              GuideProfile(
                name: 'Karina',
                fullName: 'Karina Wijaya',
                location: 'Surabaya',
                languages: 'Indonesia, Inggris',
                experience: '6 tahun',
                specialization:
                    'Wisata Sejarah Kolonial, Arsitektur Heritage',
                certification: 'Sertifikasi Nasional Tour Organizer',
                rating: '4.9/5 dari 96 wisatawan',
                testimonial:
                    '"Karina sangat komunikatif dan selalu membuat itinerary fleksibel."',
              ),
              GuideProfile(
                name: 'Aalan',
                fullName: 'Aalan Mukti',
                location: 'Banda Aceh',
                languages: 'Indonesia, Arab, Inggris',
                experience: '8 tahun',
                specialization: 'Wisata Religi, Budaya Melayu',
                certification: 'Sertifikat Internasional Tour Guide',
                rating: '4.8/5 dari 81 wisatawan',
                testimonial:
                    '"Aalan sangat memahami adat & nilai lokal, perjalanan terasa bermakna."',
              ),
              GuideProfile(
                name: 'Siska',
                fullName: 'Siska Dewi',
                location: 'Denpasar',
                languages: 'Indonesia, Inggris, Korea',
                experience: '5 tahun',
                specialization:
                    'Wisata Kuliner Tradisional, Pasar Lokal',
                certification: 'Bali Culinary Tour License',
                rating: '4.9/5 dari 102 wisatawan',
                testimonial:
                    '"Siska tahu kuliner otentik yang bikin kami jatuh cinta sama Bali!"',
              ),
              GuideProfile(
                name: 'Chris',
                fullName: 'Chrisman Langi',
                location: 'Manado',
                languages: 'Indonesia, Inggris',
                experience: '10 tahun',
                specialization: 'Wisata Bahari & Sejarah Minahasa',
                certification: 'Dive Master Certified',
                rating: '5/5 dari 78 wisatawan',
                testimonial:
                    '"Chris selalu mengutamakan keselamatan dan sangat ramah!"',
              ),
              GuideProfile(
                name: 'Alexa',
                fullName: 'Alexa Gunawan',
                location: 'Jakarta',
                languages: 'Indonesia, Inggris',
                experience: '4 tahun',
                specialization: 'City Tour, Wisata Modern & Urban',
                certification: 'Guide Kota Bersertifikat DKI',
                rating: '4.7/5 dari 91 wisatawan',
                testimonial:
                    '"Alexa sangat ramah, cocok untuk tur keluarga dan anak-anak."',
              ),
              const SizedBox(height: 30),
              const Divider(),
              const Text(
                'NusaGuide',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                  'Menjelajahi keindahan Indonesia bersama pemandu lokal terpercaya.'),
              const SizedBox(height: 10),
              const Text('Email: info@nusaguide.com'),
              const Text('Telp: +62 812-3456-7890'),
              const Text('Alamat: Jambi, Indonesia'),
              const SizedBox(height: 10),
              const Text(
                '© 2025 NusaGuide. All rights reserved.',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GuideProfile extends StatelessWidget {
  final String name;
  final String fullName;
  final String location;
  final String languages;
  final String experience;
  final String specialization;
  final String certification;
  final String rating;
  final String testimonial;

  const GuideProfile({
    super.key,
    required this.name,
    required this.fullName,
    required this.location,
    required this.languages,
    required this.experience,
    required this.specialization,
    required this.certification,
    required this.rating,
    required this.testimonial,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text('Nama: $fullName'),
            Text('Panggilan: $name'),
            Text('Asal: $location'),
            Text('Bahasa: $languages'),
            Text('Pengalaman: $experience'),
            Text('Spesialisasi: $specialization'),
            Text('Sertifikasi: $certification'),
            Text('Rating: $rating'),
            const SizedBox(height: 6),
            Text(testimonial,
                style: const TextStyle(fontStyle: FontStyle.italic)),
          ],
        ),
      ),
    );
  }
}
