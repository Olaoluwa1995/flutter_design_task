import 'package:design_test/constants/app_images.dart';
import 'package:design_test/models/feed_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ContentList extends StatelessWidget {
  const ContentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final feeds = Feeds.feeds;
    return Container(
      width: size.width,
      height: size.height * 0.75,
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      margin: const EdgeInsets.only(top: 10),
      child: MasonryGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.only(
            top: 10,
            bottom: 60,
            left: size.width * 0.02,
            right: size.width * 0.02),
        itemCount: feeds.length,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (BuildContext context, int index) {
          final Feed feed = feeds[index];
          return Container(
            height: feed.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 6,
                  spreadRadius: 5,
                  offset: const Offset(0, 0),
                  color: Colors.grey.withOpacity(0.4),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: feed.height > 180 ? 8 : 7,
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.asset(
                      feed.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: feed.height > 180 ? 2 : 3,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(10)),
                    child: Container(
                      color: Colors.white60,
                      padding: const EdgeInsets.only(
                        right: 10,
                        left: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 8,
                                child: SizedBox(
                                  child: RichText(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                      style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.black.withOpacity(0.7)),
                                      children: [
                                        TextSpan(
                                            text: feed.boldText,
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black)),
                                        TextSpan(
                                          text: feed.text,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade500,
                                radius: 14,
                                backgroundImage:
                                    const AssetImage(AppImages.image1),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text(
                              feed.time,
                              style: const TextStyle(
                                  fontSize: 8,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
