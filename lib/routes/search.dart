import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:insttergram/main.dart';
import 'package:insttergram/widgets/bottom_bar.dart';

class SearchRoute extends StatelessWidget {
  const SearchRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: null,
        title: IGSearchBar(),
        actions: [Icon(Icons.pin_drop_outlined, size: topIconSize)],
        actionsPadding: EdgeInsets.symmetric(horizontal: 8.0),
      ),
      body: ExploreBody(),
      bottomNavigationBar: BottomBar(selectedIndex: 1),
    );
  }
}

class IGSearchBar extends StatelessWidget {
  const IGSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          ),
          prefixIcon: Icon(Icons.search),
          hintText: 'Search',
          contentPadding: EdgeInsets.zero,
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
    );
  }
}

class ExploreBody extends StatelessWidget {
  const ExploreBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 3,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: [
          QuiltedGridTile(2, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) => Container(
          decoration: BoxDecoration(
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
            border: Border(top: BorderSide(), right: BorderSide()),
          ),
        ),
      ),
    );
  }
}
