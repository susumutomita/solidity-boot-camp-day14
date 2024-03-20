// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract BitwiseOperationsYui {
    function checkAndUpdateX(uint256 x) external pure returns (uint256) {
        assembly {
            let highestByte := shr(248, x)
            switch highestByte
            case 0xde {
                x := mul(x, 4)
            }
            case 0xbe {
                x := div(x, 4)
            }
        }
        return x;
    }
}
