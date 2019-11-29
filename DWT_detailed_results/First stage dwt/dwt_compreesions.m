Repeat=double (Repeat_in);
no_of_elements=numel(DataStream);

prob=Repeat/no_of_elements;

Seq=reshape(DataStream',1,no_of_elements);
dict=huffmandict(values,prob);
hcode = huffmanenco(Seq,dict);
dhsig = huffmandeco(hcode,dict);