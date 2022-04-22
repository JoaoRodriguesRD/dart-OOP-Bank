

## How to Use 

**Step 1: Clone**

Download or clone this repo by using the link below:
```
https://github.com/JoaoRodriguesRD/dart-OOP-Bank.git
```

**Step 2: Install Dart**

Once you’re ready to move beyond DartPad and develop real apps, you need an SDK. You can either download the Dart SDK directly (as described below) or download the Flutter SDK, which includes the full Dart SDK.
## MacOs Install
```macos
 brew tap dart-lang/dart
 brew install dart
```

## Linux Install
First
```linux
 sudo apt-get update
 sudo apt-get install apt-transport-https
 wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg
 echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list
```
Now install dart SDK
```linux
 sudo apt-get update
 sudo apt-get install dart
```
## Windows Install

```terminal
 choco install dart-sdk
```

**Step 3: Run project**

Go to `root` application and run: 

```
dart run
```

### The project
A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

This project is based on a small bank with some functionalities. 
For example: , making valid deposits and withdrawals.
The project was based on 
**1: registration of new customers**
what differentiates one customer from another is their CPF, Brazilian individual registration
**2: registration of new bank accounts**
To create an account, you must be registered as a customer.
**3 - 4: List customers and accounts**
List all our data from the current bank instance
**5: make deposit**
make the deposit of a certain account 
**6: make withdrawal**
performs the withdrawal of a certain account with the condition of having available funds

