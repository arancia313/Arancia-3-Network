# Arancia-3-Network

 - Newest updated network for the A3S (Arancia 3 System) and projects that use the Fetch or Git Penguin extension.
 - Can be used with the Arancia 3 Store.
 - Requires the Fetch extension on projects with Penguinmod.

#### Features

 - This is a simplified network without any Python code.
 - It has a firmware.txt file. The A3S will detect it at boot, and if it's another
major firmware (1.50) rather than the current firmware (1.00), the A3S will
instantly detect it and will show a notification at start: "New Version Available!".
 - Never goes down.
<img width="476" height="353" alt="Cattura" src="https://github.com/user-attachments/assets/b6b973d0-1a8a-4a73-bc69-f4dfaedc199a" />
<img width="474" height="356" alt="Cattura2" src="https://github.com/user-attachments/assets/ed6d72cd-99f1-4854-bbeb-d2604ed17d7f" />

#### Important things to know about this network
## 1. SK-GCC
This network uses an important system called "sk-gcc". It's a requirement for running the network,
so make sure to have sk-gcc enabled on the A3S (it is enabled by default). If you refuse to activate 
sk-gcc or maybe you don't feel like enabling it, you will get this error screen:

<img width="472" height="358" alt="Cattura3" src="https://github.com/user-attachments/assets/91315027-efde-4f4c-afd4-6f945eae10b4" />

You can disable it whenever you want, but if you don't wanna miss out on games on the network, please activate it.
## 2. You don't risk bans just for running homebrew
Don't worry, you will never risk getting banned for running homebrew that connects to arancia 3's servers.
If you have a modified A3S with another firmware rather than Schedule (sCHEc for example), nothing bad will happen.

## How to install WSL for the network (for those who are new to WSL)
You just need to have your classic cmd terminal (Make sure to run it as administrator to prevent permission errors!).
You will need to Execute this command:
              wsl --install
This will install everything you need.
## How to connect to the network
This network Works kind of like CloudLink, that Scratch Extension you use every day. To do this, here are some things that you need:
 - A modern windows 10 or 11 PC. Older PC's (like those who have windows 7 or Vista) are able to connect only as clients,
because they do not have the commands to make host for the server. 
 - WSL, Windows subsystem for Linux (works flawlessly).
 - An Ubuntu Terminal.
 Clone the source code by using this command:
              git clone https://github.com/arancia313/Arancia-3-Network
Then, execute this command:
              make clean && make server
This command will radically remove the blash and connect you to localhost:30003.

#### Arancia 3 focusing to the clients

You just need to have a terminal (Make sure to have the WSL one, and not the classic CMD one!).
you need to execute this command:
              make s-connect
This will connect you to localhost:30003, just like you would expect.
## How to connect to the network (on the A3S)
Very simple. You just need to go to the Arancia 3 Network category (that orange icon with the star).
 - Then, click "Sign up for Arancia 3 Network".
 - Now, once you are on the A3N window, click the "Use existing account" button.
 - Just authenthicate, login, and you're done.
 - After you logged in, a window will appear. This window like, "Thank you, player5830".
 - Now, just click anywhere to go into the XMB.
## How to make the Compact A3N
This is very simple for some windows 10 and 11 users, but it's a bit tough for users with an older OS.
 - For windows 11 users, you need to execute this command, if you have WSL:
              make
 - For windows 7 or older users, make doesn't exist. But there is a way to bypass this.
 make sure you have Git bash, because it will not work on powershell.
 Execute this command right here, since the program is installed here:
              ./make.exe
 To clean up everything, you need to execute those commands:
For windows 11 users: make clean | For windows 7 or older users: ./make.exe clean.
## A store without life
There is a games.txt file, and it is vital for the store. If it doesn't contain "A3S", the games
will stop showing up, the instances will stop working, and if you reload the store, no matter what,
your games will never show up. So, games.txt needs to contain "A3S", because that means "This device
is supported, release the games!".
