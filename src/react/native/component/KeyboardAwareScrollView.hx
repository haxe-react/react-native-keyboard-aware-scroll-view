package react.native.component;

import react.native.component.props.ScrollViewProps;
import react.ReactComponent.ReactComponentOfProps;

@:jsRequire('react-native-keyboard-aware-scroll-view', 'KeyboardAwareScrollView')
extern class KeyboardAwareScrollView extends ReactComponentOfProps<KeyboardAwareScrollViewProps> {}

typedef KeyboardAwareScrollViewProps = {
	> ScrollViewProps, 
	?innerRef:Void->Dynamic,			//Catch the reference of the component.
	?viewIsInsideTabBar:Bool,			//Adds an extra offset that represents the TabBarIOS height.
	?resetScrollToCoords:{x: Float, y: Float},	//Coordinates that will be used to reset the scroll when the keyboard hides.
	?enableAutomaticScroll:Bool,		//When focus in TextInput will scroll the position, default is enabled.
	?extraHeight:Float,					//Adds an extra offset when focusing the TextInputs.
	?extraScrollHeight:Float,			//Adds an extra offset to the keyboard. Useful if you want to stick elements above the keyboard.
	?enableResetScrollToCoords:Bool,	//Lets the user enable or disable automatic resetScrollToCoords.
	?keyboardOpeningTime:Float,			//Sets the delay time before scrolling to new position, default is 250
	?enableOnAndroid:Bool,				//Enable Android Support
}