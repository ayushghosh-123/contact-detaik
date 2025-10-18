// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title Counter Contract
/// @author 
/// @notice A simple counter contract for learning Solidity on Flow EVM testnet.
/// @dev Demonstrates state variables, functions, and events.
contract Counter {
    // State variable to store the count
    uint256 public count;

    // Event to log when count changes
    event CountUpdated(address indexed user, uint256 oldCount, uint256 newCount);

    /// @notice Increments the counter by 1
    function increment() external {
        uint256 oldCount = count;
        count += 1;
        emit CountUpdated(msg.sender, oldCount, count);
    }

    /// @notice Decrements the counter by 1
    function decrement() external {
        require(count > 0, "Counter cannot go below zero");
        uint256 oldCount = count;
        count -= 1;
        emit CountUpdated(msg.sender, oldCount, count);
    }

    /// @notice Resets the counter to 0
    function reset() external {
        uint256 oldCount = count;
        count = 0;
        emit CountUpdated(msg.sender, oldCount, count);
    }

    /// @notice Returns the current counter value
    function getCount() external view returns (uint256) {
        return count;
    }
}
