// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

/////////////////// ☆☆ extropyio ☆☆ /////////////////////
//     -漫~*'¨¯¨'*·舞~ solidity ctf ~舞·*'¨¯¨'*~漫-     //
/////////////////////////////////////////////////////////

/*
interface Isolution3 {
    function solution(bytes memory packed) external returns (uint16 a, bool b, bytes6 c);
}
*/

contract Level3Template {
    function solution(bytes memory packed) external pure returns (uint16 a, bool b, bytes6 c) {
        
        assembly {
            a:=mload(add(packed, 0x20))
            b:=mload(add(packed, 0x22))
            c:=mload(add(packed, 0x23))
        }
    }
}