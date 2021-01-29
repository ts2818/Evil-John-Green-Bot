// Mr Willis’ Evil John Green-Bot program for Skyline High School
// Language = Swift
// Use this compiler:
// https://repl.it/languages/swift

import Foundation

//  This function makes the computer wait for a random period of time
func funcWait() {
  let waitTime = UInt32.random(in: 0..<4)
  sleep(waitTime)
}

// This function returns a random question
func funcQuestion() -> String {
    let question = ["Tell me more about that? ", "And?... ", "Do you want to ask me something? ", "What was the last funny video you saw? ","What do you do to get rid of stress? ","What is something you are obsessed with? ", "Go on. Tell me more.", "What three words best describe you? ","What would be your perfect weekend? ", "What are you going to do this weekend? ", "What’s the most useful thing you own? ","What’s your favorite way to waste time? ","Do you have any pets? ","Where did you go last weekend? ","What is something popular now that annoys you? ","What did you do on your last vacation? ","When was the last time you worked really hard? ","Do you prefer to just relax in your free time? ","What do you do when you hang out with your friends? ","Who is your oldest friend? ","What’s the best thing about Skyline? ","If you could have any animal as a pet, what animal would you choose? "]
    let randomQuestion = question.randomElement()!
    return randomQuestion
}

// This function returns a random answer
func funcAnswer() -> String {
    let answer = ["Why is that interesting? ","Is that something that interests you? ","Why do you ask? ","Do you? ","Are you serious? ", "What do you mean? ", "Can you be more specific? ","Why do you want to know? ","Do you? ","I'm not sure what you mean. ","Let me think about that. "]
    let randomAnswer = answer.randomElement()!
    return randomAnswer
}

// This function returns a random comment

func funcComment() -> String{
    let comment = ["That's interesting. ","I'd like to learn more about that. ","Interesting. ","Sounds fun. ","That sounds really boring. ", "I don't want to talk about that. ", "Cool. ","Uh huh. ","Yeah? ", "Hmmmm. ","Wow. "]
    let randomComment = comment.randomElement()!
    return randomComment
}
    
let botName = "Evil John Green-Bot"

print("> Hello, what is your name? ")
var userName = readLine()

//Pause
funcWait()
print("> Hello \(userName!). My name is \(botName).")

//Pause
funcWait()
print("> Let's chat. When you're done talking, just say \"bye\".")

// Set the default variable values
var oldQuestion = ""
var newQuestion = ""
var answer = ""

while (answer != "BYE") {
   
  //Is the user asking a question?
  if answer.contains("?"){
   	//Pause
    funcWait()  
	//Did the question contain the words, 'DO YOU'?
      if answer.contains("DO YOU") {
        print("> I want to talk about you.")
      } else {
        //Answer the user's question
        print("> " + funcAnswer())
      }
  } else {
    //User is NOT asking a question
    //Did the user say, 'I like..."?
    if answer.contains("I LIKE") {
      //Pause
      funcWait()
      print(">  I like that too.")
    } else {
      //Did the user say, 'Sometimes..."?
      if answer.contains("SOMETIMES") {
        //Pause
        funcWait()
        print("> Yeah. Me too.")
      }
    }
  }
    
  //Should the program generate a random comment before continuing?
  if (answer != "") {
    let makeComment:Int = Int.random(in: 1..<10)
    if (makeComment >= 7) {
      //Pause
      funcWait()
      //Generate a random comment
      print("> " + funcComment())
      //Pause
      funcWait()
    }
  }  
  
  newQuestion = funcQuestion()
  //Is the new question the same as the old question?
  if oldQuestion.uppercased() != newQuestion.uppercased() {
    //Set the old question value = the new question
    oldQuestion = newQuestion
    //Pause
    funcWait()
    //Ask the new question
    print("> " + newQuestion)
    answer = readLine()!.uppercased()
  }
}

//Bye entered   
print("> Nice talking with you!\n> Bye \(userName!).")
