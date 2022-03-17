// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Storage {

    // keccak256(key . slot)
    mapping(uint => uint) public aa;    // slot 0
    mapping(address => uint) public bb; // slot 1

    // keccak256(key . slot)
    uint[] public cc; // slot 2

    uint8 public a = 7; // 1 byte
    uint16 public b = 10; // 2bytes
    address public c = 0x500938Fc5d272Ef62ed84ed375f430D77137e5D4; //
    bool d = true;  // 1 byte
    uint64 public e = 15; // 8bytes
    // 32 bytes, all values will be stored in slot 3
    // 0x3FbF52E659F4Da3f203Bf103eF0864e64F7CBF50

    uint256 public f = 200; // 32bytes -> slot 4

    uint8 public g = 40; // 1byte -> slot 5

    uint256 public h = 789; // 32bytes -> slot 6 

    constructor() {
        cc.push(1);
        cc.push(10);
        cc.push(100);
 
        aa[2] = 4;
        aa[3] = 10;
        bb[0x500938Fc5d272Ef62ed84ed375f430D77137e5D4] = 100;
    }

}