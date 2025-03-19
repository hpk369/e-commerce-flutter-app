# Cross-Platform E-Commerce Mobile Application

A feature-rich e-commerce mobile application built with Flutter that delivers a seamless shopping experience across iOS and Android platforms. This application demonstrates advanced mobile development techniques, state management, and integration with backend services.

## Features

- **Cross-Platform Compatibility**: Runs natively on both iOS and Android
- **User Authentication**: Email/password and social login options with secure authentication flows
- **Product Catalog**: Categorized products with search and filtering capabilities
- **Shopping Cart Management**: Add, remove, and adjust quantities with real-time updates
- **User Profiles**: Customizable user profiles with order history
- **Payment Integration**: Secure checkout process with multiple payment options
- **Order Tracking**: Real-time order status updates
- **Responsive UI**: Adaptive design for various screen sizes and orientations
- **Offline Support**: Basic functionality available without internet connection

## Technologies & Tools

- **Flutter**: SDK for building natively compiled applications
- **Dart**: Programming language optimized for multi-platform development
- **Firebase**:
  - Authentication for user management
  - Cloud Firestore for database
  - Storage for product images
  - Cloud Functions for backend processes
- **State Management**: Provider pattern for efficient state handling
- **RESTful APIs**: Integration with backend services
- **Custom Animations**: Enhanced user experience with fluid transitions
- **Material Design**: Consistent and intuitive user interface components
- **CI/CD**: Automated testing and deployment workflows

## Project Structure

```
├── android/               # Android-specific files
├── ios/                   # iOS-specific files
├── lib/
│   ├── main.dart          # App entry point
│   ├── app.dart           # App configuration
│   ├── routes.dart        # Navigation routes
│   ├── theme.dart         # App theming
│   ├── models/            # All data models
│   ├── screens/           # All app screens
│   ├── widgets/           # All widgets
│   ├── services/          # All services
│   └── utils/             # Helper utilities
├── assets/                # Static assets
├── test/                  # Tests
├── pubspec.yaml           # Dependencies
└── README.md
```

## Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Android Studio or Visual Studio Code with Flutter extensions
- Firebase account (for backend services)
- Android/iOS emulator or physical device for testing

### Installation

1. Clone the repository:
   ```
   git clone https://github.com/hpk369/e-commerce-flutter-app.git
   ```

2. Navigate to the project directory:
   ```
   cd e-commerce-flutter-app
   ```

3. Install dependencies:
   ```
   flutter pub get
   ```

4. Configure Firebase:
   - Create a new Firebase project
   - Add Android and iOS apps in the Firebase console
   - Download and add the configuration files (google-services.json and GoogleService-Info.plist)
   - Enable Authentication, Firestore, and Storage services

5. Run the application:
   ```
   flutter run
   ```

## Code Examples

### Product Model

```dart
class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final List<String> categories;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.categories,
    this.isFavorite = false,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'].toDouble(),
      imageUrl: json['imageUrl'],
      categories: List<String>.from(json['categories']),
      isFavorite: json['isFavorite'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'categories': categories,
      'isFavorite': isFavorite,
    };
  }
}
```

### State Management with Provider

```dart
class CartProvider with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  void addItem(String productId, double price, String title) {
    if (_items.containsKey(productId)) {
      // Change quantity
      _items.update(
        productId,
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          title: existingCartItem.title,
          price: existingCartItem.price,
          quantity: existingCartItem.quantity + 1,
        ),
      );
    } else {
      // Add new item
      _items.putIfAbsent(
        productId,
        () => CartItem(
          id: DateTime.now().toString(),
          title: title,
          price: price,
          quantity: 1,
        ),
      );
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }
}
```

## Testing

The application includes:

- **Unit Tests**: Testing individual functions and methods
- **Widget Tests**: Testing UI components in isolation
- **Integration Tests**: Testing complete user flows

Run tests with:
```
flutter test
```

## Performance Optimization

- Lazy loading of images and content
- Efficient state management to minimize rebuilds
- Caching strategies for network requests
- Memory optimization for large product catalogs

## Future Enhancements

- Multi-language support
- Theme customization (light/dark mode)
- Advanced analytics and user behavior tracking
- Augmented reality product preview
- Voice search functionality
- Enhanced recommendation system

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Flutter and Dart development team for the amazing framework
- Firebase for providing robust backend services
- Material Design guidelines for UI/UX best practices
- The open-source community for valuable plugins and packages
