import 'package:flutter/material.dart';
import 'package:powershre/screens/add_Kredensial.dart';
import 'package:powershre/screens/audiens.dart';
import 'package:powershre/screens/audiens_post.dart';
import 'package:powershre/screens/ubah_sandi-2.dart';
import 'package:google_fonts/google_fonts.dart';

class TambahPertanyaan extends StatefulWidget {
  const TambahPertanyaan({super.key});

  @override
  _TambahPertanyaanState createState() => _TambahPertanyaanState();
}

class _TambahPertanyaanState extends State<TambahPertanyaan> {
  final List<Widget> _tabs = [
    const Tab(text: 'Tambahkan Pertanyaan'),
    const Tab(text: 'Buat kiriman Informasi'),
  ];

  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 70,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_left_rounded,
              color: Colors.grey,
            ),
          ),
          title: const Text(' '),
          bottom: TabBar(
            onTap: (index) {
              setState(() {
                isChecked = index == 0;
              });
            },
            splashBorderRadius: BorderRadius.circular(5),
            labelColor: Colors.black, // Color of the active tab label
            unselectedLabelColor:
                Colors.black54, // Color of the inactive tab label
            indicator: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 3, // Width of the bottom border
                  color:
                      Colors.blue, // Color of the bottom border for active tab
                ),
              ),
            ),

            tabs: _tabs,
          ),
          actions: <Widget>[
            Visibility(
              visible: !isChecked,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 0, bottom: 0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AudiensRuang()));
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.blur_circular_rounded,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Semua Orang',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.grey,
                        ),
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 12, bottom: 12),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Kredensial()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      fixedSize: const Size(71, 0),
                      side: const BorderSide(color: Colors.blue),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    child: Text(
                      'Simpan',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            TabBarView(
              children: [
                SingleChildScrollView(
                    child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(217, 217, 217, 100),
                      ))),
                    ),
                    Container(
                      margin: const EdgeInsets.all(15.0),
                      width: double.infinity,
                      color: const Color.fromRGBO(217, 217, 217, 100),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 15, bottom: 15),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Kiat untuk mendapatkan jawaban yang baik dengan cepat",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 0, bottom: 15),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  " · Pastikan pertanyaan Anda belum pernah diajukan sebelumnya",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)),
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 0, bottom: 15),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  " · Pastikan pertanyaan Anda singkat padat, dan lugas",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)),
                                ),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 0, bottom: 15),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  " · Perikas kembali tata bahasa dan ejaan yang ada",
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)),
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 15, right: 15, top: 0, bottom: 0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.account_circle_rounded,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.arrow_right_outlined,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                alignment: Alignment.centerLeft,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Audiens()));
                              },
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.groups_rounded,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Publik',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.grey,
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(
                            left: 15, right: 15, top: 0, bottom: 0),
                        child: const Column(
                          children: [
                            TextField(
                              maxLines: null,
                              decoration: InputDecoration(
                                hintText:
                                    'Awali pertanyaan Anda dengan “Apa”, “Bagaimana”, “Mengapa”, dll.',
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                              ),
                            ),
                          ],
                        )),
                  ],
                )),
                Container(
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          width: 1,
                          color: Color.fromRGBO(217, 217, 217, 100),
                        ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 15, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              child: Icon(
                                Icons.account_circle_rounded,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Andri Dwi',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  )),
                                ),
                                SizedBox(
                                  width: 309,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        alignment: Alignment.centerLeft,
                                        backgroundColor: Colors.transparent,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.grey),
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Kredensial()));
                                      },
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 20,
                                            child: SizedBox(
                                              child: Text(
                                                'Belajar di Universital 17 Agustus 1945 Surabaya',
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                softWrap: false,
                                                style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.grey)),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          const Expanded(
                                            flex: 1,
                                            child: Icon(
                                              Icons
                                                  .keyboard_arrow_down_outlined,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.all(15),
                          child: const Column(
                            children: [
                              TextField(
                                maxLines: null,
                                decoration: InputDecoration(
                                  hintText: 'Katakan sesuatu ...',
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
