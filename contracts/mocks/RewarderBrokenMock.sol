// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
import "../pantry/interfaces/IRewarder.sol";

contract RewarderBrokenMock is IRewarder {
    function onReactReward(
        uint256,
        address,
        address,
        uint256,
        uint256
    ) external override {
        revert();
    }

    function pendingTokens(
        uint256 pid,
        address user,
        uint256 reactAmount
    )
        external
        view
        override
        returns (IERC20[] memory rewardTokens, uint256[] memory rewardAmounts)
    {
        revert();
    }
}
