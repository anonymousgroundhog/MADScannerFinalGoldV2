pragma solidity ^0.8.19;
// import "github.com/Arachnid/solidity-stringutils/strings.sol";

contract MultiAppLogTracker {
    string[] public things_to_check;
    string[] public log_ids;
    struct Log {
        address sender;
        string methods;
        string classes;
        string libraries;
        string timedate;
    }

    
    // Mapping from an ID (or address) to a Log
    mapping(string => Log[]) public logs;

    // Function to append a log_method to a specific Log instance
    function appendLogMethod(string calldata id, string memory method) public {
        if (things_to_check.length > 0){
            for(uint x = 0; x < things_to_check.length; x++){
                if(sha256(abi.encodePacked(method)) == sha256(abi.encodePacked(things_to_check[x]))) {
                    logs[id].push(Log(msg.sender, method, "classes", "libraries", "timedate"));
                    log_ids.push(id);
                }
            }
        }
    }

    // Function to create a new Log
    function getLogs(string calldata id) external view returns (Log[] memory) {
        return logs[id];
    }
    
    function getMethodsByAppID(string calldata id) external view returns (string[] memory) {
        string[] memory things_to_return = new string[](logs[id].length);
            for(uint x = 0; x < logs[id].length; x++){
                things_to_return[x] = logs[id][x].methods;
            } 
        return things_to_return;
    }
    
    function getTuplessByAppID(string calldata id) public payable returns (string[] memory) {

        string[] memory things_to_return = new string[](logs[id].length);
        string[] memory mytuples;
        for(uint x = 0; x < logs[id].length; x++){
            things_to_return[x] = logs[id][x].methods;
        }
        
        // string text = "";
        for (uint i = 0; i < things_to_return.length; i++) {
            if(i < things_to_return.length - 1){
                //  text = string.concat(abi.encodePacked(things_to_return[i], ' ', things_to_return[i+1]));
                    mytuples.push() = string.concat(things_to_return[i], things_to_return[i+1]);
            }
        } 
        return mytuples;
    }
    function addValidTransitions(string calldata this_transition) external {
        require(keccak256(bytes(this_transition)) != keccak256(bytes("")), "Invalid Name");
            things_to_check.push(this_transition);
    }

    // function getValidTransitions() external view returns (string[] memory){
    //     return things_to_check;
    // }

    function getLogIDs() external view returns (string[] memory){
        return log_ids;
    }
  }
