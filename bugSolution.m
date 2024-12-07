function result = myFunction(input)
  %Improved Input Validation and Error Handling
  if input < 0
    error('Error: Input must be non-negative.');
  elseif ~isnumeric(input)
    error('Error: Input must be a numeric value.');
  end
  result = someCalculation(input);
  if isinf(result) || isnan(result)
      error('Error: Calculation resulted in an overflow or undefined value. Please check the input.');
  end
end

function output = someCalculation(x)
  % Improved calculation to handle potential overflow
  y = x^2;
  if y > 1000
    error('Error: Calculation resulted in an overflow.');
  else
    output = sqrt(y);
  end
end