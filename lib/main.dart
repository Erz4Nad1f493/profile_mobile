import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Profile Erza Nadifa',
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(24),
            constraints: const BoxConstraints(maxWidth: 700),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    "image/WhatsApp Image 2025-09-19 at 21.36.49.jpeg",
                  ),
                ),
                const SizedBox(height: 20),

                // Judul
                const Text(
                  "Profil Mahasiswa",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),

                // Informasi Personal
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Informasi Personal:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                infoItem("Nama", "Erza Nadifa"),
                infoItem("NIM", "2309106093"),
                infoItem("Tempat, Tanggal Lahir", "Berau, 03-09-2005"),
                infoItem("Hobi", "Nonton"),
                infoItem("Email", "ersaberau@gamil.com"),
                infoItem("No. HP", "0821-4973-7548"),

                const SizedBox(height: 30),

                // Motto Hidup
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Motto Hidup:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "\"grow with the flow\"",
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget kecil untuk menampilkan data (judul + isi)
Widget infoItem(String title, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      children: [
        SizedBox(
          width: 180,
          child: Text(
            "$title:",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Text(value),
        ),
      ],
    ),
  );
}
