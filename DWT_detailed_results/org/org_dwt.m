
orgRepeat=double (orgRepeat_in);
orgValues=double(orgValues_in);
no_of_elements=numel(orgDataStream);

orgprob=orgRepeat/no_of_elements;

Seq=reshape(orgDataStream',1,no_of_elements);
dict=huffmandict(orgValues,orgprob);
orghcode = huffmanenco(Seq,dict);
dhsig = huffmandeco(orghcode,dict);