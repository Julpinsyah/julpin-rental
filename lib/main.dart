import 'package:flutter/material.dart';
import 'package:julpinsyah_submission/detailcar.dart';
import 'package:julpinsyah_submission/helper/ikonmobile.dart';
import 'package:julpinsyah_submission/model/car.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Julpin Rentals'),
        ),
        body: Container(
          padding: const EdgeInsets.all(8),
          child: ListView.builder(
              itemCount: cars.length,
              itemBuilder: (context, index) {
                final Car mobil = cars[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailCar(
                          car: mobil,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 4,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Image.asset(
                              mobil.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 2,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      mobil.name,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    IkonMobile(
                                      icon: const Icon(
                                        Icons.people,
                                        size: 18,
                                      ),
                                      text: mobil.penumpang,
                                    ),
                                    IkonMobile(
                                      icon: const Icon(
                                        Icons.attach_money_rounded,
                                        size: 18,
                                      ),
                                      text:
                                          'Rp. ${mobil.harga.toString()} / Hari',
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
