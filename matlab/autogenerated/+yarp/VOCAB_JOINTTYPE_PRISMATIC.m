function v = VOCAB_JOINTTYPE_PRISMATIC()
  persistent vInitialized;
  if isempty(vInitialized)
    vInitialized = yarpMEX(0, 111);
  end
  v = vInitialized;
end
