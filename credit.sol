pragma solidity >= 0.7.0;
//Sanskruti Badhe
//2020301072
contract CreditCardLimit {
    uint card_limit = 10000;
    uint travelCost;
    uint foodCost;
    uint stayCost;

    function set_travelCost (uint cost) public {
        travelCost = cost;
    }

    function set_foodCost (uint cost) public {
        foodCost = cost;
    }
    
    function set_stayCost (uint cost) public {
        stayCost = cost;
    }

    function get_remaining_balance() public view returns(uint){
        return card_limit - (travelCost + foodCost + stayCost);
    }
}