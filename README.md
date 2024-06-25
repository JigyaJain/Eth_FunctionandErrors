# Eth_FunctionandErrors-
This solidity program is a smart contract of error handling. The project aims to know about the implementation of 3 error handling statements that are require(), assert() and revert().

## Description

This smart contract is been implementing the 3 error handling statements via means of debiting values from the user's account. It is done so by using debit function, if the user enters correct pin then the amount will get debit and balance will reduce. The function checkError is used if the pin is wrong the transaction will get reverted.
Another function ifAssert is used for assert statement. By this program the reader will get the understanding of using error handling statements.

## Getting Started

### Executing program

    // SPDX-License-Identifier: MIT
    pragma solidity 0.8.26;

    contract Transact{
    uint pin = 1711;
    uint totalBalance = 4000;

    //if require condition is true then value is debitted and the balance will reduce
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


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.26" (or another compatible version), and then click on the "Compile Transact.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the debit, checkError, IfAssert function which will require pin and value. Finally, click on the "transact" button to execute the function. Once you transact it then call the getBalance to check the updated value.

## Authors

Jigya Jain

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
