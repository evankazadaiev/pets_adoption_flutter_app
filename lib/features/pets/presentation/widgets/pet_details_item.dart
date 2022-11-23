import 'package:flutter/material.dart';

class PetDetailsItem extends StatelessWidget {
  final String label;
  final String value;
  const PetDetailsItem({Key? key, required this.label, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black26.withOpacity(0.6)),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                // FittedBox(
                //   child: Text(
                //     "Brownsdfsdfsd",
                //     style: Theme.of(context)
                //         .textTheme
                //         .titleSmall,
                //   ),
                // ),
                Text(
                  label,
                  style: Theme.of(context).textTheme.caption,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )),
    );
  }
}
