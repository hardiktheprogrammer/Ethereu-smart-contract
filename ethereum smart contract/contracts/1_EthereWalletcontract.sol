agma solidity >=0.7.0 <0.9.0;

contract Etherewallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint _amount) external {
        require(msg.sender == owner,"Only owner can call this function");
        payable(msg.sender).transfer(_amount);
    }
    function  getBalance() external view  returns(uint){

        return address(this).balance;


    }
}
