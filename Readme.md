## StackView Hide With Animation Bug Example

This is a bug that exists in iOS 10.2 (didn't check on previous verions).

Description:
When hiding a view withing a UIStackView using UIView animation API multiple times, the hidden property values "stack" and it requires settigns hidden to false multiple times before the value actually changes.

Steps to reproduce:
	
1. Add arranged subviews to `UIStackView`
2. Call `isHidden = true` withing an `UIView` animation block on one of the subviews multiple times (4+ is should be enough to reproduce this issue)
3. Call `isHidden = false` on the same subview
4. Observe that it doesn't appear and still has `isHidden` set to `true`
5. Call `hidden = false` until the the property actually changes to `false`

![demostration](Demonstration.gif?raw=true)
