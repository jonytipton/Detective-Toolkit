# PROJECT1
iOS Development Course - Fall 2020

# Project 1 - README
## Jonathan Tipton
## 10/31/2020
## CS402

### Summary:
Multi-purpose "Detective Toolkit" that allows users to create to-do lists (utilizes Core Data and Image Picker via Camera or photo library), browse the web (via google or with full URL to type in address bar via webkit/webview), display current location and drop location pins, and recognize images taken with the camera or saved in the photo library (utilizes CoreML and the Resnet50 machine learning model).

### Build:
Download Resnet50 ZIP, DetectiveToolkit.xcodeproj, and the DetectiveToolkit folder into the same directory. Unzip Resnet50.zip. Build app and run with simulator or via connected iOS device. Camera buttons in Tasks and Identiy tabs will crash if using simulator.

### Discussion:
Updates for this project...
Modifed layout of each viewcontroller to allow for rotation and proper displaying on different screen sizes(4.7, 5.5, 5.8, 6.1,6.5, 6.7) Used "Vary for Traits" function in storyboard view to create different sets of layout constraints. Replaced the calculator tab with a MapKit view that locates the current user (after requesting permission) and allows the user to temporarily place location pins with a long press -> ran into issues with implementing persistent data using Core Data and a Pin entity so pins are deleted after applicaton is quit/removed from memory. Modified WebKit "Research" view to allow from swiping forward/back on webpages, modified code to allow for webpage persistence when changes between tabs in the app. To Do list still implements dynamic table view and utilizes Core Data to store task description and attached images as binary data. Add ToDo viewcontroller allows attachment of photos using the camera or photo library if access is granted.
