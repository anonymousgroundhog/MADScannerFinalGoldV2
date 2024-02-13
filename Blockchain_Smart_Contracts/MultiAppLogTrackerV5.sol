    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.17;
    import "hardhat/console.sol";
    // import "truffle/Console.sol";
    contract MultiAppLogTracker {
        string[] private log_ids;
        string[] private things_to_check;
        string[] private valid_model_transitions;
        // Structure to hold log details
        struct Log {
            address sender;
            string log_class;
            string log_library;
            string log_method;
            string log_date_and_time;
            uint256 timestamp;
        }
        // struct App {
        //     string transition;
        //     bool valid;
        // }
        // Mapping from app identifier to its logs
        mapping(string => Log[]) private logs;
        // mapping(string => App[]) public apps;

        function checkIfLogIds_Contains_Val(string calldata val) private view returns (bool) {
            bool val_to_return = false;
            for(uint x = 0; x < log_ids.length; x++){
                if(sha256(abi.encodePacked(val)) == sha256(abi.encodePacked(log_ids[x]))) { 
                    return true;
                }
            }
            return val_to_return;
        }
    
        // Function to add a valid model transition entry
        function addValidModelTransitions(string calldata this_transition) external {
                valid_model_transitions.push(this_transition);
        }

        function clearValidModelTransitions() external {
                delete valid_model_transitions;
        }
        // Function to add a transition entry for an app
        function addValidTransitions(string calldata this_transition) external {
            require(keccak256(bytes(this_transition)) != keccak256(bytes("")), "Invalid Name");
                things_to_check.push(this_transition);
        }
        
        // Function to add a log entry for an app
        function addLog(string calldata appId, string calldata logClass, string calldata logLibrary, string calldata logMethod, string calldata logDateAndTime) external {
            if (things_to_check.length > 0){
                for(uint x = 0; x < things_to_check.length; x++){
                    if(sha256(abi.encodePacked(logMethod)) == sha256(abi.encodePacked(things_to_check[x]))) {
                        logs[appId].push(Log(msg.sender, logClass, logLibrary, logMethod, logDateAndTime, block.timestamp));
                        if (! checkIfLogIds_Contains_Val(appId)){
                            log_ids.push(appId);
                        }
                    }
                }
            }
        }

        // Function to retrieve logs for an app
        // Note: This can be gas intensive for large log arrays.
        function getLogs(string calldata appId) external view returns (Log[] memory) {
            return logs[appId];
        }

        function getLogIds() external view returns (string[] memory) {
            return log_ids;
        }

       function Check_Transition(string calldata Transition_1, string calldata Transition_2) external view returns (bool) {
            string memory stringtocheck = string.concat(Transition_1, " -> ", Transition_2);
            bool val_check = false;
            for(uint y = 0; y < valid_model_transitions.length; y++){
                string memory model_check = valid_model_transitions[y];
                if(sha256(abi.encodePacked(stringtocheck)) == sha256(abi.encodePacked(model_check))){
                    // console.log("true");
                    return true;   
                }
            }
            return val_check; 
        }

        // THIS IS FOR TESTING PURPOSES ONLY
        function Setup_Model() public {
            this.addValidTransitions("attachInfo");
            this.addValidTransitions("build");
            this.addValidTransitions("initialize");
            this.addValidTransitions("onAdLoaded");
            this.addValidTransitions("onResume");
            this.addValidTransitions("onPause");
            this.addValidTransitions("onAdImpression");
            this.addValidTransitions("onDestroy");
            this.addValidModelTransitions("attachInfo -> build");
            this.addValidModelTransitions("build -> initialize");
            this.addValidModelTransitions("initialize -> onAdLoaded");
            this.addValidModelTransitions("onAdLoaded -> onResume");
            this.addValidModelTransitions("onResume -> onPause");
            this.addValidModelTransitions("onPause -> onAdImpression");

            this.addValidModelTransitions("attachInfo -> attachInfo");
            this.addValidModelTransitions("build -> build");
            this.addValidModelTransitions("initialize -> initialize");
            this.addValidModelTransitions("onAdLoaded -> onAdLoaded");
            this.addValidModelTransitions("onResume -> onResume");
            this.addValidModelTransitions("onPause -> onPause");
            this.addValidModelTransitions("onAdImpression -> onAdImpression");

            // this.addLog("a1", "c", "lm", "attachInfo", "d");
            // this.addLog("a1", "c", "lm", "build", "d");
            // this.addLog("a1", "c", "lm", "initialize", "d");
            // this.addLog("a1", "c", "lm", "initialize", "d");
            // this.addLog("a1", "c", "lm", "onAdLoaded", "d");
            // this.addLog("a1", "c", "lm", "onResume", "d");
            // this.addLog("a1", "c", "lm", "onPause", "d");
            // this.addLog("a1", "c", "lm", "onAdImpression", "d");
        }
        
    }

