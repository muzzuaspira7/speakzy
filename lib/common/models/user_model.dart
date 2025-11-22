class UserModel {
  final String name;
  final String gender;
  final String image;
  final bool isOnline;
  final double rating;

  UserModel({
    required this.name,
    required this.gender,
    required this.image,
    required this.isOnline,
    required this.rating,
  });
}

List<UserModel> userList = [
  UserModel(
    name: "Muzammil",
    gender: "Male",
    image:
        "https://images.unsplash.com/photo-1578472577660-6f4a47a6660d?fm=jpg&q=60&w=3000",
    isOnline: true,
    rating: 4.9,
  ),
  UserModel(
    name: "Anjitha",
    gender: "Female",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX0rcjhNMOj2ERnTw15SA9nZSkcjjOPfjv_g&s",
    isOnline: true,
    rating: 2.0,
  ),
  UserModel(
    name: "Shreya",
    gender: "Female",
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbUkX747tzs3B9jnGaHecL-aPy6OVL8LthyS3KO3qKskXwj7KSbgkiEdtH5LzYgUid0LA",
    isOnline: true,
    rating: 0.0,
  ),

  // ————— 17 More Clean Random Users ————— //

  UserModel(
    name: "Aisha",
    gender: "Female",
    image: "https://i.pravatar.cc/150?img=47",
    isOnline: true,
    rating: 4.8,
  ),
  UserModel(
    name: "Kevin",
    gender: "Male",
    image: "https://i.pravatar.cc/150?img=12",
    isOnline: false,
    rating: 4.5,
  ),
  UserModel(
    name: "Zara",
    gender: "Female",
    image: "https://i.pravatar.cc/150?img=32",
    isOnline: true,
    rating: 4.9,
  ),
  UserModel(
    name: "Ravi",
    gender: "Male",
    image: "https://i.pravatar.cc/150?img=18",
    isOnline: true,
    rating: 4.3,
  ),
  UserModel(
    name: "Monica",
    gender: "Female",
    image: "https://i.pravatar.cc/150?img=55",
    isOnline: false,
    rating: 4.6,
  ),
  UserModel(
    name: "Sanjay",
    gender: "Male",
    image: "https://i.pravatar.cc/150?img=22",
    isOnline: true,
    rating: 3.5,
  ),
  UserModel(
    name: "Priya",
    gender: "Female",
    image: "https://i.pravatar.cc/150?img=48",
    isOnline: true,
    rating: 4.1,
  ),
  UserModel(
    name: "Daniel",
    gender: "Male",
    image: "https://i.pravatar.cc/150?img=9",
    isOnline: false,
    rating: 5.0,
  ),
  UserModel(
    name: "Kavya",
    gender: "Female",
    image: "https://i.pravatar.cc/150?img=61",
    isOnline: true,
    rating: 3.8,
  ),
  UserModel(
    name: "Arun",
    gender: "Male",
    image: "https://i.pravatar.cc/150?img=15",
    isOnline: false,
    rating: 3.2,
  ),
  UserModel(
    name: "Sofia",
    gender: "Female",
    image: "https://i.pravatar.cc/150?img=36",
    isOnline: true,
    rating: 4.7,
  ),
  UserModel(
    name: "Ibrahim",
    gender: "Male",
    image: "https://i.pravatar.cc/150?img=27",
    isOnline: true,
    rating: 4.0,
  ),
  UserModel(
    name: "Manasa",
    gender: "Female",
    image: "https://i.pravatar.cc/150?img=53",
    isOnline: false,
    rating: 2.5,
  ),
  UserModel(
    name: "Harish",
    gender: "Male",
    image: "https://i.pravatar.cc/150?img=30",
    isOnline: true,
    rating: 1.8,
  ),
  UserModel(
    name: "Tanya",
    gender: "Female",
    image: "https://i.pravatar.cc/150?img=63",
    isOnline: true,
    rating: 4.4,
  ),
  UserModel(
    name: "Rohit",
    gender: "Male",
    image: "https://i.pravatar.cc/150?img=5",
    isOnline: false,
    rating: 3.9,
  ),
  UserModel(
    name: "Jasmin",
    gender: "Female",
    image: "https://i.pravatar.cc/150?img=66",
    isOnline: true,
    rating: 0.7,
  ),
  UserModel(
    name: "Vikram",
    gender: "Male",
    image: "https://i.pravatar.cc/150?img=41",
    isOnline: true,
    rating: 2.9,
  ),
];
