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
## Tugas 9
### Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Membuat model untuk pengambilan atau pengiriman data JSON diperlukan agar data memiliki struktur yang konsisten dan dapat diproses dengan benar oleh aplikasi. Model membantu memvalidasi tipe data, atribut yang diperlukan, serta aturan terkait format data, sehingga mengurangi risiko error akibat data yang tidak valid atau tidak lengkap. Jika tidak membuat model, error mungkin tidak langsung terjadi, tetapi potensi masalah seperti parsing data yang salah atau kesalahan logika.

### Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Fungsi dari library `http` yang digunakan dalam tugas ini adalah untuk memungkinkan pengiriman dan penerimaan data melalui protokol HTTP. Library ini membantu membuat koneksi ke server, mengirim permintaan HTTP (seperti GET dan POST), dan menerima respons dari server dalam format JSON. 

### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Secara sederhana CookieRequest merupakan suatu class yang dibuat dalam library `pbp_django_auth_dart` yang mana berisi attribut dan fungsi yang memudahkan dalam pengiriman data dan integrasi front-end back-end. Lalu mengapa instance tersebut perlu dibagikan dalam setiap komponen, hal ini dikarenakan instance tersebut memuat data-data yang memuat informasi tentang session, cookies dan juga informasi hasil `fetch` dari backend. Sehingga agar semua kompenen dan url pada aplikasi memiliki basis data dan session yang sama, kita perlu meng-inisiasinya pada tiap komponen dalam aplikasi flutter.

### Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter
1. Input Data oleh Pengguna
- Pengguna memasukkan data melalui elemen UI, seperti form input, text field, dropdown, atau tombol.
- Data ini diambil menggunakan widget Flutter seperti `TextField` atau `TextFormField`, yang memiliki properti seperti `controller` untuk menangkap nilai yang dimasukkan pengguna.

2. Pengelolaan Data
- Data dari input disimpan dalam state dalam kasus ini saya menggunakan setState
- Validasi dilakukan pada data, baik secara lokal (misalnya memastikan data tidak kosong atau sesuai format)

3. Pengiriman Data ke Backend
- Data yang sudah valid dikirim ke backend menggunakan library HTTP dan untuk memudahkan saya menggunakan library `pbp_django_auth_dart`
- Di mana format data dikonversi ke JSON menggunakan fungsi `jsonEncode` agar kompatibel dengan API.
- HTTP request dikirim, biasanya melalui metode `POST` untuk mengirim data baru atau `GET` untuk mendapatkan data.

4. Pemrosesan di Backend
- Backend menerima data JSON, memprosesnya sesuai dengan kebutuhan (misalnya menyimpan di database, memvalidasi, atau melakukan perhitungan), dan mengembalikan respons ke aplikasi Flutter.
- Respons ini dimuat dalam format JSON, berisi data yang diminta atau status operasi (misalnya sukses, gagal, atau pesan error).

5. Penerimaan Data di Flutter
- Aplikasi Flutter menerima respons dari backend, yang kemudian didekodekan dari JSON menggunakan fungsi seperti `jsonDecode`.
- Data yang diterima disimpan dalam state management dan diolah jika diperlukan, misalnya memformat tanggal atau menyesuaikan struktur data.

6. Menampilkan Data pada UI
- Data dari state digunakan untuk memperbarui tampilan aplikasi.
- Widget seperti `ListView`, `Text`, atau `Card` digunakan untuk menampilkan data dalam metode `build` yang dipanggil ulang secara otomatis saat state berubah.
- Jika menggunakan *state management*, data yang berubah akan secara otomatis memicu pembaruan tampilan tanpa harus menulis ulang logika render secara manual.

### Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
1. Register
Pada fungsi ini pengguna baru akan memberikan informasi terkait username, password serta verifikasi password yang ia inginkan. Di mana data-data tersebut akan diinput pada field-field yang telah diberikan pada halaman register pada flutter yang mana akan secara lokal tersimpan dalam suatu controller. Lalu, apabila pengguna menekan tombol register maka data-data tersebut akan dikirim dalam suatu dokumen json menggunakan protokol http menuju endpoint `localhost:8000/auth/register` yang mana berisi api untuk melakukan validasi dan kreasi pengguna baru. Pada API ini akan dilakukan validasi apakah username sebelumnya telah ada, kesamaan password dan konfirmasi serta berbagai hal lain yang menunjang aktivitas registrasi. Apabila tidak ditemukan kesalahan dan pengguna baru dapat dibuat maka akan dikirimkan pesan berhasil serta pengguna akan langsung diarahkan ke laman login. Sedangkan apabila ada kesalahan pengguna akan diberikan suatu pesan kesalah.

2. Login
Pada fungsi ini pengguna baru akan memberikan informasi terkait username dan password. Di mana data-data tersebut akan diinput pada field-field yang telah diberikan pada halaman login pada flutter yang mana akan secara lokal tersimpan dalam suatu controller. Lalu apabila pengguna menekan tombol login akan dikirim suatu payload berbentuk json berisi data-data tersebut menuju suatu API endpoint yang mana akan memvalidasi kecocokan username dan password tersebut. Apabila data ditemukan pada database dan cocok, maka akan diberikan pesan benar dan pengguna akan diperbolehkan mengakses aplikasi lebih dalam. Jika tidak akan ditampilkan pesan kesalahan.

3. Logout
Pada fungsi ini apabila pengguna menekan tombol logout maka flutter akan mengirim suatu logout request yang akan dikirim kesuatu endpoint API dimana server akan memproses logout untuk pengguna tersebut. Apabila berhasil maka pengguna akan diarahkan menuju halaman login sedangkan apabila gagal maka akan diberikan pesan kesalahan.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
#### Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
Untuk melakukan ini pertama - tama saya membuat suatu app baru pada django server dengan nama `authentication` dimana pada app tersebut saya akan membuat suatu endpoint dan api yang akan memproses proses registrasi user dan menyimpannya dalam suatu database.
```
@csrf_exempt
def register(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        username = data['username']
        password1 = data['password1']
        password2 = data['password2']

        # Check if the passwords match
        if password1 != password2:
            return JsonResponse({
                "status": False,
                "message": "Passwords do not match."
            }, status=400)
        
        # Check if the username is already taken
        if User.objects.filter(username=username).exists():
            return JsonResponse({
                "status": False,
                "message": "Username already exists."
            }, status=400)
        
        # Create the new user
        user = User.objects.create_user(username=username, password=password1)
        user.save()
        return JsonResponse({
            "username": user.username,
            "status": 'success',
            "message": "User created successfully!"
        }, status=200)
    
    else:
        return JsonResponse({
            "status": False,
            "message": "Invalid request method."
        }, status=400)
```
dimana untuk memungkinkan dipanggil tanpa adanya csrf token maka diperlukan @csrf_exempt selain itu agar endpoint terbuka secara umum, maka pada `urls.py` pada direktori proyek utama akan diberikan suatu jalur yang memuat semua endpoint pada aplikasi `authentication` selain itu dikarenakan terjadinya request antar port maka agar tidak terjadi cors pada proyek saya menginstall corsheader dan melakukan konfigurasi sehingga port dapat diakses dan menerima input dari manapun.

lalu pada sisi flutter saya membuat UI yang berisi input username, password, konfirmasi password serta tombol registrasi pada berkas `lib/screens/registrasi.dart`. Di mana pada tombol registrasi akan dibuat suatu fungsi sehingga apabila ditekan akan mengirim payload pada endpoint yang telah dibuat pada django server. Lalu apabila semua proses berhasil pengguna akan diarahkan menuju laman login

#### Membuat halaman login pada proyek tugas Flutter.
Untuk melakukan hal tersebut saya membuat suatu berkas baru pada direktori `lib/screens/` bernama `login.dart` dimana akan ditampilkan UI agar pengguna dapat menginputkan data username dan password dirinya serta suatu tombol yang mana akan menjadi `trigger` untuk dilakukannya verifikasi dari sisi server. untuk implementasinya sebagai berikut:
```
const Text(
'Login',
style: TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 30.0),
TextField(
controller: _usernameController,
decoration: const InputDecoration(
  labelText: 'Username',
  hintText: 'Enter your username',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
  contentPadding:
      EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
),
),
const SizedBox(height: 12.0),
TextField(
controller: _passwordController,
decoration: const InputDecoration(
  labelText: 'Password',
  hintText: 'Enter your password',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
  contentPadding:
      EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
),
obscureText: true,
),
const SizedBox(height: 24.0),
ElevatedButton(
onPressed: () async {
  String username = _usernameController.text;
  String password = _passwordController.text;

  // Cek kredensial
  // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
  // Untuk menyambungkan Android emulator dengan Django pada localhost,
  // gunakan URL http://10.0.2.2/
  final response = await request
      .login("http://localhost:8000/auth/login/", {
    'username': username,
    'password': password,
  });

  if (request.loggedIn) {
    String message = response['message'];
    String uname = response['username'];
    if (context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MyHomePage()),
      );
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
              content:
                  Text("$message Selamat datang, $uname.")),
        );
    }
  } else {
    if (context.mounted) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Login Gagal'),
          content: Text(response['message']),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    }
  }
},
```

#### Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
untuk memungkinkan hal tersebut pada berkas `views.py` pada aplikasi `authentication` saya membuat 3 fungsi yang akan menjalankan fungsi sebagai server untuk melakukan registrasi, login dan juga logout. Di mana untuk  memungkina proses dilakukan tanpa adanya csrf token masing - masing akan dilakukan dengan menggunakan header `csrf_exempt` sebagai berikut
```
from django.contrib.auth import authenticate, login as auth_login
from django.contrib.auth import logout as auth_logout
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.models import User
import json

@csrf_exempt
def login(request):
    print(request)

    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Status login sukses.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login sukses!"
                # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, akun dinonaktifkan."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
    
@csrf_exempt
def register(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        username = data['username']
        password1 = data['password1']
        password2 = data['password2']

        # Check if the passwords match
        if password1 != password2:
            return JsonResponse({
                "status": False,
                "message": "Passwords do not match."
            }, status=400)
        
        # Check if the username is already taken
        if User.objects.filter(username=username).exists():
            return JsonResponse({
                "status": False,
                "message": "Username already exists."
            }, status=400)
        
        # Create the new user
        user = User.objects.create_user(username=username, password=password1)
        user.save()
        return JsonResponse({
            "username": user.username,
            "status": 'success',
            "message": "User created successfully!"
        }, status=200)
    
    else:
        return JsonResponse({
            "status": False,
            "message": "Invalid request method."
        }, status=400)

@csrf_exempt
def logout(request):
    print(request.user.username)
    username = request.user.username

    try:
        auth_logout(request)
        return JsonResponse({
            "username": username,
            "status": True,
            "message": "Logout berhasil!"
        }, status=200)
    except:
        return JsonResponse({
        "status": False,
        "message": "Logout gagal."
        }, status=401)
```
Lalu agar setiap API dapat diakses saya membuat enpoint pada berkas `urls.py` di aplikasi `authentication` dan juga proyek utama sebagai berikut
`authentication/urls.py`
```
from django.urls import path
from authentication.views import login, register, logout

app_name = 'authentication'

urlpatterns = [
    path('login/', login, name='login'),
    path('register/', register, name='register'),
    path('logout/', logout, name='logout')
]
```
`juragan_nelayan/urls.py`
```
...
path('auth/', include('authentication.urls'))
...
```
Lalu agar tidak terkena cors saya menginstall library corsheader pada django dan menambahkan middleware corsheader serta beberapa configurasi cors sehingga endpoint dari django dapat diakses melalui manapun. Lalu pada sisi flutter pada tiap tombol yang difungsikan untuk autentifikasi akan dibuat suatu proses yang akan melakukan request pada API tersebut sehingga data pada aplikasi dapat terintegrasi. Selain itu saya juga akan menggunakan CookieRequest pada sebelum request tiap API sehingga semua request dapat berjalan sebagaimana mestinya.
```
...
Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
....
```

#### Membuat model kustom sesuai dengan proyek aplikasi Django.
Untuk melakukan hal tersebut pertama saya login pada aplikasi juragan_nelayan pada django saya lalu secara paksa masuk pada url `http://localhost:8000/json/` yang mana berisi data `raw` dari model aplikasi. Lalu data tersebut saya masukkan pada quicktype yang mana saya memilih melakukan `reverse engineering` data tersebut ke dalam dart. Lalu saya membuat direktori baru bernama `lib/models` yang mana akan saya isi dengan berkas `product.dart` yang mana akan berisi data model dari quicktype sebagai berikut
```
// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  String model;
  String pk;
  Fields fields;

  Product({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  int user;
  String name;
  int price;
  String description;

  Fields({
    required this.user,
    required this.name,
    required this.price,
    required this.description,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "name": name,
        "price": price,
        "description": description,
      };
}
```

#### Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy
Untuk melakukan hal tersebut saya membuat suatu berkas baru bernama `list_product.dart` pada folder `lib/screens` yang mana akan berisi UI yang menampilkan semua data terkait produk yang ada dimana saya menggunakan text sebagai metode untuk menampilkannya.

```
...
children: [
  Text(
    "${snapshot.data![index].fields.name}",
    style: const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  const SizedBox(height: 10),
  Text("${snapshot.data![index].pk}"),
  const SizedBox(height: 10),
  Text("${snapshot.data![index].fields.name}"),
  const SizedBox(height: 10),
  Text("${snapshot.data![index].fields.price}"),
  const SizedBox(height: 10),
  Text("${snapshot.data![index].fields.description}"),
...
```
Lalu untuk mendapatkan data-data tersebut saya melakukan query pada endpoint `http://localhost:8000/json/` yang mana akan mengembalikan data semua produk pada server django.
```
Future<List<Product>> fetchMood(CookieRequest request) async {
  // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
  final response = await request.get('http://localhost:8000/json/');

  // Melakukan decode response menjadi bentuk json
  var data = response;

  // Melakukan konversi data json menjadi object MoodEntry
  List<Product> listMood = [];
  for (var d in data) {
    if (d != null) {
      listMood.add(Product.fromJson(d));
    }
  }
  return listMood;
}
```
Dimana hal tersebut akan dapat diakses dengan menggunakan future pada build serta untuk memudahkan prose penerimaan API saya menambahkan CookieRequest pada tiap aplikasi
```
...
Widget build(BuildContext context) {
  final request = context.watch<CookieRequest>();
  return Scaffold(
    appBar: AppBar(
        title: const Text('Daftar Ikan'),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchMood(request),
...
```
```
Future<List<Product>> fetchMood(CookieRequest request) async {
  // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
  final response = await request.get('http://localhost:8000/json/');

  // Melakukan decode response menjadi bentuk json
  var data = response;

  // Melakukan konversi data json menjadi object MoodEntry
  List<Product> listMood = [];
  for (var d in data) {
    if (d != null) {
      listMood.add(Product.fromJson(d));
    }
  }
  return listMood;
}
```

#### Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
Untuk memungkinkan hal tersebut pertama - tama pada halam daftar item saya membuat suatu tombol yang akan mengarahkan ke halaman detail dari masing-masing elemen.
```
 Align(
  alignment: Alignment.bottomLeft,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
            Theme.of(context).colorScheme.primary),
      ),
      onPressed: () async {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(
          content: Text("Menuju detail produk"),
        ));
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MoodEntryPageDetail(
                    todo: snapshot.data![index].pk,
                  )),
        );
      },
      child: const Text(
        "Detail",
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
),
```
Lalu saya mebuat berkas baru bernama `MoodEntryPageDetail` yang menerima data dari luar pada direktori `lib/screens` sebagai berikut
```
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
```
Dapat terlihat bahwa pada laman ini akan menerima data id dari item detail yang ingin dilihat lalu akan mengirim request ke endpoint `http://localhost:8000/json/:id` lalu akan menampilkan data mulai dari id, nama, harga, dan juga deskripsi. Lalu untuk memudahkan navigasi pada drawer saya tambahkan komponen `leftDrawer` yang memungkinkan pengguna untuk kembali ke halaman-halaman sebelumnya.

#### Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.
Untuk melakukan hal tersebut pada API django saya spesifikkan bahwa item yang muncul haruslah terasosiasi dengan user tersebut sebagai berikut
```
def show_json(request):
    data = Product.objects.filter(user = request.user)
    return HttpResponse(serializers.serialize("json", data), content_type="application/json")
```
Sehingga data yang dikembalikan hanyalah daya yang terasosiasi dengan user yang meminta request.