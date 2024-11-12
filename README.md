# PBP E - 2306152506 - Juragan Nelayan

## Tugas 7
### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Dalam Flutter, terdapat dua jenis widget utama: `StatelessWidget` dan `StatefulWidget`. `StatelessWidget` adalah widget yang tidak memiliki state, sehingga tampilannya bersifat tetap dan tidak berubah setelah dibuat. Karena tidak bergantung pada data yang dapat berubah atau interaksi pengguna, `StatelessWidget` cocok digunakan untuk menampilkan elemen statis seperti teks, gambar, atau layout yang tidak berubah. Contohnya, jika Anda ingin menampilkan teks atau gambar yang tidak akan berubah saat aplikasi berjalan, Anda dapat menggunakan `StatelessWidget`.

Sebaliknya, `StatefulWidget` adalah widget yang memiliki state yang bisa berubah, baik karena adanya interaksi pengguna, perubahan data, atau peristiwa lainnya. Dalam `StatefulWidget`, ada dua bagian penting, yaitu widget utama dan `State`. `State` adalah tempat menyimpan data atau status yang dapat berubah, sementara widget utama hanya digunakan untuk menampung `State`. `StatefulWidget` sangat berguna untuk elemen yang memerlukan perubahan tampilan berdasarkan input pengguna atau data dinamis, seperti tombol yang menambah angka ketika ditekan, input teks, atau animasi yang beradaptasi. Setiap kali `State` diubah, Flutter akan melakukan rebuild terhadap widget tersebut, sehingga perubahan tampilan bisa langsung terlihat di layar.

Secara singkat, `StatelessWidget` digunakan untuk elemen statis tanpa perubahan state, sedangkan `StatefulWidget` digunakan untuk elemen dinamis yang memerlukan pembaruan tampilan.

### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Berikut adalah penjelasan mengenai widget yang digunakan dalam proyek ini beserta fungsinya:

1. **MaterialApp**
   - `MaterialApp` adalah widget dasar yang membungkus aplikasi Flutter dan mengatur tema, rute, serta elemen-elemen dasar dari aplikasi berbasis Material Design. Dalam proyek ini, `MaterialApp` digunakan untuk menentukan judul aplikasi, skema warna, dan mendefinisikan widget `home`, yang menjadi titik awal tampilan aplikasi (`MyHomePage`).

2. **Scaffold**
   - `Scaffold` adalah widget yang menyediakan struktur dasar halaman dengan berbagai elemen dasar seperti `AppBar`, `body`, `drawer`, dan lainnya. `Scaffold` memudahkan dalam membuat layout halaman yang terstruktur, dengan area tertentu untuk AppBar dan konten utama. Dalam proyek ini, `Scaffold` digunakan di dalam `MyHomePage` untuk membangun tampilan halaman utama aplikasi dengan judul di `AppBar` dan konten di `body`.

3. **AppBar**
   - `AppBar` adalah widget yang berada di bagian atas halaman dan berfungsi sebagai judul atau header dari sebuah layar. Dalam proyek ini, `AppBar` digunakan untuk menampilkan teks "Juragan Nelayan" sebagai judul aplikasi, dengan latar belakang berwarna yang diambil dari skema warna aplikasi (`primaryColor`).

4. **Padding**
   - `Padding` adalah widget yang memberikan jarak di sekitar child-nya. Dalam proyek ini, `Padding` digunakan di beberapa tempat untuk memberikan jarak di sekitar konten, seperti pada `body` halaman utama dan beberapa elemen teks, agar tampilan terlihat lebih rapi.

5. **Column**
   - `Column` adalah widget yang menyusun elemen-elemen secara vertikal. Digunakan di berbagai bagian proyek ini untuk menyusun item-item seperti `InfoCard` dan `ItemCard` secara vertikal di layar.

6. **Row**
   - `Row` adalah widget yang menyusun elemen-elemen secara horizontal. Di proyek ini, `Row` digunakan untuk menampilkan beberapa `InfoCard` dalam satu baris secara sejajar, seperti `NPM`, `Name`, dan `Class`.

7. **SizedBox**
   - `SizedBox` adalah widget yang berfungsi untuk memberi jarak atau ruang antara widget lain. Pada proyek ini, `SizedBox` digunakan untuk memberikan jarak vertikal antara elemen `InfoCard` dan teks "Welcome to Juragan Nelayan".

8. **Center**
   - `Center` adalah widget yang memposisikan child-nya di tengah layar. Di proyek ini, `Center` digunakan untuk memusatkan teks dan elemen-elemen lain agar terlihat simetris di layar.

9. **GridView**
   - `GridView` adalah widget yang menyusun elemen-elemen dalam bentuk grid atau tabel. Dalam proyek ini, `GridView.count` digunakan untuk menampilkan daftar `ItemCard` dalam format grid dengan tiga kolom (`crossAxisCount: 3`).

10. **Card**
    - `Card` adalah widget yang memberikan tampilan kotak dengan bayangan di bawahnya, sering digunakan untuk membungkus informasi agar terlihat seperti kartu informasi. Di proyek ini, `Card` digunakan untuk membungkus `InfoCard`, seperti `NPM`, `Name`, dan `Class`, agar terlihat terorganisir dan menarik.

11. **MediaQuery**
    - `MediaQuery` adalah widget yang menyediakan informasi tentang ukuran layar dan orientasi perangkat. Dalam proyek ini, `MediaQuery.of(context).size.width / 3.5` digunakan untuk menentukan lebar setiap kartu informasi (`InfoCard`) agar sesuai dengan lebar layar perangkat.

12. **Text**
    - `Text` adalah widget yang digunakan untuk menampilkan teks pada layar. Dalam proyek ini, `Text` digunakan untuk menampilkan berbagai informasi seperti judul, konten kartu (`InfoCard`), dan nama tombol (`ItemCard`).

13. **Icon**
    - `Icon` adalah widget untuk menampilkan ikon dari kumpulan ikon standar yang disediakan oleh Flutter, seperti `Icons.mood`, `Icons.add`, dan `Icons.logout`. Dalam proyek ini, `Icon` digunakan di setiap `ItemCard` untuk menunjukkan ikon yang relevan dengan item tersebut.

14. **Material**
    - `Material` adalah widget yang membungkus elemen dan memberikan tampilan berbasis Material Design dengan kemampuan efek ripple dan lainnya. Dalam proyek ini, `Material` membungkus `ItemCard` agar dapat memiliki efek ripple saat diklik.

15. **InkWell**
    - `InkWell` adalah widget yang memungkinkan elemen untuk memiliki efek klik, seperti efek ripple. Di proyek ini, `InkWell` digunakan untuk membungkus `ItemCard`, sehingga setiap item akan menampilkan efek ripple saat ditekan, menambah pengalaman interaksi yang menarik.

16. **SnackBar**
    - `SnackBar` adalah widget yang menampilkan pesan sementara di bagian bawah layar. Di proyek ini, `SnackBar` digunakan untuk menampilkan pesan saat pengguna menekan salah satu item dalam `ItemCard`, sebagai konfirmasi bahwa item telah diklik.


### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi `setState()` dalam Flutter adalah untuk memberi tahu framework bahwa terdapat perubahan pada state dari sebuah `StatefulWidget` yang memerlukan pembaruan tampilan (UI). Ketika `setState()` dipanggil, Flutter menandai widget tersebut sebagai perlu di-*rebuild* dan akan melakukan *rebuild* terhadap widget tersebut beserta widget anaknya pada frame berikutnya. Hal ini memungkinkan setiap perubahan data atau variabel dalam `State` yang terkait dengan UI untuk secara otomatis tercermin dalam tampilan, menjaga sinkronisasi antara data aplikasi dan antarmuka pengguna. Dengan menggunakan `setState()`, kita dapat dengan mudah mengontrol perubahan UI secara dinamis, misalnya ketika data berubah atau ada interaksi pengguna yang mengharuskan tampilan diperbarui.

Variabel yang terdampak oleh `setState()` umumnya adalah variabel yang berada dalam kelas `State` dan memengaruhi UI, seperti variabel angka, string, boolean, atau struktur data seperti list dan map. Misalnya, variabel `int counter` yang menyimpan nilai penghitung bisa di-update dengan `setState()` setiap kali pengguna menekan tombol, sehingga nilai baru dari `counter` langsung tampil di layar. Selain itu, variabel boolean yang mengontrol visibilitas elemen juga sering digunakan dengan `setState()` untuk menyembunyikan atau menampilkan elemen tertentu pada UI. Jika kita memiliki variabel list atau map yang memuat data dinamis, penambahan atau penghapusan item dalam `setState()` akan memperbarui UI yang menampilkan data tersebut. Pada dasarnya, `setState()` mempengaruhi semua variabel dalam `State` yang berhubungan dengan UI, dan perlu dipanggil setiap kali ada perubahan yang ingin ditampilkan ulang di layar.

### Jelaskan perbedaan antara const dengan final.
Perbedaan utama antara `const` dan `final` di Dart terletak pada waktu penentuan nilai mereka dan bagaimana mereka digunakan untuk deklarasi variabel yang tidak bisa diubah. 

Variabel yang dideklarasikan dengan `final` hanya dapat diinisialisasi satu kali, tetapi nilai tersebut bisa ditentukan saat *runtime* (waktu eksekusi). Sebaliknya, `const` digunakan untuk nilai yang sudah diketahui dan tetap (konstan) saat *compile-time* (waktu kompilasi), yang berarti nilai tersebut harus bersifat statis dan tidak bergantung pada kondisi apapun di *runtime*. Dengan `const`, kita bisa memastikan bahwa variabel selalu memiliki nilai konstan yang tidak berubah sepanjang aplikasi, seperti angka tetap atau string tertentu yang tidak bergantung pada operasi apapun. Perbedaan lainnya adalah bahwa `const` juga dapat digunakan untuk membuat *constant objects* atau objek konstan, seperti list atau map yang tidak akan diubah atau ditambahkan elemennya setelah dibuat.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
#### Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
Untuk melakukan ini pada terminal saya menulis
```
flutter create juragan_nelayan
```
dengan juragan_nelayan adalah nama aplikasi yang saya buat


####  Membuat tiga tombol sederhana dengan ikon dan teks untuk melihat, tambah dan logout:
Untuk mengimplementasikan hal ini pertama - tama saya merubah tatanan pada berkas main.dart yang sebelumnya stateful menjadi stateless, lalu saya membuat suatu berkas baru bernama menu.dart yang mana akan di-_import_ oleh berkas main.dart.

Lalu pada berkas tersebut saya membuat suatu class myHomePage yang mana merupakan class default yang telah ada pada inisiasi aplikasi namun dimigrasi dari stateful menjadi stateless. Lalu pada class tersebut saya tambah kan inisiasi suatu List dari class ItemHomePage yang mana merupakan class yang berisi data-data dari button. Lalu menggunakan widget GridView saya melakukan iterasi semua data pada list yang telah dibuat dan menaruh semua UI dari ItemCard. Di mana ItemCard akan membuat suatu tampilan UI menggunakan beberapa fungsi dan widget sehingga terbentuk suatu `button` yang dapat ditekan dan memiliki data ikon dan teks.

#### Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).
Untuk mengimplementasikan hal tersebut saya mengubah sedikit apa yang ada pada tutorial dimana class ItemHomePage saya tambahkan suatu data baru yakni `color` dimana berisi warna latar belakang tiap tombol. Di mana akan terdefinisikan pada line ini
```
color: item.color,
```
sehingga warna tiap `button` akan berbeda sesuai inisialisasi warna tiap `button`

#### Memunculkan Snackbar dengan tulisan: "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan, "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan, "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.
Untuk mengimplementasikan hal tersebut saya menggunakan fungsi onTap yang mana berisi sebagai berikut
```
ScaffoldMessenger.of(context)
..hideCurrentSnackBar()
..showSnackBar(
    SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
);
```
dimana sesuai dengan `button` yang ditekan akan ditampilkan informasi yang relevan.

## Tugas 8
### Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Dalam Flutter, `const` digunakan untuk mendefinisikan widget atau objek yang bersifat konstan atau tidak akan berubah setelah diciptakan. Keuntungan utama menggunakan `const` adalah efisiensi memori dan performa, karena Flutter hanya akan membuat satu instance dari objek `const` yang sama sehingga mengurangi alokasi memori. Widget yang bersifat `const` juga tidak perlu di-render ulang saat aplikasi mengalami perubahan state, sehingga aplikasi berjalan lebih efisien.

Waktu yang tepat untuk menggunakan `const` adalah pada objek atau widget yang nilainya tetap, seperti teks statis, ikon, atau padding yang tidak akan berubah. Sehingga, apabila terdapat widget yang bergantung pada data atau state dinamis bukanlah implementasi yang baik untuk menggunakan `const`, karena ini akan menyebabkan error atau masalah rendering. Dengan menggunakan `const` secara tepat, aplikasi dapat berjalan lebih efisien dan responsif.

### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

Dalam Flutter, Column dan Row adalah widget layout yang digunakan untuk menyusun widget lain secara berurutan. Keduanya memiliki fungsi yang mirip namun dengan arah yang berbeda: Column menyusun widget secara vertikal (dari atas ke bawah), sementara Row menyusun widget secara horizontal (dari kiri ke kanan). Baik Column maupun Row dapat digunakan untuk mengatur tata letak widget dalam aplikasi dengan cara yang fleksibel dan responsif.

Contoh penggunaan Row dapat terlihat di tugas 8 pada kode ini
```
   Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),
```

Contoh penggunaan Column dapat terlihat di tugas 8 pada kode ini
```
Column(
   // Menyusun ikon dan teks di tengah kartu.
   mainAxisAlignment: MainAxisAlignment.center,
   children: [
      Icon(
      item.icon,
      color: Colors.white,
      size: 30.0,
      ),
      const Padding(padding: EdgeInsets.all(3)),
      Text(
      item.name,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.white),
      ),
   ],
),
```

### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Pada berkas `moodentry_form.dary` pada tugas 8, elemen input yang digunakan adalah:

1. TextFormField
2. ElevatedButton (Asumsi bahwa tombol merupakan input 'tekan' dari user)

Elemen Input Flutter Lain yang Tidak Digunakan:
1. TextField
2. DropdownButtonFormField
3. Checkbox
4. Switch
5. Radio
6. Slider
7. DatePicker
8. TimePicker
9. RangeSlider
10. Autocomplete
11. Stepper
12. Slider Adaptive
13. CupertinoTextField
14. CupertinoSwitch
15. File Picker
16. ImagePicker

### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Pengaturan tema yang konsisten untuk seluruh aplikasi dilakukan menggunakan widget ThemeData pada root aplikasi, umumnya dalam widget MaterialApp. Dengan mendefinisikan warna, gaya teks, dan parameter lainnya di ThemeData, kita dapat memastikan tampilan yang seragam pada semua bagian aplikasi. Tema dapat diterapkan dengan mendefinisikan primaryColor, colorScheme, textTheme, dan berbagai parameter lain untuk mendefinisikan elemen UI seperti AppBar, tombol, dan input field.

Pada tugas ini hal ini dapat terlihat pada potongan kode berikut:
```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
```

###  Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

- Membuat widget left drawer pada berkas lib/widgets/left_drawer.dart Dimana memuat routing untuk ke halaman utama dan juga ke halaman tambah item
```
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
        ],
      ),
    );
  }
}
```
- Membuat berkas `moodentry_form.dart` yang mana menjadi halaman form input data
```
class MoodEntryFormPage extends StatefulWidget {
  const MoodEntryFormPage({super.key});

  @override
  State<MoodEntryFormPage> createState() => _MoodEntryFormPageState();
}

class _MoodEntryFormPageState extends State<MoodEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _description = "";
  int _amount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Item Kamu Hari ini',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      // TODO: Tambahkan drawer yang sudah dibuat di sini
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Name",
                  labelText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _name = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Amount",
                  labelText: "Amount",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _amount = int.tryParse(value!) ?? 0;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Amount tidak boleh kosong!";
                  }
                  if (int.tryParse(value) == null) {
                    return "Amount harus berupa angka!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Description",
                  labelText: "Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _description = value!;
                  });
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "Description tidak boleh kosong!";
                  }
                  return null;
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                        Theme.of(context).colorScheme.primary),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Item berhasil tersimpan'),
                            content: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // TODO: Munculkan value-value lainnya
                                  Text('Name: $_name'),
                                  Text('Amount: $_amount'),
                                  Text('Description: $_description'),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.pop(context);
                                  _formKey.currentState!.reset();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

- Menambahkan drawer pada halaman utama dan input
```
drawer: const LeftDrawer(),
```

- Memunculkan data setelah hasil input
```
onPressed: () {
   if (_formKey.currentState!.validate()) {
      showDialog(
      context: context,
      builder: (context) {
         return AlertDialog(
            title: const Text('Item berhasil tersimpan'),
            content: SingleChildScrollView(
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                  // TODO: Munculkan value-value lainnya
                  Text('Name: $_name'),
                  Text('Amount: $_amount'),
                  Text('Description: $_description'),
               ],
            ),
            ),
            actions: [
            TextButton(
               child: const Text('OK'),
               onPressed: () {
                  Navigator.pop(context);
                  _formKey.currentState!.reset();
               },
            ),
            ],
         );
      },
      );
   }
}
```

- Membuat routing dari tombol add pada halaman utama menuju halaman input
```
if (item.name == "Tambah Item") {
   Navigator.push(
      context,
      MaterialPageRoute(
         builder: (context) => const MoodEntryFormPage()));
}
```


