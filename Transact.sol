// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract Transact{
    uint pin = 1711;
    uint totalBalance = 4000;

    function debit (uint _n, uint _val ) public {
        require(pin == _n);
        totalBalance -= _val;

    }

    function checkError (uint _n) public view {
        if (pin != _n)
        {
            revert("wrong address");
        }
    }
    function ifAssert (uint _val) public view {
        assert(totalBalance >= _val );
    }

    function getBalance() public view returns(uint) {
        return totalBalance;
    }
}

