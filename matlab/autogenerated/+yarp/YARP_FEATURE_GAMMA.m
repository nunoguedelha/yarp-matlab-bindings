function v = YARP_FEATURE_GAMMA()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = yarpMEX(0, 106);
  end
  v = vInitialized;
end
