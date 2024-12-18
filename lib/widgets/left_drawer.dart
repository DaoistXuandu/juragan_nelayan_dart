import 'package:flutter/material.dart';
import 'package:juragan_nelayan/screens/list_product.dart';
import 'package:juragan_nelayan/screens/menu.dart';
// TODO: Impor halaman MoodEntryFormPage jika sudah dibuat
import 'package:juragan_nelayan/screens/moodentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            // TODO: Bagian drawer header
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Juragan Nelayan',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text(
                  "Lihat data ikanmu!",
                  // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                  textAlign: TextAlign.center, // Center alignment
                  style: TextStyle(
                    fontSize: 15, // Font size 15
                    color: Colors.white, // White color
                    fontWeight: FontWeight.normal, // Normal font weight
                  ),
                ),
              ],
            ),
          ),
          // TODO: Bagian routing
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.mood),
            title: const Text('Tambah Item'),
            // Bagian redirection ke MoodEntryFormPage
            onTap: () {
              /*
                TODO: Buatlah routing ke MoodEntryFormPage di sini,
                setelah halaman MoodEntryFormPage sudah dibuat.
                */
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MoodEntryFormPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_reaction_rounded),
            title: const Text('Daftar Product'),
            onTap: () {
              // Route menu ke halaman mood
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MoodEntryPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
