function v = VOCAB_PIXEL_ENCODING_BAYER_BGGR8()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = yarpMEX(0, 71);
  end
  v = vInitialized;
end
