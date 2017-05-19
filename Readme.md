## StackView Hide With Animation Bug Example

This is a bug that exists in iOS 10.2-10.3.2 (didn't check on previous versions).

### Description:   
When hiding an arrangedSubview of an `UIStackView` using UIView animation API multiple times, the `isHidden` property values "stack" and it requires settigns `isHidden` to `false` multiple times before the value updates.

### Steps to reproduce:  
1. Add an arranged subviews to `UIStackView`
2. Call `isHidden = true` the subview within a UIView animation block multimple times
3. Call `isHidden = false` on the same subview
4. Observe that it doesn't appear and still has `isHidden` still set to `true`
5. Call `isHidden = false` until the value of the property actually changes to `false`

![demostration](Demonstration.gif?raw=true)
