// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:powershre/screens/setting_screen.dart';
import 'package:powershre/screens/ubah_sandi-1.dart';

class SettingAkun extends StatefulWidget {
  const SettingAkun({super.key});

  @override
  State<SettingAkun> createState() => _SettingAkunState();
}

class _SettingAkunState extends State<SettingAkun> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 64,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left_rounded,
            color: Colors.grey,
          ),
        ),
        toolbarHeight: 70,
        title: Text(
          "Setelan Akun",
          style: GoogleFonts.poppins(
            textStyle:
                const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 15, right: 0, top: 15, bottom: 0),
              child: SizedBox(
                width: double.infinity,
                height: 30,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Surel",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 2,
              color: Color.fromRGBO(217, 217, 217, 100),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 0, top: 20, bottom: 0),
              child: Container(
                width: size.width,
                height: 60,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Text(
                            "test@gmail.co",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Column(children: [
                          Text(
                            "Surel Utama",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400)),
                          ),
                        ])),
                  ],
                ),
              ),
            ),
            Container(
              height: 2,
              color: const Color.fromRGBO(217, 217, 217, 100),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 0),
              child: SizedBox(
                width: double.infinity,
                height: 140,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Tambahkan Surel",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: 'nama@contoh.id',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.blue,
                                  shape: const StadiumBorder()),
                              child: const Text("Tambah Surel")),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 2,
              color: Color.fromRGBO(217, 217, 217, 100),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 0, top: 15, bottom: 0),
              child: Container(
                width: double.infinity,
                height: 30,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          "Sandi",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 2,
              color: Color.fromRGBO(217, 217, 217, 100),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 15, top: 0, bottom: 0),
              child: Container(
                width: size.width,
                height: 50,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const UbahSandi()));
                            },
                            child: Text(
                              "Ubah Sandi",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 2,
              color: Color.fromRGBO(217, 217, 217, 100),
            ),
          ],
        ),
      ),
    );
  }
}
