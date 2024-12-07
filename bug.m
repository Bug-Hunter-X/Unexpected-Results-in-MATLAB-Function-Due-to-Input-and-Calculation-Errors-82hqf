function result = myFunction(input)
  % Some code that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  result = someCalculation(input);
end

function output = someCalculation(x)
  % Some complex calculation that could lead to unexpected results
  y = x^2; 
  if y > 1000 
    output = Inf; %This can cause issues with further calculations.
  else
    output = sqrt(y);
  end

end