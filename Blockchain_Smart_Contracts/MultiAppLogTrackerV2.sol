// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MultiAppLogTracker {
    string[] public log_ids;
    // Structure to hold log details
    struct Log {
        address sender;
        string app_name;
        string log_class;
        string log_method;
        string log_date_and_time;
        uint256 timestamp;
    }

    // Mapping from app identifier to its logs
    mapping(string => Log[]) private logs;


    // Function to add a log entry for an app
    function addLog(string calldata appId, string calldata logApp, string calldata logClass, string calldata logMethod, string calldata logDateAndTime) external {
        string[13] memory things_to_check = ["attachInfo", "initialize", "build", "setRequestConfiguration", "onAdLoaded", "onStart", "onResume", "onUserLeaveHint", "onPause", "onAdClicked", "onAdLoaded", "onAdImpression", "onDestroy"];
        for(uint x = 0; x< things_to_check.length; x++){
            if(sha256(abi.encodePacked(logMethod)) == sha256(abi.encodePacked(things_to_check[x]))) {
                logs[appId].push(Log(msg.sender, logApp, logClass, logMethod, logDateAndTime, block.timestamp));
            }
        }
        log_ids.push(appId);
    }

    // Function to retrieve logs for an app
    // Note: This can be gas intensive for large log arrays.
    function getLogs(string calldata appId) external view returns (Log[] memory) {
        return logs[appId];
    }

    function getLogIds() external view returns (string[] memory) {
        return log_ids;
    }
    
}

