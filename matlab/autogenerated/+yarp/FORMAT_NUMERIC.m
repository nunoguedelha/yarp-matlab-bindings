function v = FORMAT_NUMERIC()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = yarpMEX(0, 84);
  end
  v = vInitialized;
end