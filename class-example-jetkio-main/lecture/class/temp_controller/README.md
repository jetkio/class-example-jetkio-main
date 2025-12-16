## Running the program

Run the docker as usual

Change to the `temp_controller` direcrory

### With make (Easy)
- Build an executable called thermo:
  - `make thermo`
- Run the application:
  - `./thermo`
- To clean you the directory:
  - `make clean`

### Compile and run (Tracking)
- Build the lexer
  - `flex tokenizer.l`
    - To learn more: `flex --help`
- Building the parser
  - `bison -d -v -o y.tab.c parser.y`
    - To learn more: `bison --help`
- Building the application
  - `gcc -o thermo y.tab.c lex.yy.c controller.c`
- Run the application:
  - `./thermo`

### If you prefer GL
 - Transfer all files to a folder in your GL account.
 - run the same commands

