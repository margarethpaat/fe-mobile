import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Management System Lab TI UNSRAT',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 20),

            // Banner
            Image.asset(
              'assets/banner.png',
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),

            // Kategori
            const Text(
              'Kategori >',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),

            // Grid Menu
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildCategoryItem(
                    context,
                    'assets/absensi.png',
                    'Absensi',
                    '/absensi',
                  ),
                  _buildCategoryItem(
                    context,
                    'assets/reservasi-ruangan.png',
                    'Reservasi Ruangan',
                    '/reservasi_ruangan',
                  ),
                  _buildCategoryItem(
                    context,
                    'assets/laporan-kerusakan.png',
                    'Laporan Kerusakan',
                    '/laporan_kerusakan',
                  ),
                  _buildCategoryItem(
                    context,
                    'assets/alat.png',
                    'Monitoring Alat',
                    '/monitoring_alat',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(Icons.person, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/notifikasi');
              },
              icon: const Icon(Icons.notifications, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(
      BuildContext context, String imagePath, String title, String route) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
