//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Error {

    uint public devotionLevel;
    bool purity = false;
    bool public isAvatarHealed = false;
    uint public magicDiamond ;

    function LetsDoSatsang() public {
        devotionLevel += 1;
    }
    
    function EnterTheMagicTemple() public {
        require(devotionLevel >= 10, "You have not a one hundred percent pure heart. To have a pure heart devotional level must be greater than or equals to 10. Do Satsangg to increase devotional level.");
        purity = true;

    }
    
    function takeTheMagicDiamond() public {
 
        assert(purity == true);
        magicDiamond += 1;

    }

    function healTheAvatar() public  returns (string memory){
        // Revert is useful when the condition to check is complex.
        // This code does the exact same thing as the example above
        if (magicDiamond < 10) {
            revert("Not enough, need 10 magic diamonds to heal. Take them from the Magic Temple.");
        }else{
            isAvatarHealed = true;
            return "Healed";
        }
    }

    function restart() public {
        magicDiamond = 0;
        devotionLevel = 0;
        purity = false;
        isAvatarHealed = false;
    }
}
