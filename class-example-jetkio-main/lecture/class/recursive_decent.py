class RecursiveDescentParser:
    def __init__(self, input_string):
        self.input = list(input_string)  # treat input as list of chars
        self.position = 0

    def next_input_char(self):
        if self.position < len(self.input):
            return self.input[self.position]
        return None  
    
    def remove_from_input(self, term):
        if self.next_input_char() == term:
            print(f"Matched terminal '{term}' at position {self.position}")
            self.position += 1
            return True
        return False

    def report_error(self, message="Parsing error"):
        print(f"{message} at position {self.position}, got '{self.next_input_char()}'")

    def parse_T_prime(self):
        print("Entering T'")
        if self.next_input_char() in ['a', 'b', '$']:
            result = self.parse_T() and self.parse_terminal('$')
            print("Leaving T' ->", result)
            return result
        else:
            self.report_error("T'")
            return False

    def parse_T(self):
        print("Entering T")
        if self.next_input_char() in ['b', 'c', '$']:
            result = self.parse_R()
            print("Leaving T ->", result)
            return result
        elif self.next_input_char() == 'a':
            result = (self.parse_terminal('a') and
                      self.parse_T() and
                      self.parse_terminal('c'))
            print("Leaving T ->", result)
            return result
        else:
            self.report_error("T")
            return False

    def parse_R(self):
        print("Entering R")
        if self.next_input_char() in ['c', '$']:
            print("Leaving R -> True (epsilon production)")
            return True
        elif self.next_input_char() == 'b':
            result = self.parse_terminal('b') and self.parse_R()
            print("Leaving R ->", result)
            return result
        else:
            self.report_error("R")
            return False

    def parse_terminal(self, term):
        print(f"Expecting terminal '{term}'")
        if self.remove_from_input(term):
            return True
        else:
            self.report_error(f"Expected terminal {term}")
            return False

def main():
    
    parser = RecursiveDescentParser(input("Enter an expression: ") + "$")
    print("Starting parse...\n")
    if parser.parse_T_prime() and parser.position == len(parser.input):
        print("\nParsing succeeded!")
    else:
        print("\nParsing failed!")
        
if __name__ == "__main__":
    main()