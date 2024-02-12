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
        struct App {
            string transition;
            bool valid;
        }
        // Mapping from app identifier to its logs
        mapping(string => Log[]) private logs;
        mapping(string => App[]) public apps;

        // Function to add a app entry
        // function setApp(string calldata appId) external {
        //     apps[appId].push(App(false));
        //     // App[appId] = App(false);
        //     // apps[appId] = newApp;
        // }
    
        // Function to add a valid model transition entry
        function addValidModelTransitions(string calldata this_transition) external {
                valid_model_transitions.push(this_transition);
        }

        function clearValidModelTransitions() external {
                // valid_model_transitions.push(this_transition);
                // valid_model_transitions = new string[](valid_model_transitions.length);
                delete valid_model_transitions;
                // console.log(valid_model_transitions[0]);
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
                        log_ids.push(appId);
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

        function getAppCheck(string calldata appId) external view returns (App[] memory) {
            return apps[appId];
        }
       
        function Validation_Testing(string calldata appId) external {
            // string[] memory things_to_return = new string[](apps[appId].length);
            for(uint x = 0; x < logs[appId].length; x++){
                // things_to_return[x] = logs[appId][x].log_method;
                if (x < logs[appId].length-1){
                    console.log(logs[appId][x].log_method, logs[appId][x+1].log_method);
                    string memory stringtocheck = string.concat(logs[appId][x].log_method, " -> ", logs[appId][x+1].log_method);
                    bool val_check = false;
                    for(uint y = 0; y < valid_model_transitions.length; y++){
                        string memory model_check = valid_model_transitions[y];
                        if(sha256(abi.encodePacked(stringtocheck)) == sha256(abi.encodePacked(model_check))){
                            // console.log("true");
                            val_check = true;
                            break;
                        }else{
                            val_check = false;
                            
                        }
                    }
                    
                    console.log(val_check); 
                    // App storage app = apps[appId];
                    //  app = apps[appId];
                    //  apps[appId].valid = val_check; 
                    //  App storage _app = apps[appId];  
                    apps[appId].push(App(stringtocheck, val_check));
                }
            } 
        }
        // THIS IS FOR TESTING PURPOSES ONLY
        function Populate() public {
            this.addValidTransitions("attachinfo");
            this.addValidTransitions("build");
            this.addValidTransitions("initialize");
            this.addValidTransitions("onAdLoaded");
            this.addValidTransitions("onResume");
            this.addValidTransitions("onPause");
            this.addValidTransitions("onAdImpression");
            this.addValidTransitions("onDestroy");
            this.addValidModelTransitions("attachinfo -> build");
            this.addValidModelTransitions("build -> initialize");
            this.addValidModelTransitions("initialize -> onAdLoaded");
            this.addValidModelTransitions("onAdLoaded -> onResume");
            this.addValidModelTransitions("onResume -> onPause");
            this.addValidModelTransitions("onPause -> onAdImpression");

            this.addValidModelTransitions("attachinfo -> attachinfo");
            this.addValidModelTransitions("build -> build");
            this.addValidModelTransitions("initialize -> initialize");
            this.addValidModelTransitions("onAdLoaded -> onAdLoaded");
            this.addValidModelTransitions("onResume -> onResume");
            this.addValidModelTransitions("onPause -> onPause");
            this.addValidModelTransitions("onAdImpression -> onAdImpression");

            this.addLog("a1", "c", "lm", "attachinfo", "d");
            this.addLog("a1", "c", "lm", "build", "d");
            this.addLog("a1", "c", "lm", "initialize", "d");
            this.addLog("a1", "c", "lm", "initialize", "d");
            this.addLog("a1", "c", "lm", "onAdLoaded", "d");
            this.addLog("a1", "c", "lm", "onResume", "d");
            this.addLog("a1", "c", "lm", "onPause", "d");
            this.addLog("a1", "c", "lm", "onAdImpression", "d");
        }
        
    }

