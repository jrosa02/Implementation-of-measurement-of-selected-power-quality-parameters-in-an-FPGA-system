import matlab.unittest.TestRunner;
import matlab.unittest.TestSuite;
suite = TestSuite.fromClass(?SignalProccesingTest);
runner = TestRunner.withTextOutput;
result = runner.run(suite);