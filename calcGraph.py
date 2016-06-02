
from sympy import symbols
from sympy.plotting import plot
from sympy import pi
from sympy.parsing.sympy_parser import parse_expr

def main(expression):
    f,g,x,y,a,b = symbols('f g x y a b')
    my_function = parse_expr(expression)
    my_plot = plot(my_function, show=False)
    my_plot.save('neato.jpg')


if __name__ == '__main__':
    
    print("Dont run as main")
