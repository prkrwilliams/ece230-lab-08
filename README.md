# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

## Summary
In this lab, we built a circuit that involves a 4:1 multiplexer and a 1:4 demultiplexer, where we can route any one of the input data vectors to one of the output data vectors. This way, any input can be mapped to any output with the right select buttons being pressed. We learned how to deal with input vectors in Verilog rather than the bits themselves by using ternary operators to make the routing logic work.

## Lab Questions

### In plain English describe the function and use of a multiplexer.

A multiplexer uses a switch (and an enabler in this case) to select which of the inputs to assign to its output using its control signals. 2N inputs require N control signals depending on the size of the multiplexer.

### In plain English describe the function and use of a demultiplexer.

A demultiplexer is the same concept but backwards. It takes an input signal and using 2N outputs requires N number of control signals to determine which output signal to assign the input to.

### What other uses might these circuits have? (Think Shannon’s)

Shannon’s expansion theorem shows that you can build any boolean circuit with multiplexers by dividing the expression into a part that is multiplied by the select variable, and another half that is multiplied by that select variable but negated. This way, you choose which part of the expression to evaluate and which part to ignore. This makes these circuits very useful for any applications involving boolean circuits.

