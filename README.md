# Errorhandling Smart Contract

## Description
The `Errorhandling` smart contract is designed to demonstrate various methods of error handling in Solidity, specifically using the `require()`, `assert()`, and `revert()` statements. This contract contains functions to check for valid uint8 input, determine if a number is odd, handle overflow scenarios, and retrieve results.

## Contract Functions
### checkInput(uint _input) : `public pure returns (string memory)`
- Validates if the given input is a valid uint8.
- Uses `require()` to ensure the input is between 0 and 255.
- Returns a confirmation string if the input is valid.

### Odd(uint _input) : `public pure returns (bool)`
- Checks if the given input is an odd number.
- Uses `require()` to ensure the input is odd.
- Returns `true` if the input is odd.

### checkOverflow(uint _num1, uint _num2) : `public`
- Checks for overflow when adding two numbers.
- Uses `assert()` to ensure the sum is within uint8 range (0-255).
- Sets a boolean result to `true` if no overflow occurs.

### getResult() : `public view returns (string memory)`
- Retrieves the result of the last overflow check.
- Returns "No Overflow" if no overflow was detected, otherwise returns "Underflow exist".

### checkOverflow_revert(uint _num1, uint _num2) : `public pure returns (string memory, uint)`
- Checks for overflow when adding two numbers.
- Uses `revert()` to handle overflow cases, reverting the transaction if the sum is out of uint8 range.
- Returns "No Overflow" and the sum if no overflow occurs.

## Authors

- Garv Kumar (garvkumar287@gmail.com)

## License
This contract is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


