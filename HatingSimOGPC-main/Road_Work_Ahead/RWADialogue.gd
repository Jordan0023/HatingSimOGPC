extends Node2D

var dialogue_1 = [
	{
		"Name": "Stop",
		"Expression": "Neutral",
		"Position": "1",
		"Choices": ["More like hurricane tortilla!","Zach? Really...?", "Well it's nice to meet you Zach!"],
		"Text": "Hurricane Katrina!?",
	},
	
]
var after_choice_1 = [
	{
	"Name": "Stop",
	"Expression": "Happy",
	"Position": "1",
	"Choices": ["You're gonna get us in trouble.","Oh, sorry... You just don't look like a 'Zach'.", "Anyways, I'll see you later."],
	"Text": "Haha! Good to know someone else here is cultured. Name's Road Work, but you can call me Zach, if you know what I mean...",
	},
	]

var after_choice_2 = [
	{
	"Name": "Stop",
	"Expression": "Mad",
	"Position": "1",
	"Choices": ["You're gonna get us in trouble.","Oh, sorry... You just don't look like a 'Zach'.", "Anyways, I'll see you later."],
	"Text": "Why'd you say it like that!? I was just trying to make a joke.",
	}
	
]

var after_choice_3 = [
	{
	"Name": "Stop",
	"Expression": "Neutral",
	"Position": "1",
	"Choices": ["You're gonna get us in trouble.","Oh, sorry... You just don't look like a 'Zach'.", "Anyways, I'll see you later."],
	"Text": "No that's-- never mind, it's 'ice' to meet you too!",
	}
	
	
]
var after_choice_4 = [
	{
	"Name": "Stop",
	"Expression": "Neutral",
	"Position": "1",
	"Choices": ["What??? I'm soo lost...", "Yeah! I totally get what you are saying.", "I don't get it"],
	"Text": "You know it! But hopefully we won't get arrested...!",
	}	
]


var after_choice_5 = [
	{
	"Name": "Stop",
	"Expression": "Mad",
	"Position": "1",
	"Choices": ["What??? I'm soo lost...", "Yeah! I totally get what you are saying.", "I don't get it"],
	"Text": "I, uh... don't know how to take that",
	}	
]
var after_choice_6 = [
	{
	"Name": "Stop",
	"Expression": "Happy",
	"Position": "1",
	"Choices": ["What??? I'm soo lost...", "Yeah! I totally get what you are saying. I just couldn't hear you.", "I don't get it"],
	"Text": "Not unless I see you first!",
	}	
]

var after_choice_7 = [
	{
	"Name": "Stop",
	"Expression": "Neutral",
	"Position": "1",
	"Choices": ["O-Ok. Well, where were you heading?", "Seems you're in the shadow realm instead", "I just know too much about random topics"],
	"Text": "You don't know Vine?! Have you 'ever' been on the internet?",
	},
	]
	
var after_choice_8 = [
	{
	"Name": "Stop",
	"Expression": "Happy",
	"Position": "1",
	"Choices": ["O-Ok. Well, where were you heading?", "Seems you're in the shadow realm instead", "I just know too much about random topics"],
	"Text": "Ah, sorry... sorry. It can get a bit loud with all the drama at school...",
	},
	]
var after_choice_9 = [
	{
	"Name": "Stop",
	"Expression": "Mad",
	"Position": "1",
	"Choices": ["O-Ok. Well, where were you heading?", "Seems you're in the shadow realm instead", "I just know too much about random topics"],
	"Text": "This is getting sadder and sadder. Y'knowm Vine? The app where you can make seven second funny clips?",
	},
	]

var after_choice_10 = [
	{
	"Name": "Stop",
	"Expression": "Mad",
	"Position": "1",
	"Choices": ["", "", ""],
	"Text": "The Video Arts club. I'm writing an essay about the cultural impact of Vine.",
	},
	]
var after_choice_11 = [
	{
	"Name": "Stop",
	"Expression": "Neutral",
	"Position": "1",
	"Choices": ["", "", ""],
	"Text": "Hah, touche.",
	},
	]
var after_choice_12 = [
	{
	"Name": "Stop",
	"Expression": "Happy",
	"Position": "1",
	"Choices": ["", "", ""],
	"Text": "Hah. I get that. I can tell you anything you want to know about Vine, video production, abnd all aircraft carriers.",
	},
	]
	
var succeed = [
	{
	"Name": "Stop",
	"Expression": "Mad",
	"Position": "1",
	"Choices": ["", "", ""],
	"Text": "You are the lammeeessssstttttt person I've ever met.",
	},
	]
	
var fail = [
	{
	"Name": "Stop",
	"Expression": "Happy",
	"Position": "1",
	"Choices": ["", "", ""],
	"Text": "Hahaha. I enjoy laughing with you. We are gonna be partner-in-crime now! You hear!",
	},
	]

var choices = {
 1: [after_choice_1, after_choice_2, after_choice_3],
 2: [after_choice_4, after_choice_5, after_choice_6], 
 3: [after_choice_7, after_choice_8, after_choice_9], 
 4: [after_choice_10, after_choice_11, after_choice_12]
}

