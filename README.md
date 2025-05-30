# Flutter_champioship_2025
приложение для продажи кроссовок (конкурсное задание 2025)
Getting Started
flutter pub get
flutter pub run build_ranner build
chose ios / android
API Integration
A Rest API is used for user operations, and the API code is not included in this repository. You can develop API endpoints according to the UserModel class in the project to make it suitable for use. You need to update the BASE_URL value in the '.env' file content to match your API structure. You can find the naming used for CRUD and authentication endpoints in the UserService class, and you may need to revise it according to your API structure.

Supabase Integration
The project uses Storage for uploading images and accessing them via URL, Extensions and Firestore Database for email infrastructure and Functions for triggering email sending. Therefore, you will need a supabase project.

Screenshoots
Hover the mouse cursor over the images for explanations.
Things to know
After adding new string definitions to the [language-code].json (such as en.json, tr.json) file, run the following codes in the terminal one by one so that the easy_localization structure can recognize these changes:

Documentation
This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

Lab: Write your first Flutter app
Cookbook: Useful Flutter samples
For help getting started with Flutter development, view the online documentation, which offers tutorials, samples, guidance on mobile development, and a full API reference.


