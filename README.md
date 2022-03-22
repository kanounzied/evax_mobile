# Trinome

*Zied Kanoun, Ahmed Grati, Omar Jridi*

# Architecture
## General Overview
The choice of architecture for this application is **MVVM**.
Model-View-ViewModel (MVVM) is a software design pattern that is structured to separate program logic and user interface controls. 

The separation of the code in MVVM is divided into View, ViewModel and Model:
- **View** is the collection of visible elements, which also receives user input. This includes user interfaces (UI), animations and text. The content of View is not interacted with directly to change what is presented.
- **ViewModel** is located between the View and Model layers. This is where the controls for interacting with View are housed, while binding is used to connect the UI elements in View to the controls in ViewModel.
- **Model** houses the logic for the program, which is retrieved by the ViewModel upon its own receipt of input from the user through View.
<br>
<br>
<img style="display:block;margin-left: auto; margin-right: auto" src="https://media.geeksforgeeks.org/wp-content/uploads/20201002215007/MVVMSchema.png">

## Advantages Of MVVM
The advantages of MVVM are manifested in these non-functional requirements.
### Testability
- The ViewModel can be easier to unit test than in the case of event-driven code.
- The ViewModel (being more Model than View) can be tested without concerns of UI automation and interaction.
### Maintanability
- MVVM abstracts the View and thus reduces the quantity of business logic (or glue) required in the code behind it, and so by having a separation between the different parts of an app's code it brings a level of structure and uniformity to the code. It's easy to see where things should go or where they're likely to be. It also encourages the use of other patterns (dependency inversion, services, messaging, etc.) and so brings the benefits of good development practices. These aren't unique to the MVVM pattern. The benefits come with almost any architectural pattern that is followed and applied to a codebase.
### Extensibility
- As a separation pattern, one of the intentions is that it allows the different layers to be reused. The model layer is the most obvious candidate for use in multiple apps or versions of an app (i.e. for different platforms) but ViewModel should be able to be reused as well. If you're only building a single app for one platform you have an excuse for ignoring this but if your ViewModels could be being used on multiple platforms then they should be. The biggest barrier to being able to do this is having ViewModels that reference or are strongly tied to something in the View layer or the UI of a particular platform. The associated downside to this is that it also makes testing hard.
