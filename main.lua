-----------------------------------------------------------------------------------------
--
-- main.lua
-- created on : march 1
-- createb by : Adam
-- This code calculates the area and circumference of the circle
-----------------------------------------------------------------------------------------
local radiousTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )

radiousTextField.id = "radious textField"

local areaOfCircleTextField = display.newText( "area", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 75 )

areaOfCircleTextField.id = "area textField"

local circumferenceTextField = display.newText( "circumference", display.contentCenterX, display.contentCenterY - 300, native.systemFont, 75 )

circumferenceTextField.id = "circumference textField"

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY

calculateButton.id = "calculate button"

 

local function calculateButtonTouch( event )

    -- this function calculates the area and circumference of a circle given the radious 

 	local radious

    local areaOfCircle

    local circumference

	radious = radiousTextField.text
	circumference = circumferenceTextField.text
	areaOfcircle = areaOfcircleTextField
	areaOfcircle = radious^2 * math.pi
	circumference = 2 * math.pi * radious
	-- print( areaOfSquare )

    areaOfCircleTextField.text = "The area is " .. areaOfcircle
    circumferenceTextField.text = "the circumference is " .. circumference

	return true

end



calculateButton:addEventListener( "touch", calculateButtonTouch )
