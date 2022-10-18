import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.all(16)),
          Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                  child: Text(
                    'ShopX',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.list)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.grid_view)),
            ],
          ),
          const Padding(padding: EdgeInsets.all(10)),
          Expanded(
            child: StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.black,
                    child: const Text('0')),
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                    child: const Text('0')),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: const Text('0')),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.cyan,
                      child: const Text('0')),
                ),
                Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                    child: const Text('0')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
