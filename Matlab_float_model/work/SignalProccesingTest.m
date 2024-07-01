classdef SignalProccesingTest < matlab.unittest.TestCase
    methods(Test)

        function realSolution(testCase)
            signal = linspace(1, 1, 100);
            SignalProccesing_out = sim("SignalProccesing.slx", signal);
            expSolution = [2 1];
            testCase.verifyEqual(actSolution,expSolution)
        end

    end
end

