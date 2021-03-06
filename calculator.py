#! /usr/bin/env python
#
# GUI module generated by PAGE version 4.7
# In conjunction with Tcl version 8.6
#    Jun 01, 2016 07:36:41 PM
import sys

try:
    from Tkinter import *
except ImportError:
    from tkinter import *

try:
    import ttk
    py3 = 0
except ImportError:
    import tkinter.ttk as ttk
    py3 = 1

import calculator_support

def vp_start_gui():
    '''Starting point when module is the main routine.'''
    global val, w, root
    root = Tk()
    calculator_support.set_Tk_var()
    top = UltraCalculator (root)
    calculator_support.init(root, top)
    root.mainloop()

w = None
def create_UltraCalculator(root, *args, **kwargs):
    '''Starting point when module is imported by another program.'''
    global w, w_win, rt
    rt = root
    w = Toplevel (root)
    calculator_support.set_Tk_var()
    top = UltraCalculator (w)
    calculator_support.init(w, top, *args, **kwargs)
    return (w, top)

def destroy_UltraCalculator():
    global w
    w.destroy()
    w = None


class UltraCalculator:
    def __init__(self, top=None):
        '''This class configures and populates the toplevel window.
           top is the toplevel containing window.'''
        _bgcolor = '#d9d9d9'  # X11 color: 'gray85'
        _fgcolor = '#000000'  # X11 color: 'black'
        _compcolor = '#d9d9d9' # X11 color: 'gray85'
        _ana1color = '#d9d9d9' # X11 color: 'gray85' 
        _ana2color = '#d9d9d9' # X11 color: 'gray85' 
        self.style = ttk.Style()
        if sys.platform == "win32":
            self.style.theme_use('winnative')
        self.style.configure('.',background=_bgcolor)
        self.style.configure('.',foreground=_fgcolor)
        self.style.configure('.',font="TkDefaultFont")
        self.style.map('.',background=
            [('selected', _compcolor), ('active',_ana2color)])

        top.geometry("640x480+591+358")
        top.title("UltraCalculator")



        self.main_frame = Frame(top)
        self.main_frame.place(relx=0.0, rely=0.0, relheight=1.0, relwidth=1.0)
        self.main_frame.configure(relief=GROOVE)
        self.main_frame.configure(borderwidth="2")
        self.main_frame.configure(relief=GROOVE)
        self.main_frame.configure(width=665)

        self.style.configure('TNotebook.Tab', background=_bgcolor)
        self.style.configure('TNotebook.Tab', foreground=_fgcolor)
        self.style.map('TNotebook.Tab', background=
            [('selected', _compcolor), ('active',_ana2color)])
        self.task_notebook = ttk.Notebook(self.main_frame)
        self.task_notebook.place(relx=0.0, rely=0.0, relheight=1.0, relwidth=1.0)

        self.task_notebook.configure(width=300)
        self.task_notebook.configure(takefocus="")
        self.task_notebook_pg0 = ttk.Frame(self.task_notebook)
        self.task_notebook.add(self.task_notebook_pg0, padding=3)
        self.task_notebook.tab(0, text="Interpreter",underline="-1",)
        self.task_notebook_pg1 = ttk.Frame(self.task_notebook)
        self.task_notebook.add(self.task_notebook_pg1, padding=3)
        self.task_notebook.tab(1, text="Grapher",underline="-1",)
        self.task_notebook_pg2 = ttk.Frame(self.task_notebook)
        self.task_notebook.add(self.task_notebook_pg2, padding=3)
        self.task_notebook.tab(2, text="Data",underline="-1",)

        self.graph_frame = LabelFrame(self.task_notebook_pg1)
        self.graph_frame.place(relx=0.02, rely=0.02, relheight=0.4, relwidth=0.4)

        self.graph_frame.configure(relief=GROOVE)
        self.graph_frame.configure(text='''Graph''')
        self.graph_frame.configure(width=290)

        self.mpl_target = Canvas(self.graph_frame)
        self.mpl_target.place(relx=0.02, rely=0.08, relheight=0.85
                , relwidth=0.95)
        self.mpl_target.configure(background="white")
        self.mpl_target.configure(borderwidth="2")
        self.mpl_target.configure(relief=RIDGE)
        self.mpl_target.configure(selectbackground="#c4c4c4")
        self.mpl_target.configure(width=378)

        self.fucntion_entry = Entry(self.task_notebook_pg1)
        self.fucntion_entry.place(relx=0.02, rely=0.44, relheight=0.04
                , relwidth=0.4)
        self.fucntion_entry.configure(background="white")
        self.fucntion_entry.configure(font="TkFixedFont")
        self.fucntion_entry.configure(validate="key")
        self.fucntion_entry.configure(validatecommand="function_is_valid")
        self.fucntion_entry.configure(width=256)

        self.domain_low_entry = Entry(self.task_notebook_pg1)
        self.domain_low_entry.place(relx=0.08, rely=0.5, relheight=0.04
                , relwidth=0.07)
        self.domain_low_entry.configure(background="white")
        self.domain_low_entry.configure(font="TkFixedFont")
        self.domain_low_entry.configure(textvariable=calculator_support.domain_low)
        self.domain_low_entry.configure(width=46)

        self.domain_high_entry = Entry(self.task_notebook_pg1)
        self.domain_high_entry.place(relx=0.24, rely=0.5, relheight=0.04
                , relwidth=0.07)
        self.domain_high_entry.configure(background="white")
        self.domain_high_entry.configure(font="TkFixedFont")
        self.domain_high_entry.configure(textvariable=calculator_support.domain_high)
        self.domain_high_entry.configure(width=46)

        self.range_low_entry = Entry(self.task_notebook_pg1)
        self.range_low_entry.place(relx=0.08, rely=0.57, relheight=0.04
                , relwidth=0.07)
        self.range_low_entry.configure(background="white")
        self.range_low_entry.configure(font="TkFixedFont")
        self.range_low_entry.configure(textvariable=calculator_support.range_low)
        self.range_low_entry.configure(width=46)

        self.range_high_entry = Entry(self.task_notebook_pg1)
        self.range_high_entry.place(relx=0.24, rely=0.57, relheight=0.04
                , relwidth=0.07)
        self.range_high_entry.configure(background="white")
        self.range_high_entry.configure(font="TkFixedFont")
        self.range_high_entry.configure(textvariable=calculator_support.range_high)
        self.range_high_entry.configure(width=46)

        self.graph_button = Button(self.task_notebook_pg1)
        self.graph_button.place(relx=0.33, rely=0.5, height=57, width=57)
        self.graph_button.configure(activebackground="#d9d9d9")
        self.graph_button.configure(command=calculator_support.generateGraph)
        self.graph_button.configure(text='''Graph!''')
        self.graph_button.configure(width=57)






if __name__ == '__main__':
    vp_start_gui()



