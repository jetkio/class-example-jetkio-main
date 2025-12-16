import re

op_order_stack = []
scheme_string = ''

EXPRESSION = "(list 1 2 3 (list 4 5))"
CDR_EXPRESSION = "(cdr (list 1 2 3 (list 4 5)))"

def split_all(program):
    program = program.replace('(', ' ( ')
    program = program.replace(')', ' ) ')
    all_tokens = program.split()
    print(f"Debug: split_all() returns: {all_tokens}")
    return all_tokens


def tokenize(all_tokens):
    global op_order_stack
    token = all_tokens.pop(0)

    if token == '(':
        stack = []
        while all_tokens[0] != ')':
            stack.append(tokenize(all_tokens))
        all_tokens.pop(0)  # discard ')'
        print(f"Debug: tokenize() returns: {stack}")
        return stack
    else:
        if not token.isdigit():
            op_order_stack.append(token)
        return token


def evaluate(stack):
    global op_order_stack
    global scheme_string
    symbol = ''

    if type(stack) is list:
        symbol = stack.pop(0)

        if symbol == 'list':
            result = []
            for _ in range(len(stack)):
                result.append(evaluate(stack.pop(0)))
            op_order_stack.pop()
            if len(op_order_stack) == 0:
                #format_scheme_list(result)
                print(scheme_string)
            print(f"Debug: evaluate() returns: {result}")
            return result
        else:
            print('An error happened at {0}'.format(stack))
            return
    elif stack.isdigit():
        symbol = stack
        print(f"Debug: evaluate() returns: {symbol}")
        return symbol
    else:
        print('An error happened at {0}'.format(stack))
        return


def format_scheme_list(python_list):
    global scheme_string
    scheme_string += '('
    for x in python_list:
        if type(x) is list:
            format_scheme_list(x)  # Recursively format sublists
        else:
            scheme_string += ' ' + x + ' '
    scheme_string += ')'

    
if __name__ == "__main__":
    #split_all(EXPRESSION)
    #tokenize(split_all(EXPRESSION))
    evaluate(tokenize(split_all(EXPRESSION)))