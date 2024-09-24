import 'package:bookly/serach/presentaion/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SerachView extends StatelessWidget {
  const SerachView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
