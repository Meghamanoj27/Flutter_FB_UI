import 'package:facebook/widgets/assets.dart';
import 'package:facebook/widgets/storyCards.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          StoryCards(
            labelText: 'Add to Story',
            story: dq,
            avathar: dq,
            createStoryStatus: true,
            
          ),
          StoryCards(
            labelText: 'MohanLal',
            story: post1,
            avathar: lal,
            disabledBorder: true,
          ),
          StoryCards(
            labelText: 'Mammootty',
            story: post2,
            avathar: mam,
            disabledBorder: true,
          ),
          StoryCards(
            labelText: 'Tovino',
            story: post3,
            avathar: tovino,
            disabledBorder: true,
          ),
          StoryCards(
            labelText: 'Unni',
            story: post4,
            avathar: unni,
            disabledBorder: true,
          ),
          StoryCards(
            labelText: 'PrithviRaj',
            story: post5,
            avathar: prithvi,
            disabledBorder: true,
          ),
          StoryCards(
            labelText: 'Add to Story',
            story: dq,
            avathar: dq,
            createStoryStatus: true,
            
          ),
          StoryCards(
            labelText: 'MohanLal',
            story: post1,
            avathar: lal,
            disabledBorder: true,
          ),
          StoryCards(
            labelText: 'Mammootty',
            story: post2,
            avathar: mam,
            disabledBorder: true,
          ),
          StoryCards(
            labelText: 'Tovino',
            story: post3,
            avathar: tovino,
            disabledBorder: true,
          ),
          StoryCards(
            labelText: 'Unni',
            story: post4,
            avathar: unni,
            disabledBorder: true,
          ),
          StoryCards(
            labelText: 'PrithviRaj',
            story: post5,
            avathar: prithvi,
            disabledBorder: true,
          ),
          StoryCards(
            labelText: 'Add to Story',
            story: dq,
            avathar: dq,
            createStoryStatus: true,
            
          ),
          StoryCards(
            labelText: 'MohanLal',
            story: post1,
            avathar: lal,
            disabledBorder: true,
          ),
          StoryCards(
            labelText: 'Mammootty',
            story: post2,
            avathar: mam,
            disabledBorder: true,
          ),
          StoryCards(
            labelText: 'Tovino',
            story: post3,
            avathar: tovino,
            disabledBorder: true,
          ),
          StoryCards(
            labelText: 'Unni',
            story: post4,
            avathar: unni,
            disabledBorder: true,
          ),
          StoryCards(
            labelText: 'PrithviRaj',
            story: post5,
            avathar: prithvi,
            disabledBorder: true,
          )
        ],
      ),
    );
  }
}
