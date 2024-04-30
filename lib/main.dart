import 'package:flutter/material.dart';

void main() => runApp(const AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TabBar Arias 0315",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const MiPaginaInicial(),
    );
  }
}

//Stateful
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffa27364),
          title: const Text(
            "Carpinteria Arias 0315",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xFFE0E0E0)),
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Cocinas",
                icon: Icon(Icons.kitchen_outlined, color: Color(0xFFE0E0E0)),
              ),
              Tab(
                text: "Gabinete",
                icon: Icon(Icons.storage_outlined, color: Color(0xFFE0E0E0)),
              ),
              Tab(
                text: "IslaSala",
                icon: Icon(Icons.weekend_outlined, color: Color(0xFFE0E0E0)),
              ),
              Tab(
                text: "MDB",
                icon: Icon(Icons.bathtub_outlined, color: Color(0xFFE0E0E0)),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            _StyledImage(
              imageUrl:
                  "https://raw.githubusercontent.com/AriasSuarezDemianAlexander/img_iOS_C/main/Flutter_A12/cocina6.jpeg",
              borderRadius: 90,
              boxShadow: [
                BoxShadow(
                  color: Colors.brown.withOpacity(1),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
              size: 350,
            ),
            _StyledImage(
              imageUrl:
                  "https://raw.githubusercontent.com/AriasSuarezDemianAlexander/img_iOS_C/main/Flutter_A12/gabinete.png",
              borderRadius: 80,
              boxShadow: [
                BoxShadow(
                  color: Colors.brown.withOpacity(1),
                  blurRadius: 15,
                  offset: const Offset(0, 5),
                ),
              ],
              size: 350,
            ),
            _StyledImage(
              imageUrl:
                  "https://raw.githubusercontent.com/AriasSuarezDemianAlexander/img_iOS_C/main/Flutter_A12/isla2.jpeg",
              borderRadius: 80,
              boxShadow: [
                BoxShadow(
                  color: Colors.brown.withOpacity(1),
                  blurRadius: 15,
                  offset: const Offset(0, 5),
                ),
              ],
              size: 350,
            ),
            _StyledImage(
              imageUrl:
                  "https://raw.githubusercontent.com/AriasSuarezDemianAlexander/img_iOS_C/main/Flutter_A12/mdb6.jpeg",
              borderRadius: 20.0,
              boxShadow: [
                BoxShadow(
                  color: Colors.brown.withOpacity(1),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
              size: 280,
            ),
          ],
        ),
      ),
    );
  }
}

class _StyledImage extends StatelessWidget {
  final String imageUrl;
  final double borderRadius;
  final List<BoxShadow> boxShadow;
  final double size;

  const _StyledImage({
    required this.imageUrl,
    required this.borderRadius,
    required this.boxShadow,
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size,
            height: size,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              boxShadow: boxShadow,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius),
              child: Image(
                image: imageUrl.startsWith('http')
                    ? NetworkImage(imageUrl)
                    : AssetImage(imageUrl) as ImageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//
