# PROJECT1
iOS Development Course - Fall 2020

# Project 2 - README
## Jonathan Tipton
## 11/20/2020
## CS402

### Summary:
Multi-purpose "Detective Toolkit" that allows users to create to-do lists (utilizes Core Data and Image Picker via Camera or photo library), browse the web (via google or with full URL to type in address bar via webkit/webview), display current location and drop temporary location pins, and recognize images taken with the camera or saved in the photo library (utilizes CoreML and the Resnet50 machine learning model).

### Build:
Download Resnet50 ZIP, DetectiveToolkit.xcodeproj, and the DetectiveToolkit folder into the same directory. Unzip Resnet50.zip. Build app and run with simulator or via connected iOS device. Camera buttons in Tasks and Identiy tabs will crash if using simulator.

### Discussion:
Updates for this project...
Created custom app icon and launchscreen. Created two launchscreen images, one for launch in portrait orientation and another for landscape orientation. This was accomplished by creating two images for the UIImageView on the launch screen storyboard and then varying the constraints/variations to switch between the desired image. Continued to work on adding core data to the mapkit view in order to store pins and allow for custom annotations but I ran into an issue with my code that resulted in my project having to be rolled back to an earlier version. Core data is implemented in the ToDo/Task manager section of the app. A ToDoCD entity has three attributes, an image, name and priority level. Images are stored as binary data, task name as string, and priority level as a 32 Integer. I went backthrough some of the layouts and constraints on many of the view controllers to allow for better scaling on smaller objects since project 1 was more designed for the new 6.7" display. Target view (mapkit view) zooms in on user's location on second launch after location services is enabled for the app.  
