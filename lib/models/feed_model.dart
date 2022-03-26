import 'package:design_test/constants/app_images.dart';

class Feed {
  final int id;
  final String boldText;
  final String text;
  final String time;
  final String image;
  final double height;

  Feed({
    required this.id,
    required this.boldText,
    required this.text,
    required this.time,
    required this.image,
    required this.height,
  });
}

class Feeds {
  static List<Feed> feeds = [
    Feed(
      id: 1,
      boldText: 'Ingrid Bergman ',
      text: 'Selfie Dare Accepted',
      time: '23 Min Ago',
      image: AppImages.image1,
      height: 180,
    ),
    Feed(
      id: 2,
      boldText: 'Meryl Streep ',
      text: 'Pose in the lockdown without studio',
      time: '23 Min Ago',
      image: AppImages.image2,
      height: 240,
    ),
    Feed(
      id: 3,
      boldText: 'Hanah Jones ',
      text: 'Photobooth at home done with #sis',
      time: '23 Min Ago',
      image: AppImages.image3,
      height: 170,
    ),
    Feed(
      id: 4,
      boldText: 'Misa Amane ',
      text: 'Flying kiss to my ex boyfriend #dare',
      time: '23 Min Ago',
      image: AppImages.image4,
      height: 220,
    ),
    Feed(
      id: 5,
      boldText: 'Jason Cruz ',
      text: '360 Degree tornado kick #challenge',
      time: '23 Min Ago',
      image: AppImages.image5,
      height: 240,
    ),
    Feed(
      id: 6,
      boldText: 'Meghan Trainor ',
      text: 'All about that bass #dare',
      time: '23 Min Ago',
      image: AppImages.image6,
      height: 220,
    ),
    Feed(
      id: 7,
      boldText: 'Ingrid Bergman ',
      text: 'Selfie Dare Accepted',
      time: '23 Min Ago',
      image: AppImages.image7,
      height: 240,
    ),
  ];
}
