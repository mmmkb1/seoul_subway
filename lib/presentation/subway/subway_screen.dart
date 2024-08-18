import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seoul_subway/presentation/component/subway_info_item.dart';
import 'package:seoul_subway/presentation/subway/subway_screen_view_model.dart';

import '../../domain/model/subway.dart';
import '../component/input_field_search.dart';

class SubwayScreen extends StatelessWidget {
  const SubwayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mockSubways = [
      Subway(
        trainLineNm: "Line 1 - Seoul Station",
        barvlDt: 12,
        arvlMsg3: "서울역 도착",
      ),
      Subway(
        trainLineNm: "Line 2 - Gangnam Station",
        barvlDt: 3,
        arvlMsg3: "강남역 도착",
      ),
      Subway(
        trainLineNm: "Line 3 - Dongjak Station",
        barvlDt: 6,
        arvlMsg3: "동작역 도착",
      ),
    ];

    final viewModel = context.watch<SubwayScreenViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '지하철 실시간 정보',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text('역 이름'),
                const SizedBox(width: 8),
                InputFieldSearch(
                  onSearch: (String text) {
                    final temp = viewModel.setSearchText(text);
                    // print('1초후 입력된 값 $temp');
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text('도착 정보'),
            const SizedBox(height: 20),
            SizedBox(
              height: 400,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15.0,
                ),
                itemCount: mockSubways.length,
                itemBuilder: (BuildContext context, int index) {
                  return SubwayInfoItem(subway: mockSubways[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
