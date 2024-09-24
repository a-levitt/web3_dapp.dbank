import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Int "mo:base/Int";

actor DBank {
  stable var currentValue = 300;
  //currentValue := 100;

  let id = 6666666666;
  //Debug.print(debug_show(id));

  public func topUp(amount: Nat) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

    public func withdraw(amount: Nat) {
      let tempValue: Int = currentValue - amount;
      if (tempValue >= 0) {
          currentValue -= amount;
          Debug.print(debug_show(currentValue));
      } else {
        Debug.print("Error. Value is negative.");
      }
  };

  public query func checkBalance(): async Nat {
    return currentValue;
  };

  //topUp();
}
