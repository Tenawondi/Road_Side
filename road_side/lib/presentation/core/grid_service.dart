import 'package:flutter/material.dart';
import 'package:road_side/presentation/garage_detail/detail.dart';
import '/util/const.dart';
import 'smooth_star_rating.dart';

class GridService extends StatelessWidget {
  final String name;
  final String img;
  final double rating;
  final int review_count;

  GridService(
      {Key? key,
      required this.name,
      required this.img,
      required this.rating,
      required this.review_count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListView(
        shrinkWrap: false,
        primary: false,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3.6,
                width: MediaQuery.of(context).size.width / 2.2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    "$img",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: -10.0,
                bottom: 3.0,
                child: RawMaterialButton(
                  onPressed: () {},
                  fillColor: Colors.white,
                  shape: CircleBorder(),
                  elevation: 4.0,
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                      size: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.0, top: 8.0),
            child: Text(
              "$name",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
              ),
              maxLines: 2,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.0, top: 2.0),
            child: Row(
              children: [
                SmoothStarRating(
                  onRatingChanged: (double rating) {},
                  color: Constants.ratingBG,
                  borderColor: Color.fromARGB(0, 12, 12, 2),
                  size: 10.0,
                  starCount: 5,
                  allowHalfRating: true,
                  rating: rating,
                ),
                Text(
                  "$rating ($review_count Reviews)",
                  style: TextStyle(
                    fontSize: 11.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    onTap: (){
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) {
            return Container();
            //TODO - return Detail();
          },
        ),
      );
    },);
  }
}
