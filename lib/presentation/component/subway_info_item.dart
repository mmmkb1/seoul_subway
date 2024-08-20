import 'package:flutter/material.dart';

import '../../domain/model/subway.dart';

class SubwayInfoItem extends StatelessWidget {
  final Subway subway;

  const SubwayInfoItem({
    super.key,
    required this.subway,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        color: Colors.white,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.subway,size: 50,),
              Text(subway.trainLineNm),
              Text('${subway.barvlDt}분 후 ${subway.arvlMsg3}')
            ],
          ),
        ),
      ),
    );
  }
}

