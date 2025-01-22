# lifelines-map

A new Flutter project.

## About Seeds of Hope

Seeds of Hope is an innovative mapping platform designed to support educational reconstruction in conflict-affected areas, starting with Syria. The app enables trusted users, such as NGOs and local educators, to add and verify the locations of displaced schools and universities. Users can view detailed school profiles, including their needs, challenges, and donation links, and contribute directly to their support. Powered by the Google Maps API and built with FlutterFlow, Seeds of Hope bridges the gap between effective mapping tools and user-friendly interactive interfaces to drive educational rebuilding through community-driven engagement and gamification.

## Installation Insstructions
Prerequisites
Ensure you have the following installed on your system:
- Flutter SDK: Installation guide
- Dart: Installed alongside Flutter.
- Google Maps API key: Obtain from Google Cloud Console.
- Firebase account: Set up a Firebase project for authentication and backend services (Guide).

Installation
Clone the repository from GitHub:
git clone https://github.com/your-repo/seeds-of-hope.git

Navigate to the project directory:
cd seeds-of-hope

Install the required dependencies:
flutter pub get

Configure your Google Maps API key:
Add the API key to the android/app/src/main/AndroidManifest.xml file under the <application> tag.

For iOS, add the API key to the ios/Runner/AppDelegate.swift file.

Connect the app to your Firebase project:
Download the google-services.json file for Android and place it in the android/app directory.
Download the GoogleService-Info.plist file for iOS and place it in the ios/Runner directory.

## Running and Testing this Project
Running the App
Start a connected device emulator or plug in your physical device.
Run the application with the following command: flutter run
Testing the App
Use the provided demo credentials for testing:
Username: demo_user
Password: demo_password
Explore the following key features:
Add a school location with details.
View and edit existing schools on the map.
Test donation links and data uploads.
Monitor app logs for debugging: flutter logs

## Credits
Developers: Antonios Sichanis, Rehaan Hussain, Saoud Almusallam, Selina Haddad

Frameworks Used:
FlutterFlow for app development.
Firebase for backend services.
Google Maps API for geolocation and mapping.
Special Thanks: NGOs and local educators in Syria who contributed to the project’s design and testing.
