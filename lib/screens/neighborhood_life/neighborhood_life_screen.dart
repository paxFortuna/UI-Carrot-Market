import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/neighborhood_life.dart';
import '../components/appbar_preferred_size.dart';
import 'components/life_body.dart';
import 'components/life_header.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  NeighborhoodLifeScreen({Key? key}) : super(key: key);

  // _appBar 변수 설정으로 인해 cosnt 설정할 수 없음
  // 변수로 설정하는 것이 성능에 유리하지만은 않을 듯 한데...
  final AppBar _appBar = AppBar(
    title: const Text(
      'Neighbor',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    actions: [
      IconButton(
        icon: const Icon(
          CupertinoIcons.search,
          color: Colors.deepPurple,
        ),
        onPressed: () {},
      ),
      IconButton(
          icon: const Icon(
            CupertinoIcons.plus_rectangle_on_rectangle,
            color: Colors.deepPurple,
          ),
          onPressed: () {}),
      IconButton(
        icon: const Icon(
          CupertinoIcons.bell,
          color: Colors.deepPurple,
        ),
        onPressed: () {},
      ),
    ],
    bottom: appBarBottomLine,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: _appBar,
      body: ListView(
        children: [
          LifeHeader(),
          ...List.generate(
            neighborhoodLifeList.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LifeBody(
                neighborhoodLife: neighborhoodLifeList[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
