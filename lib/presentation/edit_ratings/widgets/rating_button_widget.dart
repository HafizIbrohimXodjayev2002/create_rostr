import 'package:create_rostr/presentation/edit_ratings/edit_ratings_controller.dart';
import 'package:create_rostr/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../components/title_headers/title_headers.dart';

// ignore: must_be_immutable
class RatingButton extends StatefulWidget {
  RatingButton({
    Key? key,
    required this.ctrl,
    required this.indexRating,
    required this.rated,
  }) : super(key: key);

  final EditRatingsController ctrl;
  final int indexRating;
  int rated;

  @override
  State<RatingButton> createState() => _RatingButtonState();
}

class _RatingButtonState extends State<RatingButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleHeaders(titleLeft: widget.ctrl.ratingsList?[widget.indexRating].ratingName ?? 'Salom'),
        const SizedBox(height: 10),
        Wrap(
          spacing: 6,
          runSpacing: 8,
          children: List.generate(
            10,
            (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    widget.rated = index + 1;
                  });
                  widget.ctrl.onChangedRating(
                    widget.ctrl.ratingsList![widget.indexRating].ratingName ?? '',
                    widget.rated,
                    widget.indexRating,
                  );
                },
                child: Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                    color: index < widget.rated ? AppColors.ratingButton : AppColors.deactiveRatingButton,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: index < widget.rated ? Colors.white : Colors.grey.withOpacity(0.7),
                        size: 20,
                      ),
                      Text(
                        "${index + 1}",
                        style: TextStyle(
                          color: index < widget.rated ? Colors.white : Colors.grey.withOpacity(0.7),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}