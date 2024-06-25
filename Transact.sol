// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

//if require condition is true then value is debitted and the balance will reduce
contract Transact{
    uint pin = 1711;
    uint totalBalance = 4000;

    function debit (uint _n, uint _val ) public {
        require(pin == _n, "Pin is correct");
        totalBalance -= _val;

    }

    function checkError (uint _n) public view {
        if (pin != _n)
        {
            revert("Wrong Pin");
        }
    }
    function ifAssert (uint _val) public view {
        assert(totalBalance >= _val );
    }

    function getBalance() public view returns(uint) {
        return totalBalance;
    }
}

