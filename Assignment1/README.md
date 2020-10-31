# 2020-iOS-Development
iOS Development Course - Fall 2020

# Assignment 1 - README
## Jonathan Tipton
## 9/10/2020
## CS402

### Summary:
Multi-purpose "Detective Toolkit" that allows users to create to-do lists (utilizes Core Data), browse the web (via google or with full URL to type in address bar via webkit/webview), disguise the app as a calculator (practicing stack layouts, did not implement logic to buttons), and recognize images taken with the camera or saved in the photo library (utilizes CoreML and the Resnet50 machine learning model).

### Build:
Download Resnet50 ZIP, DetectiveToolkit.xcodeproj, and the DetectiveToolkit folder into the same directory. Unzip Resnet50.zip. Build app and run with simulator or via connected iOS device. Camera buttons in Tasks and Identiy tabs will crash if using simulator.

### Discussion:
I have some limited experience with Xcode and swift from a course I took last semester (Spring 2020) and over the summer I worked on a few learning projects on Udemy and in books. For this assignment, I wanted to finish working on the To Do app I originally started on in the Spring, as well as learn how to combine multiple Xcode projects into the same app. For the ToDo/Tasks app, a user is able to create a new todo with the "+" icon in the top right corner. The ToDo can have a description, priority level, and image. To set an image, tap the camera or folder icon in the top right corner of the new task screen and then take or select a photo, respetively. After the user creates a new task, it will show in the table view on the Tasks view. Each individual task can be selected and will remain on the device after quitting the app due to the implementation of CoreData (created a ToDoCD entity with name,photo,priority attributes in the ToDoList data model). 

The Research tab is meant to resemble a basic web browser using a webview and a couple buttons and textfield. The user is able to navigate to any website if they have the full URL (i.e. https://www.apple.com). I set the default web address to google for functionality purposes so users can complete a simple search without a URL memorized. This tab was the easiest to implement as far as coding the viewcontroller and setting up proper layouts for different screen sizes. 

Home Tab == Welcome/Splash Screen. Displays text and an image for visual interest.

"Calculator" tab in theory is meant to look like the user is using a simple calculator app as opposed to a "classified detective toolkit". In reality, I had a tutorial for stack views that I wanted to learn and decided it would be simple to add it as another tab to this app. Due to issues with CoreData and my tableviewcontroller not updating correctly, I ran out of time to implement logic to the buttons so this is not a functioning calculator. However, it was interesting to learn about embedded stack views - I can see this being useful in a variety of apps, especiall for prototyping layouts since it allows for quick changes and you don't have to worry about minor adjustments or deleting/adding individual constraints.

The Identify tab is also from a project I was working on recently from a textbook. This tab utilizes CoreML with the publicly available resnet50 ML model. Images are classifed by the model and three descriptors with high-confidence are returned. (i.e. an image of a field of flowers returns keywords such as "garden", "flower", and incorrectly "ear"). In another project I worked on, I created my own ML model that could identify whether someone in the camera viewfinder was brushing their teeth or not - not sure about the practicality or if it works for other people but it works on me and was a great learning experience.

For the final project, I'm interested in created a puzzle game that requires the user to understand how to use accessibility features on their device or be willing to learn these features via trial/error or guided tutorial. For example, one view of the app could be completely black with black text on top - requiring the user to use VoiceOver or Speak Screen to be able to know what to do in order to reach the next challenge. 
