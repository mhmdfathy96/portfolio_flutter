
// import '../../features/events/domain/entities/event.dart';
// import '../../features/events/domain/entities/event_notification.dart';

// EventEntity event1 = EventEntity(
//     id: 0,
//     eventType: EventType.mine,
//     eventName: "Event 1",
//     note: "this event for public Celebration this event for public Celebration",
//     location: "New York, United States Of America",
//     eventNotification: EventNotification.before10mins,
//     eventDate: DateTime.now(),
//     startTime: DateTime.now(),
//     endTime: DateTime.now().add(const Duration(hours: 1)));
// EventEntity event2 = EventEntity(
//     id: 0,
//     eventType: EventType.artist,
//     eventName: "Event 2",
//     note:
//         "this event for public Celebration this event for public Celebration this event for public Celebration",
//     location: "NY, USA",
//     eventNotification: EventNotification.before15mins,
//     eventDate: DateTime.now(),
//     startTime: DateTime.now());
// EventEntity event3 = EventEntity(
//     id: 0,
//     eventName: "Event 3",
//     eventType: EventType.mine,
//     note: "this event for public Celebration",
//     location: "NY, USA",
//     eventNotification: EventNotification.before30mins,
//     eventDate: DateTime.now(),
//     startTime: DateTime.now());
// EventEntity event4 = EventEntity(
//     id: 0,
//     eventName: "Event 4",
//     eventType: EventType.mine,
//     note: "this event for public Celebration",
//     location: "NY, USA",
//     eventNotification: EventNotification.before25mins,
//     eventDate: DateTime.now(),
//     startTime: DateTime.now());
// EventEntity event5 = EventEntity(
//     id: 0,
//     eventName: "Event 5",
//     eventType: EventType.mine,
//     note: "this event for public Celebration",
//     location: "NY, USA",
//     eventNotification: EventNotification.before10mins,
//     eventDate: DateTime.now(),
//     startTime: DateTime.now());
// EventEntity event6 = EventEntity(
//   id: 0,
//   eventType: EventType.artist,
//   eventName: "Event 6",
//   note:
//       "this event for public Celebration this event for public Celebration this event for public Celebration",
//   location: "NY, USA",
//   eventNotification: EventNotification.before15mins,
//   eventDate: DateTime.now(),
//   startTime: DateTime.now(),
//   following: true,
// );
// EventEntity event7 = EventEntity(
//     id: 0,
//     eventType: EventType.artist,
//     eventName: "Event 7",
//     note:
//         "this event for public Celebration this event for public Celebration this event for public Celebration",
//     location: "NY, USA",
//     eventNotification: EventNotification.before15mins,
//     eventDate: DateTime.now(),
//     startTime: DateTime.now());
// EventEntity event8 = EventEntity(
//     id: 0,
//     eventType: EventType.artist,
//     eventName: "Event 8",
//     note:
//         "this event for public Celebration this event for public Celebration this event for public Celebration",
//     location: "NY, USA",
//     eventNotification: EventNotification.before15mins,
//     eventDate: DateTime.now(),
//     startTime: DateTime.now());
// EventEntity event9 = EventEntity(
//     id: 0,
//     eventType: EventType.artist,
//     eventName: "Event 9",
//     note:
//         "this event for public Celebration this event for public Celebration this event for public Celebration",
//     location: "NY, USA",
//     eventNotification: EventNotification.before15mins,
//     eventDate: DateTime.now(),
//     startTime: DateTime.now());
// EventEntity event10 = EventEntity(
//     id: 0,
//     eventType: EventType.artist,
//     eventName: "Event 10",
//     note:
//         "this event for public Celebration this event for public Celebration this event for public Celebration",
//     location: "NY, USA",
//     eventNotification: EventNotification.before15mins,
//     eventDate: DateTime.now(),
//     startTime: DateTime.now());

// final List<GroupOfArtists> groupsOfArtists = [
//   GroupOfArtists(
//       groupId: 1,
//       groupName: "BIGBANG",
//       pictureURL:
//           "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Big_Bang_2016_%27MADE%27_Press_Conference.png/1200px-Big_Bang_2016_%27MADE%27_Press_Conference.png",
//       artists: [
//         Artist(
//           artistId: 1,
//           artistName: "G-Dragon",
//           artistFollowers: 2000,
//           pictureURL:
//               "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRprlBFXSaAfeEpZz9F4pAEC_3FSfPM_IWEdTTUtE6sfufsjge7FotdTJ4S0ebvlJDYtqzujMMQHn-ZgLM",
//           major: "Main Rapper",
//           following: false,
//         ),
//         Artist(
//           artistId: 1,
//           artistName: "Taeyang",
//           major: "Main Dancer",
//           artistFollowers: 3000,
//           pictureURL:
//               "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQTHrMD7Hx-hSFy4rQRoxVmk2svssELeE0cIRu58aEi_d0lXTEiZ0ApLBcwKjsXQ78WY95frJ7dDJGLrBU",
//           following: false,
//         ),
//         Artist(
//           artistId: 1,
//           artistName: "G-Dragon",
//           major: "Main Rapper",
//           artistFollowers: 2000,
//           pictureURL:
//               "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRprlBFXSaAfeEpZz9F4pAEC_3FSfPM_IWEdTTUtE6sfufsjge7FotdTJ4S0ebvlJDYtqzujMMQHn-ZgLM",
//           following: false,
//         ),
//         Artist(
//           artistId: 1,
//           artistName: "Taeyang",
//           major: "Main Dancer",
//           artistFollowers: 3000,
//           pictureURL:
//               "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQTHrMD7Hx-hSFy4rQRoxVmk2svssELeE0cIRu58aEi_d0lXTEiZ0ApLBcwKjsXQ78WY95frJ7dDJGLrBU",
//           following: false,
//         ),
//       ]),
//   GroupOfArtists(
//       groupId: 1,
//       groupName: "BTS",
//       pictureURL:
//           "https://ibighit.com/bts/images/profile/proof/member/bts-pc.jpg",
//       artists: [
//         Artist(
//           artistId: 1,
//           artistName: "Jungkook",
//           artistFollowers: 24000,
//           major: "Main Vocals",
//           pictureURL:
//               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVV1YjdvYZkK2A63pPCku8Sx6D82rVrEdMAHBxdSbU0Fhx2jzx",
//           following: false,
//         ),
//         Artist(
//           artistId: 1,
//           artistName: "Jin",
//           artistFollowers: 32000,
//           major: "Vocals",
//           pictureURL:
//               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBHO3tz3Y96BQKOFAkxCTOZuXW3ZaTf6iNUH-6fa3197cNj8cG",
//           following: false,
//         ),
//         Artist(
//           artistId: 1,
//           artistName: "Jungkook",
//           artistFollowers: 24000,
//           major: "Main Vocals",
//           pictureURL:
//               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVV1YjdvYZkK2A63pPCku8Sx6D82rVrEdMAHBxdSbU0Fhx2jzx",
//           following: false,
//         ),
//         Artist(
//           artistId: 1,
//           artistName: "Jin",
//           artistFollowers: 32000,
//           major: "Vocals",
//           pictureURL:
//               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBHO3tz3Y96BQKOFAkxCTOZuXW3ZaTf6iNUH-6fa3197cNj8cG",
//           following: false,
//         ),
//       ]),
//   GroupOfArtists(
//       groupId: 1,
//       groupName: "BIGBANG",
//       pictureURL:
//           "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Big_Bang_2016_%27MADE%27_Press_Conference.png/1200px-Big_Bang_2016_%27MADE%27_Press_Conference.png",
//       artists: [
//         Artist(
//           artistId: 1,
//           artistName: "G-Dragon",
//           artistFollowers: 2000,
//           pictureURL:
//               "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRprlBFXSaAfeEpZz9F4pAEC_3FSfPM_IWEdTTUtE6sfufsjge7FotdTJ4S0ebvlJDYtqzujMMQHn-ZgLM",
//           major: "Main Rapper",
//           following: false,
//         ),
//         Artist(
//           artistId: 1,
//           artistName: "Taeyang",
//           major: "Main Dancer",
//           artistFollowers: 3000,
//           pictureURL:
//               "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQTHrMD7Hx-hSFy4rQRoxVmk2svssELeE0cIRu58aEi_d0lXTEiZ0ApLBcwKjsXQ78WY95frJ7dDJGLrBU",
//           following: false,
//         ),
//         Artist(
//           artistId: 1,
//           artistName: "G-Dragon",
//           major: "Main Rapper",
//           artistFollowers: 2000,
//           pictureURL:
//               "https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcRprlBFXSaAfeEpZz9F4pAEC_3FSfPM_IWEdTTUtE6sfufsjge7FotdTJ4S0ebvlJDYtqzujMMQHn-ZgLM",
//           following: false,
//         ),
//         Artist(
//           artistId: 1,
//           artistName: "Taeyang",
//           major: "Main Dancer",
//           artistFollowers: 3000,
//           pictureURL:
//               "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQTHrMD7Hx-hSFy4rQRoxVmk2svssELeE0cIRu58aEi_d0lXTEiZ0ApLBcwKjsXQ78WY95frJ7dDJGLrBU",
//           following: false,
//         ),
//       ]),
//   GroupOfArtists(
//       groupId: 1,
//       groupName: "BTS",
//       pictureURL:
//           "https://ibighit.com/bts/images/profile/proof/member/bts-pc.jpg",
//       artists: [
//         Artist(
//           artistId: 1,
//           artistName: "Jungkook",
//           artistFollowers: 24000,
//           major: "Main Vocals",
//           pictureURL:
//               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVV1YjdvYZkK2A63pPCku8Sx6D82rVrEdMAHBxdSbU0Fhx2jzx",
//           following: false,
//         ),
//         Artist(
//           artistId: 1,
//           artistName: "Jin",
//           artistFollowers: 32000,
//           major: "Vocals",
//           pictureURL:
//               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBHO3tz3Y96BQKOFAkxCTOZuXW3ZaTf6iNUH-6fa3197cNj8cG",
//           following: false,
//         ),
//         Artist(
//           artistId: 1,
//           artistName: "Jungkook",
//           artistFollowers: 24000,
//           major: "Main Vocals",
//           pictureURL:
//               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVV1YjdvYZkK2A63pPCku8Sx6D82rVrEdMAHBxdSbU0Fhx2jzx",
//           following: false,
//         ),
//         Artist(
//           artistId: 1,
//           artistName: "Jin",
//           artistFollowers: 32000,
//           major: "Vocals",
//           pictureURL:
//               "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBHO3tz3Y96BQKOFAkxCTOZuXW3ZaTf6iNUH-6fa3197cNj8cG",
//           following: false,
//         ),
//       ]),
// ];
