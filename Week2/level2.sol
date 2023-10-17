// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.17;

/////////////////// ☆☆ extropyio ☆☆ /////////////////////
//     -漫~*'¨¯¨'*·舞~ solidity ctf ~舞·*'¨¯¨'*~漫-     //
/////////////////////////////////////////////////////////


/* 
  interface Isolution2 {
    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
  }
*/

contract Level2Template{

    uint256[10] arr; 

    function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray){
        // TODO: Implement your solution here.
        arr = unsortedArray;
    
        for(uint i=0; i<arr.length; i++){
            for(uint j=0; j< arr.length-i-1;j++){
                if(arr[j] > arr[j+1]) {
                    uint temp = arr[j];
                    arr[j]=arr[j+1];
                    arr[j+1]=temp;
                }
            }
        }
        return arr;
    }
}