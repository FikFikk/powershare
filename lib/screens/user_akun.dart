import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powershre/screens/add_Kredensial.dart';
import 'package:powershre/screens/add_tahutentang.dart';
import 'package:powershre/screens/edit_profile.dart';
import 'package:powershre/screens/screen_ruang.dart';
import 'package:powershre/screens/user_follower.dart';

import '../components/follow_button.dart';
import '../components/photozoom.dart';

class UserAkun extends StatefulWidget {
  @override
  _UserAkun createState() => _UserAkun();
}

class _UserAkun extends State<UserAkun> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> _tabTitles = [
    'Profil',
    'Jawaban',
    'Pertanyaan',
    'Kiriman',
    'Pengikut',
    'Mengikuti',
    'Tahu Tentang',
    'Histori',
    'Aktivitas',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabTitles.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        elevation: 0,
        title: Text(
          'Akun',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          )),
        ),
        toolbarHeight: 70,
        backgroundColor: const Color.fromRGBO(217, 217, 217, 100),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromRGBO(217, 217, 217, 100),
                      width: 1.0,
                    ),
                  ),
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        PhotoZoomIconButton(
                          imageUrl:
                              'https://i.pinimg.com/originals/cf/03/2f/cf032f1176f42bbeb000c53fdace7f40.jpg',
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Andri Dwi',
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                            ),
                            RichText(
                              text: TextSpan(
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 14.0, color: Colors.blue),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '2 Pengikut',
                                    style: GoogleFonts.poppins(
                                      textStyle:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const UserFollower()),
                                        );
                                      },
                                  ),
                                  TextSpan(
                                    text: '  ·  ',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            color: Colors.grey)),
                                  ),
                                  TextSpan(
                                    text: 'Mengikuti 1',
                                    style: GoogleFonts.poppins(
                                      textStyle:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const UserFollower()),
                                        );
                                      },
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 9,
                          child: SizedBox(
                            width: 300,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const EditProfile()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                foregroundColor: Colors.black,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: Color.fromRGBO(217, 217, 217, 100),
                                  ),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.edit,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(width: 15),
                                  Text(
                                    'Edit Profil',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    barrierDismissible:
                                        true, // This makes the dialog dismissible with a tap on the barrier
                                    builder: (BuildContext context) {
                                      return GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Dialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          elevation: 0,
                                          backgroundColor: Colors.transparent,
                                          child: Center(
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15,
                                                        right: 15,
                                                        top: 15),
                                                    child: Text(
                                                        'Bagikan dengan',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                    ),
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const ScreenRuang()));
                                                    },
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      217,
                                                                      217,
                                                                      217,
                                                                      100),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                        height: 50,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const Icon(Icons
                                                                .directions),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            SizedBox(
                                                              child: Text(
                                                                'Pesan Langsung',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                    ),
                                                    onPressed: () {},
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      217,
                                                                      217,
                                                                      217,
                                                                      100),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                        height: 50,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const Icon(
                                                              Icons.link,
                                                              size: 24,
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            SizedBox(
                                                              child: Text(
                                                                'Salin Tautan',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                    ),
                                                    onPressed: () {},
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      217,
                                                                      217,
                                                                      217,
                                                                      100),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                        height: 50,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const Icon(
                                                              Icons
                                                                  .animation_outlined,
                                                              size: 24,
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            SizedBox(
                                                              child: Text(
                                                                'Twitter',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                    ),
                                                    onPressed: () {},
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      217,
                                                                      217,
                                                                      217,
                                                                      100),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                        height: 50,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const Icon(
                                                              Icons
                                                                  .wechat_sharp,
                                                              size: 24,
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            SizedBox(
                                                              child: Text(
                                                                'WhatsApp',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                    ),
                                                    onPressed: () {},
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      217,
                                                                      217,
                                                                      217,
                                                                      100),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                        height: 50,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const Icon(
                                                              Icons
                                                                  .mail_outline,
                                                              size: 24,
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            SizedBox(
                                                              child: Text(
                                                                'Gmail',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child:
                                                            const Text('Batal'),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                icon: const Icon(
                                  Icons.share,
                                  color: Colors.grey,
                                )))
                      ],
                    ),
                  ),
                  Container(
                    height: 2,
                    color: const Color.fromRGBO(217, 217, 217, 100),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Text(
                            'Kredensial & Sorotan',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            )),
                          ),
                        ],
                      )),
                  Container(
                    height: 2,
                    color: const Color.fromRGBO(217, 217, 217, 100),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              const Icon(Icons.cases_outlined),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text:
                                              'Tambahkan kredensial pekerjaan',
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontSize: 14.0,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Kredensial()));
                                            },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              const Icon(Icons.school_outlined),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  Text(
                                    'Belajar Teknik Informatika di Universitas 17 Agustus 1945 Surabaya',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    )),
                                  ),
                                ],
                              ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              const Icon(Icons.location_on_outlined),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                  child: Column(
                                children: [
                                  Text(
                                    'Tinggal di Menganti, Gresik, Jawa Timur 2001 - saat ini',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    )),
                                  ),
                                ],
                              ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              const Icon(Icons.calendar_month_outlined),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bergabung November 2022',
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    )),
                                  ),
                                ],
                              ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromRGBO(217, 217, 217, 100),
                      width: 1.0,
                    ),
                  ),
                ),
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  onTap: (index) {
                    _tabController.animateTo(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  indicator: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: _tabTitles.map((title) => Tab(text: title)).toList(),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    //Profil
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color.fromRGBO(217, 217, 217, 100),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "Profil",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15.0),
                                                topRight: Radius.circular(15.0),
                                              ),
                                            ),
                                            height: 150.0,
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                        border: Border(
                                                          bottom: BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    217,
                                                                    217,
                                                                    217,
                                                                    100),
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                      ),
                                                      height: 50,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            child: Text(
                                                              'Diurutkan berdasarkan',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                textStyle: const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .grey),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                    ),
                                                    onPressed: () {},
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      217,
                                                                      217,
                                                                      217,
                                                                      100),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                        height: 50,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              child: Text(
                                                                'Terbaru',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                    ),
                                                    onPressed: () {},
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      217,
                                                                      217,
                                                                      217,
                                                                      100),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                        height: 50,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              child: Text(
                                                                'Semua',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          "Terbaru",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Answer
                    Container(
                      height: 1000.0,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color.fromRGBO(217, 217, 217, 100),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "Jawaban",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15.0),
                                                topRight: Radius.circular(15.0),
                                              ),
                                            ),
                                            height: 150.0,
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                        border: Border(
                                                          bottom: BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    217,
                                                                    217,
                                                                    217,
                                                                    100),
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                      ),
                                                      height: 50,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            child: Text(
                                                              'Diurutkan berdasarkan',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                textStyle: const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .grey),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                    ),
                                                    onPressed: () {},
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      217,
                                                                      217,
                                                                      217,
                                                                      100),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                        height: 50,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              child: Text(
                                                                'Terbaru',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                    ),
                                                    onPressed: () {},
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      217,
                                                                      217,
                                                                      217,
                                                                      100),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                        height: 50,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              child: Text(
                                                                'Semua',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          "Terbaru",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Question
                    Container(
                      child: Container(
                        height: 1000.0,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(217, 217, 217, 100),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  children: [
                                    Text(
                                      "Pertanyaan",
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //Post
                    Container(
                      child: Container(
                        height: 1000.0,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromRGBO(217, 217, 217, 100),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  children: [
                                    Text(
                                      "Kiriman",
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //Followers
                    Container(
                      height: 1000.0,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color.fromRGBO(217, 217, 217, 100),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "Pengikut",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(217, 217, 217, 100),
                            ))),
                            child: Column(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.grey,
                                        ),
                                        width: 35,
                                        height: 35,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 10),
                                          child: Column(
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        fontSize: 12.0,
                                                        color: Colors.black),
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: 'Nur Rojabiyah, ',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle:
                                                            const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {},
                                                    ),
                                                    const TextSpan(
                                                      text:
                                                          'S1 di Teknik Fisika, ',
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          'Institut Teknologi Sepuluh November(2023)',
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {},
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.start,
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "86 Pengikut",
                                                      style: GoogleFonts.poppins(
                                                          textStyle:
                                                              const TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .grey)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const FollowButton()
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(217, 217, 217, 100),
                            ))),
                            child: Column(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.grey,
                                        ),
                                        width: 35,
                                        height: 35,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, bottom: 10),
                                          child: Column(
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        fontSize: 12.0,
                                                        color: Colors.black),
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: 'Julyanto Dui, ',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle:
                                                            const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {},
                                                    ),
                                                    const TextSpan(
                                                      text:
                                                          'Mekanik alat berat di Pertambangan. ',
                                                    ),
                                                    TextSpan(
                                                      text: ' ',
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {},
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.start,
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "203 Pengikut",
                                                      style: GoogleFonts.poppins(
                                                          textStyle:
                                                              const TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .grey)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const FollowButton()
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Following
                    Container(
                      height: 1000.0,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color.fromRGBO(217, 217, 217, 100),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "Mengikuti",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15.0),
                                                topRight: Radius.circular(15.0),
                                              ),
                                            ),
                                            height: 200.0,
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                        border: Border(
                                                          bottom: BorderSide(
                                                            color:
                                                                Color.fromRGBO(
                                                                    217,
                                                                    217,
                                                                    217,
                                                                    100),
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                      ),
                                                      height: 50,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                            child: Text(
                                                              'Mengikuti',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                textStyle: const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .grey),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                    ),
                                                    onPressed: () {},
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      217,
                                                                      217,
                                                                      217,
                                                                      100),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                        height: 50,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              child: Text(
                                                                'Ruang',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                    ),
                                                    onPressed: () {},
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      217,
                                                                      217,
                                                                      217,
                                                                      100),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                        height: 50,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              child: Text(
                                                                'Topik',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      elevation: 0,
                                                    ),
                                                    onPressed: () {},
                                                    child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      217,
                                                                      217,
                                                                      217,
                                                                      100),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                        height: 50,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              child: Text(
                                                                'Pertanyaan',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  textStyle:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          "Ruang",
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: Colors.grey,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(217, 217, 217, 100),
                            ))),
                            child: Column(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 15, bottom: 15),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.grey,
                                        ),
                                        width: 35,
                                        height: 35,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Column(
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  style: GoogleFonts.poppins(
                                                    textStyle: const TextStyle(
                                                        fontSize: 12.0,
                                                        color: Colors.black),
                                                  ),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: 'Nur Rojabiyah, ',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        textStyle:
                                                            const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                      ),
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {},
                                                    ),
                                                    const TextSpan(
                                                      text:
                                                          'S1 di Teknik Fisika, ',
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          'Institut Teknologi Sepuluh November(2023)',
                                                      recognizer:
                                                          TapGestureRecognizer()
                                                            ..onTap = () {},
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.start,
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "86 Pengikut",
                                                      style: GoogleFonts.poppins(
                                                          textStyle:
                                                              const TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .grey)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const FollowButton()
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Know About
                    Container(
                      height: 1000.0,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color.fromRGBO(217, 217, 217, 100),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "Tahu tentang",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Spacer(),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const TahuTentang()));
                                      },
                                      icon: const Icon(
                                        Icons.edit,
                                        color: Colors.grey,
                                        size: 20,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                            ),
                            onPressed: () {},
                            child: Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color.fromRGBO(217, 217, 217, 100),
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    SizedBox(
                                      child: Text(
                                        'Universitas 17 Agustus 1945 Surabaya',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                            ),
                            onPressed: () {},
                            child: Container(
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color.fromRGBO(217, 217, 217, 100),
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    SizedBox(
                                      child: Text(
                                        'Teknik Informatika',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    //History
                    Container(
                      height: 1000.0,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color.fromRGBO(217, 217, 217, 100),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "Histori",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(15),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 14.0, color: Colors.blue),
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Jawaban ',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            _tabController.animateTo(1);
                                          },
                                      ),
                                      TextSpan(
                                        text: 'ditambahkan oleh ',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              color: Colors.black),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Andri Dwi',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      UserAkun()),
                                            );
                                          },
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                            'Apakah chat Telegram bisa dilihat orang lain? ',
                                        style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.blue),
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {},
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color.fromRGBO(
                                            210, 210, 210, 100),
                                        width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text(
                                          "Di Telegram, ada fitur secret chat biasanya digunakan untuk bertukar pesan dengan sistem client-server/server-client encrypted. Dengan kata lain, pesan yang dikirimkan hanya dapat dilihat oleh pengirim dan penerima. \n\nSecret chat adalah fitur yang dikembangkan oleh Telegram sebagai jenis percakapan satu lawan satu dan bukan untuk percakapan grup. Di dalam ruang obrolan rahasia ini, Anda tidak bisa meneruskan pesan atau melakukan tangkapan layar. \n\nFitur ini memang dirancang agar penggunanya bisa berkomunikasi dengan perlindungan privasi yang lebih ketat.",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Activity
                    Container(
                      height: 1000.0,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color.fromRGBO(217, 217, 217, 100),
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "Aktivitas",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
