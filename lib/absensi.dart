import 'package:flutter/material.dart';

class AbsensiPage extends StatelessWidget {
  const AbsensiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Absensi',
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
            // Judul Scan
            const Center(
              child: Text(
                'SCAN',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // QR Code
            Center(
              child: Image.asset(
                'assets/qrcode.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 30),

            // Riwayat Absensi
            const Text(
              'Riwayat Absensi:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // List Riwayat
            _buildAttendanceItem('Lisoy', 'Jun 10, 2024 9:41 AM'),
            const SizedBox(height: 10),
            _buildAttendanceItem('Lisoy', 'Jun 11, 2024 9:42 AM'),
            const SizedBox(height: 10),
            _buildAttendanceItem('Lisoy', 'Jun 12, 2024 9:43 AM'),
          ],
        ),
      ),
    );
  }

  // Widget untuk item riwayat absensi
  Widget _buildAttendanceItem(String name, String dateTime) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Icon L
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Center(
            child: Text(
              'L',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),

        // Nama
        Expanded(
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // Tanggal dan Waktu
        Text(
          dateTime,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
