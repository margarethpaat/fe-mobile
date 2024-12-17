import 'package:flutter/material.dart';

class MonitoringAlatPage extends StatelessWidget {
  const MonitoringAlatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Monitoring Alat',
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

            // Card with title
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Daftar Alat',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),

                    // List of items
                    _buildListItem(
                      context,
                      'Komputer',
                      'Baik',
                      Icons.star,
                      Colors.green,
                    ),
                    _buildListItem(
                      context,
                      'Keyboard',
                      'Rusak',
                      Icons.star,
                      Colors.red,
                    ),
                    _buildListItem(
                      context,
                      'Print 3D',
                      'Perlu Perbaikan',
                      Icons.star,
                      Colors.orange,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // Bottom Pinjam Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/reservasi_ruangan'); // Navigasi ke halaman reservasi_ruangan.dart
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: const Text(
              'Pinjam',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Method for building list item
  Widget _buildListItem(
      BuildContext context,
      String title,
      String status,
      IconData icon,
      Color iconColor,
      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: iconColor),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                status,
                style: TextStyle(
                  fontSize: 14,
                  color: iconColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
