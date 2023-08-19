<h1>Screenshots<h1>
   <h3>Screen 1<h3>
      <p align = center >
         <img src = "https://github.com/heyprincesingh/PlotLine_Mobile/blob/master/githubScreenshots/Screen1.jpg" height = "300">
         <img src = "https://github.com/heyprincesingh/PlotLine_Mobile/blob/master/githubScreenshots/screen1Video.gif" height = "300">
      </p>
      <h3>Screen 2<h3>
      <p align = center >
         <img src = "https://github.com/heyprincesingh/PlotLine_Mobile/blob/master/githubScreenshots/button1.jpg" height = "300">
         <img src = "https://github.com/heyprincesingh/PlotLine_Mobile/blob/master/githubScreenshots/button2.jpg" height = "300">
         <img src = "https://github.com/heyprincesingh/PlotLine_Mobile/blob/master/githubScreenshots/button4.jpg" height = "300">
         <img src = "https://github.com/heyprincesingh/PlotLine_Mobile/blob/master/githubScreenshots/button3%20deleted.jpg" height = "300">
         <img src = "https://github.com/heyprincesingh/PlotLine_Mobile/blob/master/githubScreenshots/screen2Video.gif" height = "300">
      </p>

# Plotline Mobile App Documentation

## Dependencies Used

1. **`get: ^4.6.5`**
   - **Description:** A state management library for Flutter applications, providing reactive programming capabilities and simplifying access to controllers and observables.
   - **Usage:** Facilitates efficient state management and dynamic user interface updates.

2. **`google_fonts: ^5.1.0`**
   - **Description:** Simplifies the integration of custom Google Fonts into Flutter apps, offering a diverse selection of font styles.
   - **Usage:** Allows easy inclusion and application of unique Google Fonts to enhance typography within the application.

3. **`shared_preferences: ^2.2.0`**
   - **Description:** A Flutter plugin that enables reading and writing of simple key-value pairs to persistent storage on the device using shared preferences.
   - **Usage:** Offers data persistence across app launches, making it useful for storing and retrieving user preferences and small data sets.

## Main Components

### `main.dart`
- Entry point of the app.
- Initializes the app and sets up `MyApp` widget.
- Uses `GetMaterialApp` for theming and routing.
- Sets `formScreen` as the home screen.

### `formScreen.dart`
- Main form screen for tooltip customization.
- Components: `screenInput`, `screenText`, `ValueListenableBuilder`, `Obx`, `ElevatedButton`.
- Allows users to customize tooltip properties.
- Observes changes in controller's fields for dynamic UI updates.

### `formScreenController.dart`
- Manages state for the form screen.
- Tracks selected option and tooltip properties.
- Saves form data to shared preferences.

### `buttonScreen.dart`

The `buttonScreen.dart` file represents the rendering screen where tooltips are displayed upon interacting with buttons.

Key Functions and Components:

- `buttonScreen` class: Defines the rendering screen widget.
- `buttons`: Creates styled buttons for each element, used to trigger tooltip display.
- `tooltipUpTriangle` and `tooltipDownTriangle` classes: Custom painters for drawing tooltip triangles.
- `Obx`: Observes changes in controller's `i` and `data` fields to display tooltips dynamically based on button interactions.

## `buttonScreenController.dart`

The `buttonScreenController.dart` file contains the GetX controller class managing the tooltip rendering screen.

Key Functions and Components:

- `buttonScreenController` class: Manages the state of the tooltip rendering screen.
- `i`: RxInt tracking the button interactions.
- `data`: RxList holding data for tooltips.
- `onInit`: Lifecycle hook fetching and initializing tooltip data.
- `getFormData`: Retrieves tooltip data from shared preferences.
- `deleteData`: Deletes specific tooltip data from shared preferences.

## Usage

1. **Customize Tooltip:** Input properties for customization.

2. **Save Tooltip:** Press "Save Tooltip" to save data using shared preferences.

3. **Render Tooltip:** Navigate to rendering screen to see tooltip based on saved data.

4. **Rendering Tooltip:** Press buttons labeled "Button 1" through "Button 5" to interactively render tooltips with saved properties.

5. **Data Retrieval:** The tooltip data is retrieved from shared preferences upon initializing the screen.

6. **Data Deletion:** Pressing a button triggers the deletion of the respective tooltip data from shared preferences.
