import dis

def hello_world():
    print("Hello World")
    
if __name__ == "__main__":
    dis.dis(hello_world())