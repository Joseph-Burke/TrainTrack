# Ruby On Rails Capstone

## Task List

### feature/project_setup
1. ~~Initialise Git Flow~~
1. ~~Create a new rails project with postgres option. Ensure it is in root directory of repository.~~
1. ~~Set up Rubocop and Stylelint.~~
1. ~~Initialise RSpec.~~
1. ~~Decide on a function/subject matter for the project.~~
1. ~~Change the project's name.~~
1. ~~Merge into development.~~

### feature/data_architecture
1. ~~Create a data architecture diagram and add it to the docs folder.~~
2. ~~Generate models and/or migrations according to the data architecture diagram, including associations and validations.~~
3. ~~Set up Active Storage for images/icons. Group model should have_one_attached :icon.~~
3. ~~Setup and migrate databases.~~

NOTE: the data architecture is a bit of a mess right now. The table I have been given to mirror is not very good. Continue work for now, but I may need to return later to make adjustments.

### feature/routes_and_actions
1. ~~Add a sessions controller to handle log-ins.~~
1. ~~Set up primary routes for the application.~~
2. ~~Create corresponding controller actions for these main routes.~~
    - ~~User - new, create, index, show~~
    - ~~Group - new, create, index, show~~
    - ~~Transaction - new, create, index, show~~
    - ~~Session - new, create, destroy~~

### feature/user_story
This branch will go through the user story and ensure that all functionality is in place at each part of the application. The following aspects of the user story should be in place by the conclusion of this feature branch.

  - Create a helper method to access the current_user
1. Ensure that all attempts to access the application will redirect to the log in page if the user has not yet logged in.
2. Ensure that validations take place to deal with the scenario of a user inputting a name that is not an existing user's.
3. Ensure that validations exist that will prevent two users from having the same name.
4. The user will then be presented with a User profile page that includes links to:
  - All my transactions
  - All my external transactions
  - All groups
5. When a user opens "All my transactions" page;
  - Total amount is displayed at the top.
  - A list of transactions created by the logged in user is displayed
  - Each transaction displays its name, amount and date, and an icon of the first group it has been assigned to.
6. When a user opens "All my external transactions"
  - A list of all transactions that are created by the logged-in user but not assigned to a group
7. When the user opens "All groups"
  - A list of all groups is displayed.
  - Each group displays its icon, name and creation date.
  - Each group is clickable and opens "Group transactions" page
  - An action button "Create new" is displayed.
7. When the user opens "Group transactions"
  - A list if transactions that belong to that group is displayed.
  - The author of each transaction is also visible.
8. When a user opens "Create new group" or "Add new transaction":
  - A form with all necessary fields is displayed.

CURRENT STATE OF PROJECT: 
  - Main routes are all functional, allowing Users/Groups/Transactions to be displayed and created.
  - Sessions can also be started and destroyed, allowing a user to log in.

## Project Ideas 

Anything that you can share with other people and group by some category.

- Hours spent minding the dog. TrainTrack.
  - This app would allow a group of people that are training a dog to record the time spent training/minding her.
  - Possible bonus feature would be pre-made tasks such as "30-minute walk", "20 minutes of playtime" and "15 minutes of relaxation exercises"
  - Names: 
    - TrainTrack

What do you spend time doing in association with other people?
It could be a time management app for a small startup like Late?
A time management application for a group of developers?

