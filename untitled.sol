// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;


contract YourContract {
    uint count;

    event Increment(uint value);
    event Decrement(uint value);

    function getCount() external view returns (uint)   {
        return count;
    }

    constructor()   {
        count = 0;
    }

    function increment() public  {
        count += 1;
        emit Increment(count);
    }

    function decrement () public {
        count -= 1;
        emit Decrement(count);
    }
}

