pragma solidity >=0.4.0 <0.6.0 ;
pragma experimental ABIEncoderV2;
contract marks
{
    struct stu
    {
        uint id ;
        string sub_name;
        uint mark ;
       // mapping(string => uint) mrks ;
    }
   
    // stu [] public stu_data ;
   
    mapping(uint => stu[]) public list ;
   
    function assign_marks(uint stu_id, string memory sub_name, uint mrk) public
    {  
        //stu storage new_var = list[id] ;
        list[stu_id].push(stu({id: stu_id, sub_name: sub_name, mark:mrk })) ;
        // stu_data.push(stu_id);
    }
   
    function display_marks(uint stu_id) public view returns(stu[] memory)
    {
        return  list[stu_id];
    }

}

