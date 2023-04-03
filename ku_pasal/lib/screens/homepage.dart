import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
//swiper

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _index = 0;
  int lastpage = 4;
  int firstpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 200, // card height
              child: PageView.builder(
                //make it go in circle

                itemCount: 100,
                controller: PageController(viewportFraction: 1),
                //make the scroll go again to card 1
                onPageChanged: (int index) {
                  setState(() {
                    _index = index;
                  });
                  if (_index % (lastpage - 1) == 0) {
                    setState(() {
                      _index = firstpage;
                    });
                  }
                },
                itemBuilder: (_, i) {
                  return Transform.scale(
                    scale: i == _index ? 1 : 0.9,
                    child: Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Image.network(
                          "https://picsum.photos/200/30$_index",
                          //fill the whole card
                          fit: BoxFit.fill,

                          height: 200,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//list of images
class ScrollBar extends StatelessWidget {
  const ScrollBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 100.0,
          height: 100.0,
          child: ListTile(
            leading: Text('Item $index'),
          ),
        );
      },
    );
  }
}
