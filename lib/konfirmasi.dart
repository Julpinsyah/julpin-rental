import 'package:flutter/material.dart';
import 'package:julpinsyah_submission/main.dart';

class Konfirmasi extends StatelessWidget {
  final data;
  const Konfirmasi({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                  elevation: 4,
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('KONFIRMASI PEMBAYARAN'),
                        const SizedBox(height: 10),
                        Text('Mobil : ${data[0]['car']}'),
                        const SizedBox(height: 10),
                        Text('Nama : ${data[0]['nama']}'),
                        const SizedBox(height: 10),
                        Text('Alamat : ${data[0]['alamat']}'),
                        const SizedBox(height: 10),
                        Text('Telp : ${data[0]['telp']}'),
                        const SizedBox(height: 10),
                        Text('Email : ${data[0]['email']}'),
                        const SizedBox(height: 10),
                        Text(
                            'Lama Sewa : ${data[0]['lama_sewa'].toString()} Hari'),
                        const SizedBox(height: 10),
                        Text(
                            'Harga Sewa : Rp. ${data[0]['harga_sewa'].toString()}'),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                child: const Text('Kembali'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                child: const Text('Konfirmasi'),
                                onPressed: () {
                                  final snackBar = SnackBar(
                                    content: const Text('Konfirmasi berhasil'),
                                    action: SnackBarAction(
                                      label: 'Home',
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const MyApp()));
                                      },
                                    ),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
