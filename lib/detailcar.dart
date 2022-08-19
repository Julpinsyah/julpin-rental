import 'package:flutter/material.dart';
import 'package:julpinsyah_submission/helper/ikonmobile.dart';
import 'package:julpinsyah_submission/konfirmasi.dart';
import './model/car.dart';

class DetailCar extends StatefulWidget {
  final Car car;

  const DetailCar({Key? key, required this.car}) : super(key: key);

  @override
  State<DetailCar> createState() => _DetailCarState();
}

class _DetailCarState extends State<DetailCar> {
  int lamaSewa = 1;
  int? hargaSewa;

  var nameController = TextEditingController();
  var alamatController = TextEditingController();
  var telpController = TextEditingController();
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Julpin Rentals'),
      ),
      body: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            const Text(
              'Anda akan memesan mobil ini?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 4,
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      widget.car.image,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      widget.car.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        IkonMobile(
                          icon: const Icon(
                            Icons.people,
                            size: 18,
                          ),
                          text: widget.car.penumpang,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IkonMobile(
                          icon: const Icon(
                            Icons.attach_money_rounded,
                            size: 18,
                          ),
                          text: 'Rp. ${widget.car.harga.toString()} / Hari',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Silahkan mengisi data diri anda'),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Nama Lengkap',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: alamatController,
              decoration: const InputDecoration(
                labelText: 'Alamat',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: telpController,
                    decoration: const InputDecoration(
                      labelText: 'No. Handphone',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                const Text('Lama sewa mobil (Hari)',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    if (lamaSewa <= 1) {
                      return;
                    }
                    setState(() {
                      lamaSewa--;
                      hargaSewa = lamaSewa * widget.car.harga;
                    });
                  },
                  icon: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  lamaSewa.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      lamaSewa++;
                      hargaSewa = lamaSewa * widget.car.harga;
                    });
                  },
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
                hargaSewa == null
                    ? 'Total : Rp. ${widget.car.harga.toString()}'
                    : 'Total : Rp. $hargaSewa',
                style: const TextStyle(
                  fontSize: 20,
                )),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                List<Map<dynamic, dynamic>> datalist = [
                  {
                    'nama': nameController.text,
                    'alamat': alamatController.text,
                    'telp': telpController.text,
                    'email': emailController.text,
                    'lama_sewa': lamaSewa,
                    'harga_sewa': hargaSewa ?? widget.car.harga,
                    'car': widget.car.name,
                  },
                ];
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Konfirmasi(data: datalist)),
                );
              },
              child: const Text('Sewa Mobil'),
            ),
          ],
        ),
      ),
    );
  }
}
