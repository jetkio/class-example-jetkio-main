import re

state_transition = \
    {   'SAB' :{'+':'AB',   '-':'AB',   '.':'C',    1:'B'},
        'AB'  :{'+':'dead', '-':'dead', '.':'C',    1:'B'},
        'B'   :{'+':'dead', '-':'dead', '.':'C',    1:'B'},
        'C'   :{'+':'dead', '-':'dead', '.':'dead', 1:'D'},
        'D'   :{'+':'dead', '-':'dead', '.':'dead', 1:'D'},
        'dead':{'+':'dead', '-':'dead', '.':'dead', 1:'dead'}
    }
digits = ['0','1','2','3','4','5','6','7','8','9']

state_message = \
    {   'SAB' :'Rejected!',
        'AB'  :'Rejected!',
        'B'   :'Rejected!',
        'C'   :'Rejected!',
        'D'   :'Accepted!',
        'dead':'Rejected!'
    }

accept_state = 'D'
current_state = 'SAB'

input_string = '+0.2'

for x in input_string:
    if x in digits:
        transition = 1
    else:
        transition = x
    current_state = state_transition[current_state][transition]

print(input_string + " is " + state_message[current_state])
