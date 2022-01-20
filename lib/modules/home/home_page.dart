import 'package:flutter/material.dart';
import 'package:pageview/modules/home/components/page_grid.dart';
import 'package:pageview/modules/home/components/page_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  IconData icone = Icons.list;

  PageController pageController = PageController(initialPage: 0, keepPage: true);

  void trocarVisualizacao() {
    if (icone == Icons.list) {
      setState(() {
        icone = Icons.list_alt;
      });

      pageController.jumpToPage(0);
    } else {
      setState(() {
        icone = Icons.list;
      });
      pageController.jumpToPage(1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: trocarVisualizacao,
          icon: Icon(icone),
        ),
        actions: [
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.search_rounded),
            onPressed: () {
              //Pesquisa Por Produto
            },
          ),
        ],
        title: const Text(
          "Carrinho De Compras",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white, //const Color.fromRGBO(255, 255, 255, 1),
      ),
      body: PageView(
        controller: pageController,
        children: const [PageList(), PageGrid()],
      ),
    );
  }
}
