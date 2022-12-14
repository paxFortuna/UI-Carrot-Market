import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/recommend_store.dart';
import '../../theme.dart';
import '../components/appbar_preferred_size.dart';
import 'components/bottom_title_icon.dart';
import 'components/round_border_text.dart';
import 'components/search_text_field.dart';
import 'components/store_item.dart';

class NearMeScreen extends StatelessWidget {
  NearMeScreen({Key? key}) : super(key: key);

  final AppBar _appBar = AppBar(
    title: const Text(
      'Near Me',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    actions: [
      IconButton(
        icon: const Icon(
          CupertinoIcons.pencil,
          color: Colors.deepPurple,
        ),
        onPressed: () {},
      ),
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
      appBar: _appBar,
      body: ListView(
        children: [
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SearchTextField(),
          ),
          SizedBox(
            height: 66,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: searchKeyword.length,
              itemBuilder: (context, index) {
                return Center(
                  child: RoundBorderText(
                    title: searchKeyword[index],
                    position: index,
                  ),
                );
              },
            ),
          ),
          Divider(
            color: Colors.grey[100],
            thickness: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 30),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 22.0,
              runSpacing: 30,
              children: const [
                BottomTitleIcon(
                  title: '????????????',
                  iconData: FontAwesomeIcons.user,
                ),
                BottomTitleIcon(
                  title: '??????/?????????',
                  iconData: FontAwesomeIcons.pen,
                ),
                BottomTitleIcon(
                  title: '????????????',
                  iconData: FontAwesomeIcons.apple,
                ),
                BottomTitleIcon(
                  title: '?????????',
                  iconData: FontAwesomeIcons.hotel,
                ),
                BottomTitleIcon(
                  title: '?????????',
                  iconData: FontAwesomeIcons.car,
                ),
                BottomTitleIcon(
                  title: '?????????',
                  iconData: FontAwesomeIcons.car,
                ),
                BottomTitleIcon(
                  title: '?????????',
                  iconData: FontAwesomeIcons.car,
                ),
                BottomTitleIcon(
                  title: '??????/??????',
                  iconData: FontAwesomeIcons.chessBishop,
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('???????????? ?????? ??????', style: textTheme.headline2),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 288,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendStoreList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: StoreItem(
                    recommendStore: recommendStoreList[index],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 40)
        ],
      ),
    );
  }
}
