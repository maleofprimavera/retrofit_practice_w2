import 'package:flutter/material.dart';
import 'package:retrofit_practice_w2/data/news_future.dart';

class ActorNewsWidget extends StatefulWidget {
  const ActorNewsWidget({super.key});

  @override
  State<ActorNewsWidget> createState() => _ActorNewsWidgetState();
}

class _ActorNewsWidgetState extends State<ActorNewsWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getActorNewsFuture("nm0001667"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  '${snapshot.error} occurred',
                  style: const TextStyle(fontSize: 18),
                ),
              );
              // if we got our data
            } else {
              return GridView.builder(
                  itemCount: snapshot.data?.items?.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.blue,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      child: Text("${snapshot.data?.items?[index].head}"),
                    );
                  });
            }
          }
        });
  }
}
