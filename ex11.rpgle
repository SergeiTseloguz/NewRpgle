**FREE
dcl-pi PGM1;
  choice uns(3) const;
  returnCode likeds(returnCodeTpl);
  parameterPtr pointer VALUE options(*nopass);
end-pi;

dcl-ds doc1 likeds(doc1_t) based(ptr);
dcl-ds doc2 likeds(doc3_t) based(ptr);
dcl-ds doc3 likeds(doc3_t) based(ptr);

  ptr = parameterPtr;
  //all three DS are overlaying the same memory at this point
  // you have to make sure you only access the DS that corresponds to
  // the actual memory layout being used... 
  select;
    when (1 = choice);
      myProc(doc1);
    when (2 = choice);
      myProc2(doc2);
    when (1 = choice);
      myProc3(doc3);
   endsl;