import re

# Stack used to keep track of operators during parsing/evaluation
op_order_stack = []

# String accumulator for displaying formatted Scheme-like output
scheme_string = ''


def split_all(program):
    """
    Purpose:
        Split a Scheme-like expression into individual tokens.

    Steps:
        1. Add spaces around parentheses to isolate them as separate tokens.
        2. Split the modified string into a list of tokens.

    Example:
        Input:  "(list 1 (list 2 3))"
        Output: ['(', 'list', '1', '(', 'list', '2', '3', ')', ')']
    """
    program = program.replace('(', ' ( ')
    program = program.replace(')', ' ) ')
    all_tokens = program.split()
    return all_tokens


def tokenize(all_tokens):
    """
    Purpose:
        Convert a list of tokens into a nested Python list
        structure representing the parsed Scheme expression.

    Parameters:
        all_tokens (list): Tokens returned from split_all()

    Behavior:
        - When '(' is encountered, recursively parse until ')'
          to form a sublist.
        - Non-numeric tokens (symbols) are added to the operator stack.

    Returns:
        Nested list (tree-like structure) representation of the program.
    """
    global op_order_stack
    token = all_tokens.pop(0)

    # Start a new sublist when encountering '('
    if token == '(':
        stack = []
        while all_tokens[0] != ')':
            stack.append(tokenize(all_tokens))
        all_tokens.pop(0)  # discard the closing ')'
        return stack
    else:
        # Record non-numeric symbols in operator stack
        if not token.isdigit():
            op_order_stack.append(token)
        return token


def evaluate(stack):
    """
    Purpose:
        Evaluate the parsed Scheme expression represented as nested lists.

    Behavior:
        - Supports 'list' and 'cdr' operations.
        - Uses recursion to evaluate nested structures.
        - Handles incorrect syntax with error messages.

    Parameters:
        stack (list | str): Parsed structure or token to evaluate

    Returns:
        The evaluated result (Python list or string)
    """
    global op_order_stack
    global scheme_string
    symbol = ''

    if type(stack) is list:
        symbol = stack.pop(0)  # Get operation name

        # (list ...) creates a list from evaluated arguments
        if symbol == 'list':
            result = []
            for _ in range(len(stack)):
                result.append(evaluate(stack.pop(0)))
            op_order_stack.pop()  # remove 'list' from operator stack
            if len(op_order_stack) == 0:
                format_scheme_list(result)
                print(scheme_string)
            return result

        # (cdr list) returns all but the first element
        elif symbol == 'cdr':
            argument = evaluate(stack.pop(0))
            result = argument[1:]
            op_order_stack.pop()
            if len(op_order_stack) == 0:
                format_scheme_list(result)
                print(scheme_string)
            return result

        # (exit) terminates program
        elif symbol == "exit":
            exit()

        # Catch-all for invalid syntax
        else:
            print(f'An error happened at {stack}')
            return

    # Base case: return digit as-is
    elif stack.isdigit():
        symbol = stack
        return symbol
    else:
        print(f'An error happened at {stack}')
        return


def format_scheme_list(python_list):
    """
    Purpose:
        Convert a nested Python list into a properly formatted
        Scheme-like string representation.

    Example:
        Input: ['1', ['2', '3']]
        Output: "( 1 ( 2 3 ) )"
    """
    global scheme_string
    scheme_string += '('
    for x in python_list:
        if type(x) is list:
            format_scheme_list(x)  # Recursively format sublists
        else:
            scheme_string += ' ' + x + ' '
    scheme_string += ')'



def repl():
    """
    Purpose:
        Continuously read user input, evaluate Scheme expressions,
        and print results until 'exit' command is entered.

    Behavior:
        - Reads from standard input line by line.
        - Ignores empty input lines.
        - Detects '(exit)' expression using regex.
        - Uses split_all → tokenize → evaluate to process input.
    """
    stop = False

    while not stop:
        inputstring = input()
        if inputstring == '':
            pass  # Ignore empty lines
        elif not re.findall(r'\(\s*exit\s*\)', inputstring):
            # Reset global states for each new evaluation
            global op_order_stack
            op_order_stack = []
            global scheme_string
            scheme_string = ''
            evaluate(tokenize(split_all(inputstring)))
        else:
            stop = True


if __name__ == "__main__":
    repl()