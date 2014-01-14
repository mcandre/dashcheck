Given(/^the program has finished$/) do
  @cucumber = `rdmd example.d`
end

Then(/^the output is correct for each test$/) do
  lines = @cucumber.split("\n")

  lines.length.should == 4

  lines[0].should == '*** Failed!'
  lines[1].should =~ /^[0-9]+$/
  lines[2].should == '+++ OK, passed 100 tests.'
  lines[3].should == '+++ OK, passed 100 tests.'
end
