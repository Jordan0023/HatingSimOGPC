extends Node2D

var dialogue_1 = [
	{
		"Name": "Stop",
		"Expression": "Neutral",
		"Position": "1",
		"Choices": ["","", ""],
		"Text": "Hey!",
	},
	{
		"Name": "Stop",
		"Expression": "Neutral",
		"Position": "1",
		"Choices": ["","", ""],
		"Text": "Are you parking ticket...",
	},
	{
		"Name": "Stop",
		"Expression": "Neutral",
		"Position": "1",
		"Choices": ["No... But I am fine.","Uhh... What?", "Nope"],
		"Text": "Because you’ve got fiiiiiiiinneee written all over you.",
	},
	
]
var after_choice_1 = [
	{
	"Name": "Stop",
	"Expression": "Happy",
	"Position": "1",
	"Choices": ["Ya. But I'm too fine to settle for garbage like you.","I meant I'm doing well, but thanks...", "I am not actually fine, I'm bad now. That was gross."],
	"Text": "I know you are!",
	},
	]

var after_choice_2 = [
	{
	"Name": "Stop",
	"Expression": "Happy",
	"Position": "1",
	"Choices": ["Ya. But I'm too fine to settle for garbage like you.","I meant I'm doing well, but thanks...", "I am not actually fine, I'm bad now. That was gross."],
	"Text": "Are you deaf? That's good because you do not want to hear me snore.",
	}
	
]

var after_choice_3 = [
	{
	"Name": "Stop",
	"Expression": "Mad",
	"Position": "1",
	"Choices": ["Ya. But I'm too fine to settle for garbage like you.","I meant I'm doing well, but thanks...", "I am not actually fine, I'm bad now. That was gross."],
	"Text": "Wha... What? I'm amazing what are you talking about?",
	}
	
	
]
var after_choice_4 = [
	{
	"Name": "Stop",
	"Expression": "Mad",
	"Position": "1",
	"Choices": ["Better things have definitely happened to me!", "That roast was very slick if I do say so myself.", "I highly doubt that statistic"],
	"Text": "Garbage? Garbage! I'm the best thing that's ever happened to you!",
	}	
]


var after_choice_5 = [
	{
	"Name": "Stop",
	"Expression": "Happy",
	"Position": "1",
	"Choices": ["Are you deaf! I'm clearly not interested!","I'm just so confused.", "I was thrown off. That's all."],
	"Text": "I bet you're doing much better now that I'm here.",
	}	
]
var after_choice_6 = [
	{
	"Name": "Stop",
	"Expression": "Neutral",
	"Position": "1",
	"Choices": ["Are you! I'm clearly not interested!","I'm just so confused.", "I was thrown off. That's all."],
	"Text": "Huh... you're kinda funny.",
	}	
]

var after_choice_7 = [
	{
	"Name": "Stop",
	"Expression": "Mad",
	"Position": "1",
	"Choices": ["You heard me! I said no.", "Look. You're not amazing.", "I'm talking about my first impression of your awful personality"],
	"Text": "How are you not interested! I'm rich and good looking, what do you mean you're not interested?",
	},
	]
	
var after_choice_8 = [
	{
	"Name": "Stop",
	"Expression": "Happy",
	"Position": "1",
	"Choices": ["You heard me! I said no.", "Look. You're not amazing.", "I'm talking about my first impression of your awful personality"],
	"Text": "It's ok. You won't be confused with me",
	},
	]
var after_choice_9 = [
	{
	"Name": "Stop",
	"Expression": "Mad",
	"Position": "1",
	"Choices": ["You heard me! I said no.", "Look. You're not amazing.", "I'm talking about my first impression of your awful personality"],
	"Text": "Don't worry... A strong person like me won't throw you off",
	},
	]

var after_choice_10 = [
	{
	"Name": "Stop",
	"Expression": "Mad",
	"Position": "1",
	"Choices": ["", "", ""],
	"Text": "You can't say no. I mean it's so funny that you would even think that.",
	},
	]
var after_choice_11 = [
	{
	"Name": "Stop",
	"Expression": "Mad",
	"Position": "1",
	"Choices": ["", "", ""],
	"Text": "Says you! It's not like your opinion matters to me!",
	},
	]
var after_choice_12 = [
	{
	"Name": "Stop",
	"Expression": "Happy",
	"Position": "1",
	"Choices": ["", "", ""],
	"Text": "I'm actually impressed with your bravery against me. It's stupid, but impressive...",
	},
	]
	
var succeed = [
	{
	"Name": "Stop",
	"Expression": "Mad",
	"Position": "1",
	"Choices": ["", "", ""],
	"Text": "Fine. I hate you and you best know that you are making the biggest mistake of your life",
	},
	]
	
var fail = [
	{
	"Name": "Stop",
	"Expression": "Happy",
	"Position": "1",
	"Choices": ["", "", ""],
	"Text": "Alright... You're mine now.",
	},
	]

var choices = {
 1: [after_choice_1, after_choice_2, after_choice_3],
 2: [after_choice_4, after_choice_5, after_choice_6], 
 3: [after_choice_7, after_choice_8, after_choice_9], 
 4: [after_choice_10, after_choice_11, after_choice_12]
}

