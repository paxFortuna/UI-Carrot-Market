import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../models/neighborhood_life.dart';
import '../../../theme.dart';
import '../../components/image_container.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;

  const LifeBody({Key? key, required this.neighborhoodLife}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 0.5, color: Color(0xFFD4D5DD)),
        ),
      ),
      child: Column(
        children: [
          _buildTop(),
          _buildWriter(),
          _buildWriting(),
          _buildImage(),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey[300],
          ),
          _buildTail(neighborhoodLife.commentCount),
        ],
      ),
    );
  }

  Padding _buildTop() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color: Color.fromRGBO(247, 247, 247, 1),
            ),
            child:
            Text(neighborhoodLife.category, style: textTheme.bodyText2),
          ),
          Text(
            neighborhoodLife.date,
            style: textTheme.bodyText2,
          ),
        ],
      ),
    );
  }

  Padding _buildWriter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          ImageContainer(
            width: 30,
            height: 30,
            borderRadius: 15,
            imageUrl: neighborhoodLife.profileImgUri,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: ' ${neighborhoodLife.userName}',
                    style: textTheme.bodyText1),
                TextSpan(text: ' ${neighborhoodLife.location}'),
                TextSpan(text: ' ?????? ${neighborhoodLife.authCount}???')
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _buildWriting() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          neighborhoodLife.content,
          style: textTheme.bodyText1,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  Visibility _buildImage() {
    return Visibility(
      visible: neighborhoodLife.contentImgUri != '',
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Image.network(
          neighborhoodLife.contentImgUri,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Padding _buildTail(int commentCount) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.faceSmile,
            color: Colors.grey,
            size: 22,
          ),
          const SizedBox(width: 8),
          const Text(
            '????????????',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          const SizedBox(width: 22),
          const Icon(
            FontAwesomeIcons.comment,
            color: Colors.grey,
            size: 22,
          ),
          const SizedBox(width: 8),
          Text(
            "${"????????????"} $commentCount",
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}