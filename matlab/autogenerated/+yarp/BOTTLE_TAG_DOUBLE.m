function v = BOTTLE_TAG_DOUBLE()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = yarpMEX(0, 3);
  end
  v = vInitialized;
end
