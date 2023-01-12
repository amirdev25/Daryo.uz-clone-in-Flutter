import 'dart:ui';

import 'package:daryo_clone/models/news_model.dart';
import 'package:daryo_clone/utils/Constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daryo"),
      ),
      drawer: myDrawer(),
      body: HomeBody(),
    );
  }

  myDrawer() {
    return Drawer(
      child: Container(
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            SizedBox(
              height: 200.0,
              child: DrawerHeader(
                decoration: const BoxDecoration(color: Colors.blue),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.all(4.0),
                            child: const Text(
                              "Daryo",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: double.infinity,
                            height: 24.0,
                            margin: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              border:
                                  Border.all(color: Colors.white, width: 1.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16.0),
                                        topLeft: Radius.circular(16.0),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(2),
                                    child: const Text(
                                      "LOTINCHA",
                                      style: TextStyle(fontSize: 12.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(16.0),
                                        topRight: Radius.circular(16.0),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(2),
                                    child: const Text(
                                      "KRILCHA",
                                      style: TextStyle(fontSize: 12.0),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(4.0),
                              child: const Text(
                                "Toshkent",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.wb_cloudy_outlined,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 4.0,
                                ),
                                Text(
                                  "+12.0°",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Divider(
                          height: 2.0,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.monetization_on_outlined,
                                  color: Colors.white,
                                  size: 18.0,
                                ),
                                Text(
                                  "11095.31",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.euro,
                                  color: Colors.white,
                                  size: 18.0,
                                ),
                                Text(
                                  "10772.44",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.currency_ruble_outlined,
                                  color: Colors.white,
                                  size: 18.0,
                                ),
                                Text(
                                  "173.84",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.0),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 40.0,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16.0),
              color: const Color(0xEEFBF8D0),
              child: const Text(
                "Qo'llanma ekranini ko'rsatish",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 40.0,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16.0),
              color: const Color(0xEEB8CAFF),
              child: const Text(
                "So'ngi yangiliklar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            getMyText("Mahalliy"),
            getMyText("Dunyo"),
            getMyText("Texnologiyalar"),
            const Divider(
              height: 2.0,
              color: Colors.grey,
            ),
            Container(
              height: 40.0,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16.0),
              child: const Text(
                "So'ngi yangiliklar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            const Divider(
              height: 2.0,
              color: Colors.grey,
            ),
            getMyText("Madaniyat"),
            getMyText("Avto"),
            getMyText("Sport"),
            getMyText("Foto"),
            getMyText("Lifestyle"),
            getMyText("Kolumnistlar"),
            getMyText("Afisha"),
          ],
        ),
      ),
    );
  }

  getMyText(String txt) {
    return Container(
      height: 40.0,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        txt,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  HomeBody({Key? key}) : super(key: key);
  List<NewsModel> newsList = [];

  @override
  Widget build(BuildContext context) {
    loadData();

    return Column(
      children: [
        const DefaultTabController(
          length: 11,
          child: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  "So'ngi yangiliklar",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Asosiy yangiliklar",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Eng ko'p o'qilganlar",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Kolumnistlar",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Multimedia",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Mahalliy",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Dunyo",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Madaniyat",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Lifestyle",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Sport",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Pul",
                  style: TextStyle(
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 2.0,
          color: Colors.grey,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: newsList.length,
            itemBuilder: (context, index) {
              return listItemView(newsList[index], context);
            },
          ),
        )
      ],
    );
  }

  Widget listItemView(NewsModel news, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          Constants.DETAILS,
          arguments: {Constants.NEWS: news},
        );
      },
      child: Column(
        children: [
          const SizedBox(
            height: 8.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 120.0,
                  child: Text(
                    news.type!,
                    style: TextStyle(color: Colors.blueAccent, fontSize: 12.0),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "${news.time} | ${news.date} | ",
                      style:
                          const TextStyle(fontSize: 12.0, color: Colors.grey),
                    ),
                    const Icon(
                      Icons.remove_red_eye,
                      color: Colors.blueAccent,
                      size: 14.0,
                    ),
                    Text(
                      news.watchedCount!,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.blueAccent,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
            child: Row(
              children: [
                Container(
                  width: 120.0,
                  height: 80.0,
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/loading.gif",
                    image: news.imgUrl!,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    height: 80.0,
                    child: Text(
                      news.content!,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            height: 2.0,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  void loadData() {
    newsList.add(NewsModel(
      "Xalqaro futbol tarixi va statistikasi federatsiyasi 2022-yilning eng yaxshi hakamlari reytingini e’lon qildi",
      "Polshalik hakam Shimon Marchinyak Xalqaro futbol tarixi va statistikasi federatsiyasi (IFFHS) talqiniga ko‘ra 2022-yilning eng yaxshi hakami deb topildi.\nJCH—2022 finalidan o‘rin olgan Argentina va Fransiya terma jamoalari o‘rtasidagi uchrashuvni boshqarib borgan hakam 150 ochko to‘plagan.\nIkkinchi o‘rindan italiyalik Daniele Orsato (65 ochko) joy olgan bo‘lsa, fransuz Klemen Tyurpen (40) kuchli uchlikka yakun yasagan. Maykl Oliver (Angliya) va Viktor Gomes (JAR) top-5 likdan joy olgan.\n",
      "https://daryo.uz/static/2023/01/thumb-gettyimages-1451085798-2048x2048.jpg",
      "Sport",
      "12 dekabr 2023",
      "10:28",
      "84",
    ));
    newsList.add(NewsModel(
      "Zendayaning debyuti, Jennifer Kulij bilan bog‘liq kulgili holat: “Oltin globus — 2023” mukofoti g‘oliblari e’lon qilindi (foto)",
      "“Oltin globus” mukofotining 2023-yilgi 80-taqdirlash marosimi bir yillik tanaffusdan so‘ng bo‘lib o‘tdi. Taqdirlash marosimi mojarolarsiz, qizg‘in muhokamalarga boy bo‘lib o‘tdi, eski shikoyatlar haqida esa gapirmagan ma’qul. Harper’s Bazaar nashri “Oltin globus” mukofoti g‘oliblari ro‘yxatini taqdim etdi.\n\nDebyut birinchi marotaba “Oltin globus” mukofotini qo‘lga kiritgan aktrisa Zendaya tomonidan qayd etildi. Hakamlar hay’ati a’zolari uni “Eyforiya” loyihasidagi roli uchun “Dramatik serialdagi eng yaxshi aktrisa” deb topdi. Zendaya taqdirlash marosimini o‘tkazib yuborganidan va g‘alabani to‘liq his etmaganidan afsusda bo‘lishi mumkin.\nOstin Batler esa kutilmaganda “Eng yaxshi aktyor”ga aylangani uchun jonli olqishlarga sazovor bo‘ldi. Nega kutilmagan? Chunki hammasi raqiblar haqida, ular shunchalik kuchli ediki, yosh aktyor uchun g‘alaba qozonish mumkin bo‘lmagan narsadek tuyuldi. Biroq Elvis Presli rolini o‘ynagan Ostin Batler o‘z ijrosi bilan hakamlarning e’tirofiga sazovor bo‘ldi.",
      "https://daryo.uz/static/2023/01/medium-photo_2023-01-12_06-11-19.jpg",
      "Madaniyat",
      "12 dekabr 2023",
      "10:22",
      "90",
    ));
    newsList.add(NewsModel(
      "Transport vazirligi Qozog‘istonda noqulay ob-havo sabab avtobusdan evakuatsiya qilingan o‘zbekistonlik yo‘lovchilar haqida ma’lumot berdi",
      "Qozog‘istonda noqulay ob-havo tufayli yo‘lda qolib ketgan ikki avtobusdan 70 ga yaqin o‘zbekistonlik evakuatsiya qilingandi. O‘zbekiston Transport vazirligi ularning ahvoli haqida ma’lumot berdi.\nVazirlik axborotiga ko‘ra, 9-yanvar kuni soat 18:00 da Uzautotrans service MChJning Yutong Bus ZK6122h9 rusumli avtobusi barcha talablarga rioya etgan holda transport vositasi texnik, haydovchilar esa tibbiy ko‘rik va maxsus yo‘riqnomalardan o‘tib, Toshkent—Moskva yo‘nalishi bo‘yicha 26 nafar yo‘lovchi bilan “Toshkent” avtovokzalidan belgilangan jadval asosida qatnovni amalga oshirish uchun yo‘lga chiqqan.\n\nYo‘nalish davomida 10-yanvar kuni Toshkent vaqti bilan soat taxminan 22:00 da Qozog‘istonning Aqto‘be viloyati Samara—Chimkent trassasida Favqulodda vaziyatlar vazirligi tomonidan noqulay ob-havo sharoiti tufayli yo‘llarda vujudga kelgan muzlamalar sabab shu yo‘nalishda harakatlanayotgan barcha yengil, yuk va jamoat transport vositalari harakati vaqtincha to‘xtatilgan.\n\nShu jumladan, o‘zbekistonliklar bo‘lgan avtobus harakati ham vaqtinchalik to‘xtatilgan. Mahalliy hukumatning FVV departamenti tomonidan yo‘lovchilar o‘sha atrofdagi masjidga vaqtinchalik joylashtirilgan.\n\nYo‘ldagi muzlar va to‘siqlar bartaraf etilgandan so‘ng transport vositalari o‘z harakatlarini davom ettirgan.\n\n“Hozirda Uzautotrans service MChJning Toshkent—Moskva yo‘nalishida qatnovni amalga oshirayotgan avtobus Qozog‘iston va Rossiya chegara bojxona postidan o‘tmoqda. Haydovchi bilan o‘rnatilgan operativ aloqaga ko‘ra, avtobusdagi barcha yo‘lovchilar sog‘-salomat holda yo‘nalishda o‘z safarini davom ettirmoqda”, — deyiladi xabarda.",
      "https://daryo.uz/cache/2023/01/medium-photo_2023-01-11_11-03-09-1280x720.jpg",
      "Mahalliy",
      "12 dekabr 2023",
      "10:40",
      "85",
    ));
    // newsList.add(NewsModel(
    //   "",
    //   "",
    //   "",
    //   "",
    //   "",
    //   "",
    //   "",
    // ));
  }
}
