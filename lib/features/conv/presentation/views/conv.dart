import 'package:flutter/material.dart';
import 'package:mentoracademy/features/conv/presentation/view_model/Item_conv_model.dart';

class Conv extends StatelessWidget {
  Conv({super.key});

  final List<ItemConvModel> userModel = [
    ItemConvModel(
        image: 'assets/images/me2.jpg',
        name: 'Omar Shawkey',
        number: '+201065067453',
        date: '12.00 PM',
        counter: '5'),
    ItemConvModel(
        image: 'assets/images/me2.jpg',
        name: 'Omar Shawkey',
        number: '+201065067453',
        date: '12.00 PM',
        counter: '5'),
    ItemConvModel(
        image: 'assets/images/me2.jpg',
        name: 'Omar Shawkey',
        number: '+201065067453',
        date: '12.00 PM',
        counter: '5'),
    ItemConvModel(
        image: 'assets/images/me2.jpg',
        name: 'Omar Shawkey',
        number: '+201065067453',
        date: '12.00 PM',
        counter: '5'),
    ItemConvModel(
        image: 'assets/images/me2.jpg',
        name: 'Omar Shawkey',
        number: '+201065067453',
        date: '12.00 PM',
        counter: '5'),
    ItemConvModel(
        image: 'assets/images/me2.jpg',
        name: 'Omar Shawkey',
        number: '+201065067453',
        date: '12.00 PM',
        counter: '5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) =>
                buildItem(userModel[index], context),
            itemCount: userModel.length,
          ),
        )
      ],
    );
  }

  Widget buildItem(ItemConvModel model, context) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage(model.image),
            ),
            const SizedBox(
              width: 25.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18.0,
                      height: 1.4,
                    ),
                  ),
                  Text(
                    model.number,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          height: 1.4,
                          fontSize: 14.0,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  model.date,
                  style: const TextStyle(
                    color: Colors.grey,
                    height: 1.4,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                CircleAvatar(
                  radius: 13.0,
                  backgroundColor: Colors.green,
                  child: Text(
                    model.counter,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
}
