This is an example contract on how to use error handling

- `require` is used at the beginning of the function to check parameters, before doing any work (Checks that the number is odd)
- `revert` is used in the middle, when exection should stop (Checks if number is already set for this address)
- `assert` is used at the end, to check our work (Makes sure we have set the new number)