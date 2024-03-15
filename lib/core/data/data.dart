// ignore_for_file: non_constant_identifier_names

import 'package:mountain_travel/features/home/model/place_model.dart';

List<PlaceModel> place_items = [
  PlaceModel(
      name: "Misty Mountain",
      trip: "Hiking+Bus",
      price: {
        "tour_price": 550,
        "flight_price": 750,
      },
      image_url: "assets/images/mount1.jpeg",
      timing: {
        "days": "05",
        "hours": "09",
        "minute": "20",
        "date": "25 September",
      },
      belogto: 'Mountain'),
  PlaceModel(
      name: "Evergreen Peak",
      trip: "Trekking+Helicopter",
      price: {
        "tour_price": 900,
        "flight_price": 1200,
      },
      image_url: "assets/images/mount2.jpeg",
      timing: {
        "days": "06",
        "hours": "11",
        "minute": "30",
        "date": "10 October",
      },
      belogto: 'Mountain'),
  PlaceModel(
      name: "Cascade Heights",
      trip: "Climbing+Flight",
      price: {
        "tour_price": 300,
        "flight_price": 650,
      },
      image_url: "assets/images/mount3.jpeg",
      timing: {
        "days": "04",
        "hours": "07",
        "minute": "45",
        "date": "18 August",
      },
      belogto: 'Mountain'),
  PlaceModel(
      name: "Peak Summit",
      trip: "Trekking+Guidance",
      price: {
        "tour_price": 1200,
        "flight_price": 400,
      },
      image_url: "assets/images/mount4.jpeg",
      timing: {
        "days": "08",
        "hours": "04",
        "minute": "15",
        "date": "02 April",
      },
      belogto: 'Mountain'),
  PlaceModel(
      name: "Silver Ridge",
      trip: "Climbing+Flight",
      price: {
        "tour_price": 650,
        "flight_price": 350,
      },
      image_url: "assets/images/mount5.jpeg",
      timing: {
        "days": "10",
        "hours": "12",
        "minute": "50",
        "date": "15 November",
      },
      belogto: 'Mountain'),
];

List<PlaceModel> beach_items = [
  PlaceModel(
      name: "Azure Bay",
      trip: "Swimming+Jet Ski",
      price: {
        "tour_price": 150,
        "flight_price": 430,
      },
      image_url: "assets/images/beach3.jpeg",
      timing: {
        "days": "02",
        "hours": "01",
        "minute": "30",
        "date": "16 August",
      },
      belogto: 'beaches'),
  PlaceModel(
      name: "Golden Sands",
      trip: "Beachcombing+Cruise",
      price: {
        "tour_price": 350,
        "flight_price": 500,
      },
      image_url: "assets/images/beach1.jpeg",
      timing: {
        "days": "03",
        "hours": "08",
        "minute": "40",
        "date": "12 July",
      },
      belogto: 'beaches'),
  PlaceModel(
      name: "Sunny Shores",
      trip: "Snorkeling+Yacht",
      price: {
        "tour_price": 600,
        "flight_price": 850,
      },
      image_url: "assets/images/beach2.jpeg",
      timing: {
        "days": "04",
        "hours": "10",
        "minute": "20",
        "date": "29 July",
      },
      belogto: 'beaches'),
  PlaceModel(
      name: "Coral Cove",
      trip: "Beachcombing+Guidance",
      price: {
        "tour_price": 800,
        "flight_price": 150,
      },
      image_url: "assets/images/beach4.jpeg",
      timing: {
        "days": "07",
        "hours": "03",
        "minute": "10",
        "date": "04 March",
      },
      belogto: 'beaches'),
  PlaceModel(
      name: "Palm Paradise",
      trip: "Sunbathing+Cruise",
      price: {
        "tour_price": 450,
        "flight_price": 250,
      },
      image_url: "assets/images/beach5.jpeg",
      timing: {
        "days": "12",
        "hours": "10",
        "minute": "40",
        "date": "21 November",
      },
      belogto: 'beaches'),
];

List<PlaceModel> hotel_items = [
  PlaceModel(
      name: "Seaside Lodge",
      trip: "Beachfront Stay+Boat",
      price: {
        "tour_price": 400,
        "flight_price": 780,
      },
      image_url: "assets/images/hotel3.jpeg",
      timing: {
        "days": "02",
        "hours": "01",
        "minute": "30",
        "date": "16 August",
      },
      belogto: 'Hotel'),
  PlaceModel(
      name: "Sunrise Resort",
      trip: "Comfort Stay+Limousine",
      price: {
        "tour_price": 1000,
        "flight_price": 1300,
      },
      image_url: "assets/images/hotel2.jpeg",
      timing: {
        "days": "04",
        "hours": "10",
        "minute": "20",
        "date": "29 July",
      },
      belogto: 'Hotel'),
  PlaceModel(
      name: "Grand Summit Hotel",
      trip: "Luxury Stay+Shuttle",
      price: {
        "tour_price": 700,
        "flight_price": 900,
      },
      image_url: "assets/images/hotel1.jpeg",
      timing: {
        "days": "03",
        "hours": "08",
        "minute": "40",
        "date": "12 July",
      },
      belogto: 'Hotel'),
  PlaceModel(
      name: "Forest Haven Inn",
      trip: "Nature Retreat+Guidance",
      price: {
        "tour_price": 1100,
        "flight_price": 300,
      },
      image_url: "assets/images/hotel4.jpeg",
      timing: {
        "days": "07",
        "hours": "03",
        "minute": "10",
        "date": "04 March",
      },
      belogto: 'Hotel'),
  PlaceModel(
      name: "Tropical Oasis",
      trip: "Beachside Villa+Guidance",
      price: {
        "tour_price": 600,
        "flight_price": 400,
      },
      image_url: "assets/images/hotel5.jpeg",
      timing: {
        "days": "12",
        "hours": "10",
        "minute": "40",
        "date": "21 November",
      },
      belogto: 'Hotel'),
];

List<PlaceModel> restaurant_items = [
  PlaceModel(
      name: "Summit View Restaurant",
      trip: "Mountain Dining+Shuttle",
      price: {
        "tour_price": 450,
        "flight_price": 650,
      },
      image_url: "assets/images/restaurant1.jpeg",
      timing: {
        "days": "03",
        "hours": "08",
        "minute": "40",
        "date": "12 July",
      },
      belogto: 'Restaurant'),
  PlaceModel(
      name: "Sea Breeze Eatery",
      trip: "Beachfront Dining+Boat",
      price: {
        "tour_price": 750,
        "flight_price": 1050,
      },
      image_url: "assets/images/restaurant2.jpeg",
      timing: {
        "days": "04",
        "hours": "10",
        "minute": "20",
        "date": "29 July",
      },
      belogto: 'Restaurant'),
  PlaceModel(
      name: "Coastal Cove Cafe",
      trip: "Seaside Dining+Jet Ski",
      price: {
        "tour_price": 250,
        "flight_price": 630,
      },
      image_url: "assets/images/restaurant3.jpeg",
      timing: {
        "days": "02",
        "hours": "01",
        "minute": "30",
        "date": "16 August",
      },
      belogto: 'Restaurant'),
  PlaceModel(
      name: "Wilderness Restaurant",
      trip: "Forest Dining+Guidance",
      price: {
        "tour_price": 1200,
        "flight_price": 250,
      },
      image_url: "assets/images/restaurant4.jpeg",
      timing: {
        "days": "07",
        "hours": "03",
        "minute": "10",
        "date": "04 March",
      },
      belogto: 'Restaurant'),
  PlaceModel(
      name: "Tropical Treats",
      trip: "Beachside Dining+Cruise",
      price: {
        "tour_price": 550,
        "flight_price": 350,
      },
      image_url: "assets/images/restaurant5.jpeg",
      timing: {
        "days": "12",
        "hours": "10",
        "minute": "40",
        "date": "21 November",
      },
      belogto: 'Restaurant'),
];
