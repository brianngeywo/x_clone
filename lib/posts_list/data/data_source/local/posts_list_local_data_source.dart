import 'package:x_clone/posts_list/data/model/twitter_post.dart';

abstract class PostsListLocalDataSource {
  List<TwitterPost> get samplePosts => _samplePosts;
}

class PostsListLocalDataSourceImp implements PostsListLocalDataSource {
  // singleton
  static PostsListLocalDataSourceImp? _instance;

  static PostsListLocalDataSourceImp get instance {
    _instance ??= PostsListLocalDataSourceImp();
    return _instance!;
  }

  @override
  // TODO: implement samplePosts
  List<TwitterPost> get samplePosts => _samplePosts;
}

List<TwitterPost> _samplePosts = [
  TwitterPost(
    id: "1",
    text: "Exploring the world of Flutter development!",
    createdAt: "2025-01-21T10:00:00Z",
    username: "John Doe",
    userImage: "https://example.com/images/user1.jpg",
    userHandle: "@johndoe",
    postText:
        "Just started building my first app with Flutter. Loving the experience so far! 🚀",
    postImages: [
      "https://example.com/images/flutter1.jpg",
      "https://example.com/images/flutter2.jpg",
    ],
    commentsCount: 243,
    retweetsCount: 12,
    likesCount: 100,
    statsCount: 500,
  ),
  TwitterPost(
    id: "2",
    text: "Nature vibes 🍃",
    createdAt: "2025-01-20T08:30:00Z",
    username: "Jane Smith",
    userImage: "https://example.com/images/user2.jpg",
    userHandle: "@janesmith",
    postText: "Nothing beats a peaceful morning in the forest. #naturelover",
    postImages: [
      "https://example.com/images/nature1.jpg",
    ],
    commentsCount: 5,
    retweetsCount: 2,
    likesCount: 100,
    statsCount: 500,
  ),
  TwitterPost(
    id: "3",
    text: "AI advancements 🤖",
    createdAt: "2025-01-19T15:45:00Z",
    username: "Alex Brown",
    userImage: "https://example.com/images/user3.jpg",
    userHandle: "@alexbrown",
    postText:
        "Artificial Intelligence has come such a long way in the past decade. From natural language processing to self-driving cars, the possibilities are endless. While it’s exciting to see the innovations, it also raises ethical questions about its impact on jobs and privacy. What are your thoughts on the future of AI?",
    postImages: [],
    commentsCount: 12,
    retweetsCount: 8,
    likesCount: 100,
    statsCount: 500,
  ),
  TwitterPost(
    id: "4",
    text: "Workout goals 💪",
    createdAt: "2025-01-18T07:15:00Z",
    username: "Chris Green",
    userImage: "https://example.com/images/user4.jpg",
    userHandle: "@chrisgreen",
    postText:
        "I’ve been on a fitness journey for the past month, and I’m amazed at the progress I’ve made. From barely being able to lift weights to now completing intense HIIT sessions, the transformation feels unreal. Staying consistent and motivated has been key. Here’s to smashing more goals this year!",
    postImages: [
      "https://example.com/images/fitness1.jpg",
    ],
    commentsCount: 8,
    retweetsCount: 3,
    likesCount: 100,
    statsCount: 500,
  ),
  TwitterPost(
    id: "5",
    text: "Delicious brunch 🍳",
    createdAt: "2025-01-17T09:00:00Z",
    username: "Emma White",
    userImage: "https://example.com/images/user5.jpg",
    userHandle: "@emmawhite",
    postText:
        "Brunch today was an absolute delight! I tried this new café that serves the best avocado toast I’ve ever had, topped with perfectly poached eggs. To make it even better, they paired it with a fresh berry smoothie. If you’re ever in the area, this spot is a must-visit for foodies.",
    postImages: [
      "https://example.com/images/food1.jpg",
      "https://example.com/images/food2.jpg",
    ],
    commentsCount: 3,
    retweetsCount: 1,
    likesCount: 100,
    statsCount: 500,
  ),
  TwitterPost(
    id: "6",
    text: "Travel diaries ✈️",
    createdAt: "2025-01-16T19:00:00Z",
    username: "Liam Carter",
    userImage: "https://example.com/images/user6.jpg",
    userHandle: "@liamcarter",
    postText:
        "Finally landed in Paris, the city of love! The streets are bustling with energy, and the Eiffel Tower is just as stunning as I imagined. Can’t wait to explore the museums, enjoy French pastries, and take a stroll along the Seine. This trip is already shaping up to be unforgettable!",
    postImages: [
      "https://example.com/images/travel1.jpg",
      "https://example.com/images/travel2.jpg",
    ],
    commentsCount: 50,
    retweetsCount: 15,
    likesCount: 100,
    statsCount: 500,
  ),
  TwitterPost(
    id: "7",
    text: "Book recommendations 📚",
    createdAt: "2025-01-15T12:00:00Z",
    username: "Sophia Reed",
    userImage: "https://example.com/images/user7.jpg",
    userHandle: "@sophiareed",
    postText:
        "If you’re looking to improve your habits and create lasting change, I highly recommend ‘Atomic Habits’ by James Clear. It’s packed with actionable insights and practical examples. The concept of making tiny improvements daily really resonated with me. Definitely a book I’ll be revisiting often.",
    postImages: [],
    commentsCount: 20,
    retweetsCount: 5,
    likesCount: 100,
    statsCount: 500,
  ),
  TwitterPost(
    id: "8",
    text: "Gaming night 🎮",
    createdAt: "2025-01-14T21:00:00Z",
    username: "Ethan Moore",
    userImage: "https://example.com/images/user8.jpg",
    userHandle: "@ethanmoore",
    postText:
        "Last night was epic! My friends and I pulled an all-nighter playing the latest RPG release. The graphics are stunning, and the storyline had us hooked from the start. It’s been a while since I’ve been so immersed in a game. Who else is playing this masterpiece?",
    postImages: [
      "https://example.com/images/game1.jpg",
    ],
    commentsCount: 100,
    retweetsCount: 25,
    likesCount: 100,
    statsCount: 500,
  ),
  TwitterPost(
    id: "9",
    text: "Startup launch 🚀",
    createdAt: "2025-01-13T18:00:00Z",
    username: "Olivia Gray",
    userImage: "https://example.com/images/user9.jpg",
    userHandle: "@oliviagray",
    postText:
        "After months of planning, hard work, and late nights, I’m thrilled to announce the launch of my startup! We’re focusing on eco-friendly products that aim to make sustainable living more accessible. I’m beyond excited for this journey and grateful for everyone’s support. Let’s create change together!",
    postImages: [
      "https://example.com/images/startup1.jpg",
      "https://example.com/images/startup2.jpg",
    ],
    commentsCount: 150,
    retweetsCount: 50,
    likesCount: 150,
    statsCount: 500,
  ),
  TwitterPost(
    id: "10",
    text: "Coding spree 💻",
    createdAt: "2025-01-12T16:45:00Z",
    username: "Daniel Brown",
    userImage: "https://example.com/images/user10.jpg",
    userHandle: "@danielbrown",
    postText:
        "Just wrapped up a 48-hour hackathon, and I’m absolutely exhausted but so proud of my team. We managed to build a functional app from scratch, and the feedback from the judges was overwhelmingly positive. These are the moments that remind me why I love coding so much!",
    postImages: [
      "https://example.com/images/code1.jpg",
    ],
    commentsCount: 30,
    retweetsCount: 10,
    likesCount: 100,
    statsCount: 500,
  ),
];
