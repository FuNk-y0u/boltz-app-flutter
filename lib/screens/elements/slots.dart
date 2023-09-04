class slots
{
  List<String> slot = [];
  
  void add_slot(String Slot_Id)
  {
    slot.add(Slot_Id);
  }

  void remove_slot(String Slot_Id)
  {
    slot.removeWhere((item) => item == Slot_Id);
  }

  List<String> getSlots()
  {
    if (slot == null)
    {
      return [];
    }
    else{
      return slot;
    }
    
  }


}