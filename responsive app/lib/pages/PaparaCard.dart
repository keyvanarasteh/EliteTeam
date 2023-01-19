import 'package:flutter/material.dart';

class PaparaCard extends StatefulWidget {
  const PaparaCard({Key? key}) : super(key: key);

  @override
  State<PaparaCard> createState() => _PaparaCardState();
}

class _PaparaCardState extends State<PaparaCard> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 20,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  "Papara Card",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "resimler/black_card.png",
                      ),
                    ),
                    title: Text(
                      "Papara Black Card",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "1234 56** **** 1122",
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.black,
                      size: 36,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "resimler/batman.png",
                      ),
                    ),
                    title: Text(
                      "Papara Batman Card",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "7890 12** **** 1122",
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.black,
                      size: 36,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "resimler/gray_card.png",
                      ),
                    ),
                    title: Text(
                      "Papara Gray Card",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "7482 16** **** 2483",
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.black,
                      size: 36,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "resimler/hayalet.png",
                      ),
                    ),
                    title: Text(
                      "Papara Hayalet Card",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "5146 95** **** 8524",
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.black,
                      size: 36,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "resimler/fraction.png",
                      ),
                    ),
                    title: Text(
                      "Harcama Özeti",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Harcamalarını takip et, hesabını bil",
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.black,
                      size: 36,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "resimler/credit_card.png",
                      ),
                    ),
                    title: Text(
                      "Abonelikler",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Düzenli ödemelerinin kontrolü sende",
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.black,
                      size: 36,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "resimler/hero.png",
                      ),
                    ),
                    title: Text(
                      "Yuvarla",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Küsuratlarınla bağış yap",
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_rounded,
                      color: Colors.black,
                      size: 36,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 20.0,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.add_circle_outline),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Yeni Kart",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
