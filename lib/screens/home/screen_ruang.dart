import 'package:flutter/material.dart';
import 'package:powershre/components/listview.dart';
import 'package:powershre/screens/home/components/searchdelegate.dart';
import 'package:powershre/screens/setting_screen.dart';
import 'package:powershre/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenRuang extends StatelessWidget {
  const ScreenRuang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SettingScreen()));
          },
          icon: const Icon(
            Icons.account_circle,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 70,
        title: Text(
          "Ruang",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => {
                    showSearch(
                        context: context, delegate: CustomSearchDelegate())
                  },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 4, bottom: 0),
                child: Row(
                  children: [
                    const Text(
                      "Ruang Kamu",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () => {},
                        child: const Text("Baru-baru dikunjungi"))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 4, bottom: 0),
                child: Row(
                  children: [
                    OutlinedButton.icon(
                      onPressed: () => {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.blue),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      icon: const Icon(Icons.add_circle_outline),
                      label: const Text("Buat"),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    OutlinedButton.icon(
                      onPressed: () => {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.blue),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      icon: const Icon(Icons.map),
                      label: const Text("Temukan"),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    onPressed: () => {},
                    label: const Row(
                      children: [
                        Text(
                          "Ngomongin IT",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                    icon: const Icon(Icons.account_circle_outlined),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Color(0x30726D6D),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 15, bottom: 4),
                  child: Column(children: [
                    Row(
                      children: [
                        Text(
                          "Temukan Ruang",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Ruang yang mungkin Anda suka",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16),
                        ),
                        const Spacer(),
                        TextButton(
                            onPressed: () => {},
                            child: const Text("Lihat Semua"))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    listview(),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const Text(
                          "3D",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    listview(),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Grafik",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    listview(),
                  ]),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
