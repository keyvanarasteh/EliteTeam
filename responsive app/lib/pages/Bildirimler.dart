import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bildirimler extends StatefulWidget {
  const Bildirimler({Key? key}) : super(key: key);

  @override
  State<Bildirimler> createState() => _BildirimlerState();
}

class _BildirimlerState extends State<Bildirimler> {
  bool _deleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 20,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.black,
                        size: 34,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Bildirimler",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1 yeni bildirim",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _deleted = true;
                      });
                    },
                    child: CupertinoButton(
                      onPressed: () {
                        setState(() {
                          _deleted = true;
                        });
                      },
                      child: const Text(
                        'Tümünü Sil',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              // color: Colors.black,
              color: Color.fromRGBO(216, 216, 216, 1.0),
            ),
            ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://cdn.getir.com/marketing/Getir_Logo_1621812382342.png',
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Visibility(
                        child: Opacity(
                          opacity: _deleted ? 0.0 : 1.0,
                          child: Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 14,
                          ),
                        ),
                        visible: _deleted ? false : true,
                      ),
                      Text(
                        "Bugün 08:55",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Papara Card harcaması",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  "Sonu 1234 ile biten kartınla 72,25 TL tutarlı Getir işlemin gerçekleşti.",
                ),
              ),
            ),
            Divider(
              // color: Colors.black,
              color: Color.fromRGBO(216, 216, 216, 1.0),
            ),
            ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://play-lh.googleusercontent.com/LosPYfjaz1pOL-I3XCTroj4vQVxfsF5629nzPJM4pIj2KLaQuLbwmXUqV-I1RT5u9A=w240-h480-rw',
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bugün 07:30",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Papara Card harcaması",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  "Sonu 1234 ile biten kartınla 180,49 TL tutarlı Trendyol işlemin gerçekleşti.",
                ),
              ),
            ),
            Divider(
              // color: Colors.black,
              color: Color.fromRGBO(216, 216, 216, 1.0),
            ),
            ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/bhajiucvvsjpwavkkkuk',
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dün 19:44",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Para girişi",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  "Hesabına 800,00 TL para girişi gerçekleşti.",
                ),
              ),
            ),
            Divider(
              // color: Colors.black,
              color: Color.fromRGBO(216, 216, 216, 1.0),
            ),
            ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://play-lh.googleusercontent.com/8lwKsP58XsjYBzz4ZkqF_dNGT0FeeSoo78O2ZBnqeBjaH8kX19UnAVcC-YNdQW136DM',
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dün 12:30",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Papara Card harcaması",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  "Ziraat bankası hesabına 250,00 TL tutarında para çıkışı gerçekleşti.",
                ),
              ),
            ),
            Divider(
              // color: Colors.black,
              color: Color.fromRGBO(216, 216, 216, 1.0),
            ),
            ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://play-lh.googleusercontent.com/toZP33O_6UnucssEE2Oms_Mlbw522pO8gMpjQcFtHW5TRp7cRfMLzPMvQwgLxyTMbPxg=w240-h480-rw',
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "12/01/2023",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Papara Card harcaması",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  "Sonu 1234 ile biten kartınla 40,00 TL tutarlı Migros Market işlemin gerçekleşti.",
                ),
              ),
            ),
            Divider(
              // color: Colors.black,
              color: Color.fromRGBO(216, 216, 216, 1.0),
            ),
            ListTile(
              leading: SizedBox(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://play-lh.googleusercontent.com/sTgdSGcSPOTl_hfGRp4HhPngKX1D_zcz8KFdSrl2S-vwxk4ah6F9SSEnmnzvYDMuDqo=w240-h480-rw',
                  ),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "01/01/2023",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Papara Card harcaması",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  "Sonu 1234 ile biten kartınla 199,90 TL tutarlı\nLC WAIKIKI işlemin gerçekleşti.",
                ),
              ),
            ),
            Divider(
              // color: Colors.black,
              color: Color.fromRGBO(216, 216, 216, 1.0),
            ),
          ],
        ),
      ),
    );
  }
}
