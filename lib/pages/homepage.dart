import 'package:brt_peshawar_clone/widgets/bicyclegrid.dart';
import 'package:brt_peshawar_clone/widgets/busgrid.dart';
import 'package:brt_peshawar_clone/widgets/imageprovider.dart';
import 'package:brt_peshawar_clone/widgets/ticketgrid.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;
  final colors = [
    const Color(0xff03a455),
    const Color(0xffee1f2a),
    const Color(0xff03a455)
  ];
  late Color indicatorColor;
  bool currentbus = false;
  bool currentbicycle = false;
  bool currentticket = false;
  int activeIndex = 0;
  bool QRCodeButton = false;

  @override
  void initState() {
    _tabcontroller = TabController(length: 3, vsync: this)
      ..addListener(() {
        setState(() {
          indicatorColor = colors[_tabcontroller.index];
          if (_tabcontroller.index == 0) {
            currentbus = true;
            currentbicycle = false;
            currentticket = false;
            QRCodeButton = false;
          } else if (_tabcontroller.index == 1) {
            QRCodeButton = true;
            currentbicycle = true;
            currentticket = false;
            currentbus = false;
          } else {
            QRCodeButton = false;
            currentticket = true;
            currentbus = false;
            currentbicycle = false;
          }
        });
      });
    indicatorColor = colors[0];

    super.initState();
  }

  @override
  void dispose() {
    _tabcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: const Color(0xff03a455),
        title: const Center(
          child: Text(
            "Zu Peshawar",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(CupertinoIcons.bell_fill))
        ],
      ),
      drawer: const Mydrawer(),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.085,
                color: Colors.black87,
                padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 5.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Welcome,SAJID AFRIDI",
                          style: TextStyle(
                              color: CupertinoColors.white, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "RS 95",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.white,
                              fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *0.33,
                width: MediaQuery.of(context).size.width *1.0,
                child: Stack(
                  children: [
                    CarouselSlider(
                      items: [
                        imageprovider('assets/brt_pic1(imran khan).jpg'),
                        imageprovider('assets/brt_pic2.jpg'),
                        imageprovider('assets/brt_pic3.jpg'),
                        imageprovider('assets/brt_pic4.jpg'),
                      ],
                      options: CarouselOptions(
                        onPageChanged: (index, reason) =>
                            setState(() => activeIndex = index),
                        enableInfiniteScroll: true,
                        viewportFraction: 1.0,
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 5),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 500),
                      ),
                    ),
                    Positioned(
                      child: buildIndicator(),
                      top: 200.0,
                      bottom: 0,
                      right: 0,
                      left: 185,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                height: MediaQuery.of(context).size.height*0.08,
                color: CupertinoColors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TabBar(
                      tabs: [
                        Tab(
                          child: currentbus
                              ? const Text(
                                  '     Bus     ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : const Text(
                                  '     Bus     ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                        ),
                        Tab(
                          child: currentbicycle
                              ? const Text(
                                  '    Bicycle   ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : const Text(
                                  '    Bicycle   ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                        ),
                        Tab(
                          child: currentticket
                              ? const Text(
                                  '    Ticket   ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : const Text(
                                  '    Ticket   ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                        ),
                      ],
                      controller: _tabcontroller,
                      isScrollable: true,
                      indicatorColor: indicatorColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 3.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.29,
                child: TabBarView(
                  children: const [
                    busGrid(),
                    bicycleGrid(),
                    ticketGrid(),
                  ],
                  controller: _tabcontroller,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width / 1,
                color: CupertinoColors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 30.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: QRCodeButton
                      ? const Text(
                          "QR SCAN",
                          style: TextStyle(
                              color: CupertinoColors.white, fontSize: 17),
                        )
                      : const Text(
                          "ZU WALLET",
                          style: TextStyle(
                              color: CupertinoColors.white, fontSize: 17),
                        ),
                  style: ButtonStyle(
                    backgroundColor: QRCodeButton
                        ? MaterialStateProperty.all(const Color(0xffee1f2a))
                        : MaterialStateProperty.all(const Color(0xff03a455)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side: const BorderSide(color: Colors.green)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 4,
        effect: const SwapEffect(
          dotHeight: 4,
          dotWidth: 4,
          activeDotColor: Colors.white,
          dotColor: Colors.black54,
        ),
      );
}
