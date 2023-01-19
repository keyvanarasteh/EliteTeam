import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:mini_papara/pages/Ayarlar.dart';
import 'package:mini_papara/pages/Bildirimler.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context).size;
    final double ekranGenisligi = ekranBilgisi.width;
    final double ekranYuksekligi = ekranBilgisi.height;
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: IconButton(
                        onPressed: () {
                          _key.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          size: 40,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: FadeInImage.assetNetwork(
                          placeholder: "resimler/place_holder.png",
                          image:
                              "https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/bhajiucvvsjpwavkkkuk",
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: GestureDetector(
                        onTap: () {
                          showAdaptiveActionSheet(
                            context: context,
                            androidBorderRadius: 10,
                            bottomSheetColor: Colors.white,
                            isDismissible: true,
                            actions: <BottomSheetAction>[
                              BottomSheetAction(
                                onPressed: (_) {
                                  Navigator.pop(context);
                                },
                                leading: Icon(Icons.image_outlined),
                                title: Text("Profil Fotoğrafı Seç"),
                              ),
                              BottomSheetAction(
                                onPressed: (_) {
                                  Navigator.pop(context);
                                },
                                leading: Icon(Icons.person_outline),
                                title: Text("Hesap Detayları"),
                              ),
                              BottomSheetAction(
                                onPressed: (_) {
                                  Navigator.pop(context);
                                },
                                leading: Icon(Icons.history_outlined),
                                title: Text("İşlem Geçmişi"),
                              ),
                              BottomSheetAction(
                                onPressed: (_) {
                                  Navigator.pop(context);
                                },
                                leading: Icon(Icons.account_balance_outlined),
                                title: Text("Banka Hesapları"),
                              ),
                              BottomSheetAction(
                                onPressed: (_) {
                                  Navigator.pop(context);
                                },
                                leading: Icon(Icons.credit_card_outlined),
                                title: Text("Banka/Kredi Kartları"),
                              ),
                              BottomSheetAction(
                                onPressed: (_) {
                                  Navigator.pop(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Ayarlar(),
                                    ),
                                  );
                                },
                                leading: Icon(Icons.settings_outlined),
                                title: Text("Ayarlar"),
                              ),
                              BottomSheetAction(
                                onPressed: (_) {},
                                leading: Icon(Icons.logout_outlined),
                                title: Text("Güvenli Çıkış"),
                              ),
                            ],
                            cancelAction: CancelAction(
                              title: SizedBox(
                                  width: ekranGenisligi - 50,
                                  height: 50,
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Vazgeç',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ))),
                            ), // onPressed parameter is optional by default will dismiss the ActionSheet
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    'https://www.shutterstock.com/image-photo/piraeus-greece-october-31-2017-260nw-752947945.jpg',
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
                SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: IconButton(
                              onPressed: () {},
                              icon: ImageIcon(
                                AssetImage(
                                  "resimler/minus.png",
                                ),
                                color: Color.fromRGBO(193, 29, 29, 1.0),
                                size: 100,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Text("Çek"),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "₺28,86",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: IconButton(
                              onPressed: () {},
                              icon: ImageIcon(
                                AssetImage(
                                  "resimler/plus.png",
                                ),
                                color: Color.fromRGBO(29, 193, 56, 1.0),
                                size: 100,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Text("Yatır"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Papara Numaran: ",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "123456789",
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 26,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "SON İŞLEMLER",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 40,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://www.rtl.be/info/GED/06560000/6562700/6562754.jpg',
                      ),
                    ),
                  ),
                  title: Text(
                    "Yusuf Taşkan",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Gelen Transfer",
                    style: TextStyle(),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "₺65,00",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Bugün 08:55",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
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
                  title: Text(
                    "getir",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Papara Card",
                    style: TextStyle(),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "₺72,25",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Dün 21:48",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://yt3.googleusercontent.com/ytc/AMLnZu8UWkCIyTd0N_A7fRPWz8isosj1v-g5U2CHvrTEtQ=s900-c-k-c0x00ffffff-no-rj',
                      ),
                    ),
                  ),
                  title: Text(
                    "Ziraat Bankası",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Banka Transferi",
                    style: TextStyle(),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "₺840,30",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "10/01/2023",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://yt3.googleusercontent.com/fWr2IJwrUrwhqynNu6TTveHpISAz3QVioxlaOhkkE9B0DSnkQYhizk5NkryDwC1pU4iqg-QE=s900-c-k-c0x00ffffff-no-rj',
                      ),
                    ),
                  ),
                  title: Text(
                    "Trendyol",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Alışveriş",
                    style: TextStyle(),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "₺137,90",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "08/01/2023",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg',
                      ),
                    ),
                  ),
                  title: Text(
                    "Emiraan Kınalı",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Banka Transferi",
                    style: TextStyle(),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "₺49,90",
                        style: TextStyle( 
                          fontSize: 24,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "06/01/2023",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://yt3.googleusercontent.com/ytc/AMLnZu8UWkCIyTd0N_A7fRPWz8isosj1v-g5U2CHvrTEtQ=s900-c-k-c0x00ffffff-no-rj',
                      ),
                    ),
                  ),
                  title: Text(
                    "Ziraat Bankası",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "Banka Transferi",
                    style: TextStyle(),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "₺128,00",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "02/01/2023",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "CASHBACK",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.arrow_right,
                    size: 40,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: Color.fromRGBO(227, 227, 227, 1.0), width: 4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Spacer(flex: 1),
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: FadeInImage.assetNetwork(
                            placeholder: "resimler/place_holder.png",
                            image:
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/640px-YouTube_full-color_icon_%282017%29.svg.png',
                          ),
                        ),
                        Spacer(flex: 1),
                        Column(
                          children: [
                            Text(
                              "YouTube",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Her ay ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  "₺15",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  " kazan",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(flex: 8),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInImage.assetNetwork(
                    placeholder: "resimler/place_holder.png",
                    image:
                        "https://upload.wikimedia.org/wikipedia/commons/d/dd/Papara_Logo.png",
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Bildirimler'),
              leading: ImageIcon(AssetImage("resimler/notification.png")),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Bildirimler(),
                  ),
                );
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.5,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ),
              ),
              title: const Text('ATM Bul'),
              leading: ImageIcon(AssetImage("resimler/find_atm.png")),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.5,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ),
              ),
              title: const Text('Para Çek/Yatır'),
              leading: ImageIcon(AssetImage("resimler/get_money.png")),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.5,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ),
              ),
              title: const Text('Harcama Bölüştür'),
              leading: ImageIcon(AssetImage("resimler/divide_money.png")),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.5,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ),
              ),
              title: const Text('Papara Edu'),
              leading: ImageIcon(AssetImage("resimler/edu.png")),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.5,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ),
              ),
              title: const Text('Sigorta'),
              leading: ImageIcon(AssetImage("resimler/insurance.png")),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.5,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ),
              ),
              title: const Text('Cashback'),
              leading: ImageIcon(AssetImage("resimler/cashback.png")),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.5,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ),
              ),
              title: const Text('Aylık Özet'),
              leading: ImageIcon(AssetImage("resimler/summary.png")),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.5,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ),
              ),
              title: const Text('Ücretler & Limitler'),
              leading: ImageIcon(AssetImage("resimler/limit.png")),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.5,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ),
              ),
              title: const Text('Ticari Hesap'),
              leading: ImageIcon(AssetImage("resimler/account.png")),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.5,
                  color: Color.fromRGBO(234, 234, 234, 1.0),
                ),
              ),
              title: const Text('Sıkça Sorulan Sorular'),
              leading: ImageIcon(AssetImage("resimler/faq.png")),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
