import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seoul_subway/presentation/subway/subway_screen_view_model.dart';

import '../component/input_field_search.dart';

class SubwayScreen extends StatelessWidget {
  const SubwayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SubwayScreenViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '지하철 실시간 정보',
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Text('역 이름'),
                const SizedBox(width: 8),
                InputFieldSearch(
                  onSearch: (String text) {
                    final temp = viewModel.setSearchText(text);
                    print('1초후 입력된 값 $temp');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
