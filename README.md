![](https://img.shields.io/badge/Microverse-blueviolet)

# OOP TIC TAC TOE GAME

A tic-tac-toe game was built to be played on the command line where two human players can play against each other and the board is displayed in between turns.

### Main Objective

In this project, we built a Tic Tac Toe game. The main goal is to put into practice the main concepts of Object-Oriented Programming. Particularly, classes and access to their attributes.

## Game Instructions

To run the game run the following command in the terminal "bin/main.rb", then follow the next steps:

1. First Player should put their name (Only numbers are not allowed as names)
2. Second Player should put their name (Only numbers are not allowed as names)
3. Now the first player can pick a number from 1 to 9 as displayed on the board, followed by the second player
4. Each of the players will take turns picking available numbers until a win condition is met
5. To win the game, the player must have a series of consecutive signs that can be, 3 consecutive horizontal cells, 3 consecutive vertical cells, or either of the 2 diagonals
6. If no other moves are available and a win condition is not met, the game will end as a tie.

Here is an example of a game where x is the winner

![](images/Tic-tac-toe-animated.gif)

## Built With

- Ruby
- Git workflow best practice
- Gem Rubocop
- Github workflow practices to fix linter errors
- Rspec TDD

## Getting Started

To get a local copy of the repository please follow the next steps (Examples are shown using git bash, to install git bash go to https://git-scm.com/downloads and install according to the version of your computer):

- Go to the GitHub page where the repository is (Link example: https://github.com/DanSam5K/OOP-Tic-Tac-Toe-Game)

- On the repository page, click on the green code button

![](images\readmepic1.JPG)

- Then click on the paste icon to copy the clone link

![](images\readmepic2.JPG)

- If you have git bash install, simply navigate to the folder where you want to copy the repository

- Once in the folder, right-click on the folder and select git bash here

- It should open a terminal window, to check that you are in the right place run the following command

```
$ ls
```

It should show the files that are in that folder

- After you verified that you are at the right place, run this command to clone the repository in your local machine

```
$ git clone https://github.com/DanSam5K/OOP-Tic-Tac-Toe-Game.git
```

This should create a clone of the repository in your desired folder, from there, just open the folder from your desired code editor to check, modify or test the code

#### Run code

To run code and start the game, run "bin/main.rb" from your terminal.

```
$ bin/main.rb
```
#### Testing With Rspec
- Test cases have been written carefully to make sure the public methods works as expected
- From the Terminal run the command
```
$ rspec
```
And see all test pass.


## Authors

👤 **Daniel Samuel**

- GitHub: [@DanSam5K](https://github.com/DanSam5K)
- Twitter: [@\_dan_sam](https://twitter.com/_dan_sam)
- LinkedIn: [DanSam](https://www.linkedin.com/in/dansamuel/)

👤 **Mario Rodriguez**

- GitHub: [@mariordgez](https://github.com/mariordgez)
- Twitter: [@MarioRo75396624](https://twitter.com/MarioRo75396624)
- LinkedIn: [Mario](https://www.linkedin.com/in/mario-alberto-rodriguez-cota-a2860a205/)

👤 **Yuvraj Manoo**

- GitHub: [@YuvrajM108](https://github.com/YuvrajM108)
- Twitter: [@YM](https://twitter.com)
- LinkedIn: [Yuvraj](https://www.linkedin.com/in/yuvraj-manoo-2711a91b0/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/DanSam5K/OOP-Tic-Tac-Toe-Game/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Project inspired by Microverse Program

## 📝 License

This project is [MIT](./MIT.md) licensed.
