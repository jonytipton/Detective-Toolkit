# 2020-iOS-Development
iOS Development Course - Fall 2020

Assignment 1 - README
Jonathan Tipton
9/10/2020
CS402

Summary:
Multi-purpose "Detective Toolkit" that allows users to create to-do lists (utilizes Core Data), browse the web (via google or with full URL to type in address bar via webkit/webview), disguise the app as a calculator (practicing stack layouts, did not implement logic to buttons), and recognize images taken with the camera or saved in the photo library (utilizes CoreML and the Resnet50 machine learning model).

Build:
Download Resnet50 ZIP, DetectiveToolkit.xcodeproj, and the DetectiveToolkit folder into the same directory. Unzip Resnet50.zip. Build app and run with simulator or via connected iOS device. Camera buttons in Tasks and Identiy tabs will crash if using simulator.
