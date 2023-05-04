import 'package:eventer_app/data/get_list_events/models/event.dart';
import 'package:eventer_app/presentation/bloc/get_event_bloc/get_event_bloc.dart';
import 'package:eventer_app/presentation/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventBody extends StatelessWidget {
  const EventBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<GetEventBloc>().state;
    return state.when(
        loading: () => const Center(
              child: MyLoadingWidget(),
            ),
        loaded: (event) => DetailsPage(event),
        error: (error) => Text(error));
  }
}

// details page
class DetailsPage extends StatelessWidget {
  final Event event;

  const DetailsPage(this.event, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  NetworkImage(event.venues[0].photos[0]),
                              fit: BoxFit.cover)),
                    ),
                    Positioned.fill(
                        child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7)
                        ],
                                    begin: Alignment.center,
                                    end: Alignment.bottomCenter)))),
                    Positioned(
                        bottom: 30,
                        left: 30,
                        right: 0,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(event.name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              Text(event.venues[0].address,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20)),
                            ])),
                    AppBar(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        iconTheme: const IconThemeData(color: Colors.white),
                        title: const Center(
                            child: Icon(Icons.terrain,
                                color: Colors.white, size: 40)),
                        actions: [
                          Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: const Icon(Icons.pending,
                                  color: Colors.white, size: 30))
                        ])
                  ],
                )),
            Expanded(
                child: Column(
              children: [
                // DetailsRatingBar(),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: Text('About ${event.name}',
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold))),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20),
                        child: Text(event.description,
                            style: const TextStyle(fontSize: 12)))
                  ],
                )),
                // DetailsBottomActions()
              ],
            ))
          ],
        ));
  }
}
