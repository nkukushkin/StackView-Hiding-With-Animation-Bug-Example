## StackView Hide With Animation Bug Example

This is a bug that exists in iOS 10.2 (didn't check on previous verions).

Description:
When hiding a view withing a UIStackView using UIView animation API multiple times, the hidden property values "stack" and it requires settigns hidden to false multiple times before the value actually changes.

Steps to reproduce:
	
	1. Make sure "Animated" switch is on
	2. Tap [Hide] more than 3-4 times
	3. Tap [Show]
	4. Observe that the blue view doesn't appear
	5. Tap [Show] until blue view appears

![demostration](Demonstration.gif?raw=true)