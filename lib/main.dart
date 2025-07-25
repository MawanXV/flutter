import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/destinasi_page.dart';
import 'pages/pemesanan_page.dart';
import 'pages/pemandu_page.dart';
import 'pages/tentang_page.dart';

void main() {
  runApp(const NusaGuideApp());
}

class NusaGuideApp extends StatelessWidget {
  const NusaGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NusaGuide',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    DestinasiPage(),
    PemesananPage(),
    PemanduPage(),
    TentangPage(),
  ];

  final List<String> _titles = [
    'Beranda',
    'Destinasi',
    'Pemesanan',
    'Pemandu',
    'Tentang',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        centerTitle: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Destinasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Pemesanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Pemandu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Tentang',
          ),
        ],
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/destinasi_page.dart';
import 'pages/pemesanan_page.dart';
import 'pages/pemandu_page.dart';
import 'pages/tentang_page.dart';

void main() {
  runApp(const NusaGuideApp());
}

class NusaGuideApp extends StatelessWidget {
  const NusaGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NusaGuide',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    DestinasiPage(),
    PemesananPage(),
    PemanduPage(),
    TentangPage(),
  ];

  final List<String> _titles = [
    'Beranda',
    'Destinasi',
    'Pemesanan',
    'Pemandu',
    'Tentang',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        centerTitle: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Destinasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Pemesanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Pemandu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Tentang',
          ),
        ],
      ),
    );
  }
}
>>>>>>> d824db261ad198b8b9f4213f0690f9730602deab
