import 'package:flutter/material.dart';

class Events {
  final String event_name;
  final String img;

  const Events({
    required this.event_name,
    required this.img,
  });
}

List<Events> eventsData = const [
  Events(
    event_name: 'CINE',
    img: 'assets/images/cineBg.png',
  ),
  Events(
    event_name: 'The Initiative',
    img: 'assets/images/initiative.png',
  ),
  Events(
    event_name: 'RDM',
    img: 'assets/images/rdm.png',
  ),
  Events(
    event_name: 'Vacanza',
    img: 'assets/images/vacanza.png',
  ),
];
