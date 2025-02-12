    pragma solidity >=0.8.2 <0.9.0;

    // import "truffle/Console.sol";
    contract MultiAppLogTracker {
        string[] public log_ids;
        // Structure to hold log details
        struct Log {
            // address sender;
            string[] log_class;
            string[] log_library;
            string[] log_method;
            string[] log_date_and_time;
        }
  
        // Mapping from app identifier to its logs
        mapping(string => Log) private logs;
        // mapping(string => App[]) public apps;

        function exists_in_logs_array(string memory elementToLookFor) public view returns (bool) {
    
            for (uint i=0; i < log_ids.length; i++) {
                string memory model_check = log_ids[i];

                if(sha256(abi.encodePacked(elementToLookFor)) == sha256(abi.encodePacked(model_check))){
                    return true;
                    break;
                }
            }
            return false;
        }

        function addLog(string calldata appId, string calldata logClass, string calldata logLibrary, string calldata logMethod, string calldata logDateAndTime) external {
            logs[appId].log_class.push(logClass);
            logs[appId].log_library.push(logLibrary);
            logs[appId].log_method.push(logMethod);
            logs[appId].log_date_and_time.push(logDateAndTime);
            if (!exists_in_logs_array(appId)){
                log_ids.push(appId);
            }
            
        }  

        function returnLogs(string calldata appID) public view returns (Log memory){
            return logs[appID];
        }

        function getLogIds() external view returns (string[] memory) {
            return log_ids;
        }

        // function Populate() public {
        //     this.addLog("a1", "c", "lm1", "m1", "d1");
        //     this.addLog("a1", "c", "lm2", "m2", "d2");
        //     this.addLog("a1", "c", "lm3", "m3", "d3");
        //     this.addLog("a1", "c", "lm4", "m4", "d4");
        // }
    }

