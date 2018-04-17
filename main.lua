-----------------------------------------------------------------------------------------
-- Created by: Mouaffak Koubeisy
-- Created on: April 17th 2018
-----------------------------------------------------------------------------------------
local theBall = display.newImage( "./assets/sprites/ball.png" )
theBall.x = display.contentCenterX
theBall.y = display.contentCenterY
theBall.id = "ball object"
 
local function onBallTouched( event )
    if ( event.phase == "began" ) then
        print( "Touch event began on: " .. event.target.id )
    elseif ( event.phase == "ended" ) then
        print( "Touch event ended on: " .. event.target.id )
    end
  
    return true
end

theBall:addEventListener( "touch", onBallTouched ) 

local goldenBall = display.newImage( "./assets/sprites/ball.png" )
goldenBall.x = display.contentCenterX - 200
goldenBall.y = display.contentCenterY
goldenBall.id = "ball object"
 
function goldenBall:touch( event )
    if ( event.phase == "began" ) then
        print( "Touch event began on: " .. self.id )
 
        -- Set touch focus
        display.getCurrentStage():setFocus( self )
        self.isFocus = true
     
    elseif ( self.isFocus ) then
        if ( event.phase == "moved" ) then
            print( "Moved phase of touch event detected." )
 
        elseif ( event.phase == "ended" or event.phase == "cancelled" ) then
 
            -- Reset touch focus
            display.getCurrentStage():setFocus( nil )
            self.isFocus = nil
            print( "Touch event ended on: " .. self.id )
        end
    end

    return true
end

goldenBall:addEventListener( "touch", goldenBall )

local volleyBall = display.newImage( "./assets/sprites/VolleyBall.png" )
volleyBall.x = display.contentCenterX + 200
volleyBall.y = display.contentCenterY
volleyBall.id = "Volley Ball"

local function volleyBallTouch( event )

    print (" Working ")
    return true
end

volleyBall:addEventListener( "touch", volleyBallTouch )