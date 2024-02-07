    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.0;
    import "hardhat/console.sol";
    // import "truffle/Console.sol";
    contract MultiAppLogTracker {
        string[] public log_ids;
        string[] public things_to_check;
        string[] public valid_model_transitions;
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
            address sender;
            bool valid;
        }
        // Mapping from app identifier to its logs
        mapping(string => Log[]) private logs;
        mapping(string => App[]) private apps;

        // Function to add a app entry
        function setApp(string calldata appId) external {
            apps[appId].push(App(msg.sender, false));
        }

        // Function to add a valid model transition entry
        function addValidModelTransitions(string calldata this_transition) external {
                valid_model_transitions.push(this_transition);
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
        
        function getThingsToCheck() external view returns (string[] memory) {
            return things_to_check;
        }

        function getAppCheck(string calldata appId) external view returns (App[] memory) {
            return apps[appId];
        }
        // function Test(string calldata appId) external view returns (string[] memory) {
        //     string[] memory things_to_return = new string[](apps[appId].length);
        //     for(uint x = 0; x < logs[appId].length; x++){
        //         things_to_return[x] = logs[appId][x].log_method;
        //     } 
        //     console.log(logs[appId][0].log_method);
        //     return things_to_return;
        // }
        function Test(string calldata appId) view  public {
            // string[] memory things_to_return = new string[](apps[appId].length);
            for(uint x = 0; x < logs[appId].length; x++){
                // things_to_return[x] = logs[appId][x].log_method;
                if (x < logs[appId].length-1){
                    console.log(logs[appId][x].log_method, logs[appId][x+1].log_method);
                    string memory stringtocheck = string.concat(logs[appId][x].log_method, " -> ", logs[appId][x+1].log_method);
                    string memory model_check = valid_model_transitions[0];
                    if(sha256(abi.encodePacked(stringtocheck)) == sha256(abi.encodePacked(model_check))){
                        console.log("true");
                    }else{
                        console.log("false");
                    }
                }
            } 
            
            // return logs[appId][0].log_method;
        }
        // THIS IS FOR TESTING PURPOSES ONLY
        function Populate() public {
            this.addValidTransitions("m");
            this.addValidTransitions("m2");
            this.addValidModelTransitions("m -> m2");

            this.addLog("a1", "c", "lm", "m", "d");
            this.addLog("a1", "c", "lm", "m2", "d");
            this.addLog("a1", "c", "lm", "m", "d");
            this.addLog("a1", "c", "lm", "m2", "d");
        }
        
    }

