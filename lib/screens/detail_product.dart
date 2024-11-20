import 'package:flutter/material.dart';
import 'package:juragan_nelayan/models/product.dart';
// TODO: Impor drawer yang sudah dibuat sebelumnya
import 'package:juragan_nelayan/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class MoodEntryPageDetail extends StatefulWidget {
  const MoodEntryPageDetail({super.key, required this.todo});
  final String todo;

  @override
  State<MoodEntryPageDetail> createState() => _MoodEntryPageStateDetail();
}

class _MoodEntryPageStateDetail extends State<MoodEntryPageDetail> {
  Future<List<Product>> fetchMood(CookieRequest request, String data) async {
    // Correct the URL and ensure it ends with a trailing slash
    final response = await request.get('http://localhost:8000/json/$data/');
    // Decode the JSON response
    var responseData = response;

    // Convert JSON to a list of Product objects
    List<Product> listMood = [];
    for (var d in responseData) {
      if (d != null) {
        listMood.add(Product.fromJson(d));
      }
    }
    return listMood;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    final String data = widget.todo;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail id $data'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchMood(request, data),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                'Belum ada data mood pada Juragan Nelayan.',
                style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) => Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text('Id: ${snapshot.data![index].pk}'),
                    const SizedBox(height: 10),
                    Text('Nama: ${snapshot.data![index].fields.name}'),
                    const SizedBox(height: 10),
                    Text('Harga: ${snapshot.data![index].fields.price}'),
                    const SizedBox(height: 10),
                    Text(
                        'Deskripsi: ${snapshot.data![index].fields.description}'),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
