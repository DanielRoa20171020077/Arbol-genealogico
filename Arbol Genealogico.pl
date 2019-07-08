%Primera generacion

padreDe('adelfa','patsy').
padreDe('adelfa','danilo').
padreDe('manlio','patsy').
padreDe('manlio','danilo').

padreDe('jezebel','edgar').
padreDe('jezebel','serapio').
padreDe('jezebel','keila').
padreDe('juan','edgar').
padreDe('juan','serapio').
padreDe('juan','keila').

padreDe('lilibet','helen').
padreDe('manuel','helen').

%Segunda generacion

padreDe('helga','adelfa').
padreDe('helga','valente').
padreDe('cain','adelfa').
padreDe('cain','valente').

padreDe('irel','manlio').
padreDe('irel','jezebel').
padreDe('azrael','manlio').
padreDe('azrael','jezebel').

padreDe('adena','juan').
padreDe('adena','maya').
padreDe('adena','leonarda').
padreDe('adena','lilibet').
padreDe('ivany','juan').
padreDe('ivany','maya').
padreDe('ivany','leonarda').
padreDe('ivany','lilibet').

padreDe('delma','manuel').
padreDe('sabacio','manuel').

%Tercera generacion

padreDe('maricruz','helga').
padreDe('calquin','helga').

padreDe('liora','cain').
padreDe('liora','aluhe').
padreDe('liora','ibel').
padreDe('josias','cain').
padreDe('josias','aluhe').
padreDe('josias','ibel').

padreDe('zuleika','azrael').
padreDe('zuleika','uriel').
padreDe('zuleika','julia').
padreDe('zuleika','maria').
padreDe('zuleika','adena').
padreDe('laurencio','azrael').
padreDe('laurencio','uriel').
padreDe('laurencio','julia').
padreDe('laurencio','maria').
padreDe('laurencio','adena').

padreDe('alfonza','ivany').
padreDe('cencio','ivany').

padreDe('iguazel','cecilia').
padreDe('iguazel','delma').
padreDe('albino','cecilia').
padreDe('albino','delma').

padreDe('laia','sabacio').
padreDe('laia','victor').
padreDe('laia','francisco').
padreDe('laia','narcisa').
padreDe('rafel','sabacio').
padreDe('rafel','victor').
padreDe('rafel','francisco').
padreDe('rafel','narcisa').

hijoDe(A,B) :- padreDe(B,A).
abueloDe(A,B) :- padreDe(A,C), padreDe(C,B).
bisabueloDe(A,B) :- padreDe(A,C), padreDe(C,D),padreDe(D,B).

hermanoDe(A,B) :- padreDe(C,A), padreDe(C,B), A \== B.

tioDe(A,B):- hermanoDe(A,C),padreDe(C,B).
primoDe(A,B):- padreDe(C,A), padreDe(D,B),hermanoDe(C,D).

familiarDe(A,B) :- padreDe(A,B).
familiarDe(A,B) :- abueloDe(A,B).
familiarDe(A,B) :- hermanoDe(A,B).
familiarDe(A,B) :- hijoDe(A,B).


