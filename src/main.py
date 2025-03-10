try:
    import src.Calculator as Calculator
except ImportError:
    import Calculator as Calculator

def main():
    calc = Calculator.Calculator()
    print(calc.add(1, 2))
    print(calc.subtract(2, 1))
    print(calc.multiply(2, 3))
    print(calc.divide(6, 3))

if __name__ == "__main__":
    main()