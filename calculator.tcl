#############################################################################
# Generated by PAGE version 4.7
# in conjunction with Tcl version 8.6
#    Jun 01, 2016 08:50:56 PM


set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #d9d9d9
set vTcl(active_fg) #111111
#################################
#LIBRARY PROCEDURES
#


if {[info exists vTcl(sourcing)]} {

proc vTcl:project:info {} {
    set base .top38
    namespace eval ::widgets::$base {
        set dflt,origin 0
        set runvisible 1
    }
    set site_3_0 $base.fra40
    set site_5_0 .top38.fra40.tNo41.pg0 
    set site_5_1 .top38.fra40.tNo41.pg1 
    set site_5_0 $site_5_1
    set site_6_0 $site_5_0.lab42
    set site_5_2 .top38.fra40.tNo41.pg2 
    namespace eval ::widgets_bindings {
        set tagslist _TopLevel
    }
    namespace eval ::vTcl::modules::main {
        set procs {
        }
        set compounds {
        }
        set projectType single
    }
}
}

#################################
# USER DEFINED PROCEDURES
#

#################################
# GENERATED GUI PROCEDURES
#

proc vTclWindow.top38 {base} {
    if {$base == ""} {
        set base .top38
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background {#d9d9d9} 
    wm focusmodel $top passive
    wm geometry $top 640x480+581+325
    update
    # set in toplevel.wgt.
    global vTcl
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1905 1050
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "UltraCalculator"
    vTcl:DefineAlias "$top" "root" vTcl:Toplevel:WidgetProc "" 1
    frame $top.fra40 \
        -borderwidth 2 -relief groove -background {#d9d9d9} -height 555 \
        -width 665 
    vTcl:DefineAlias "$top.fra40" "main_frame" vTcl:WidgetProc "root" 1
    set site_3_0 $top.fra40
    ttk::style configure TNotebook -background #d9d9d9
    ttk::style configure TNotebook.Tab -background #d9d9d9
    ttk::style configure TNotebook.Tab -foreground #000000
    ttk::style configure TNotebook.Tab -font TkDefaultFont
    ttk::style map TNotebook.Tab -background [list disabled #d9d9d9 selected #d9d9d9]
    ttk::notebook $site_3_0.tNo41 \
        -width 300 -height 200 -takefocus {} 
    vTcl:DefineAlias "$site_3_0.tNo41" "task_notebook" vTcl:WidgetProc "root" 1
    frame .top38.fra40.tNo41.pg0 -background #d9d9d9
    $site_3_0.tNo41 add .top38.fra40.tNo41.pg0 \
        -padding 0 -sticky nsew -state normal -text Interpreter -image {} \
        -compound none -underline -1 
    set site_5_0  $site_3_0.tNo41.pg0
    frame .top38.fra40.tNo41.pg1 -background #d9d9d9
    $site_3_0.tNo41 add .top38.fra40.tNo41.pg1 \
        -padding 0 -sticky nsew -state normal -text Grapher -image {} \
        -compound none -underline -1 
    set site_5_1  $site_3_0.tNo41.pg1
    labelframe $site_5_1.lab42 \
        -foreground black -text Graph -background {#d9d9d9} -height 225 \
        -width 290 
    vTcl:DefineAlias "$site_5_1.lab42" "graph_frame" vTcl:WidgetProc "root" 1
    set site_6_0 $site_5_1.lab42
    canvas $site_6_0.can44 \
        -background white -borderwidth 2 -closeenough 1.0 -height 265 \
        -insertbackground black -relief ridge -selectbackground {#c4c4c4} \
        -selectforeground black -width 378 
    vTcl:DefineAlias "$site_6_0.can44" "mpl_target" vTcl:WidgetProc "root" 1
    place $site_6_0.can44 \
        -in $site_6_0 -x 5 -y 15 -relwidth 0.95 -relheight 0.85 -anchor nw \
        -bordermode ignore 
    entry $site_5_1.ent45 \
        -background white -font TkFixedFont -foreground {#000000} \
        -insertbackground black -validate key \
        -validatecommand function_is_valid 
    vTcl:DefineAlias "$site_5_1.ent45" "fucntion_entry" vTcl:WidgetProc "root" 1
    entry $site_5_1.ent46 \
        -background white -font TkFixedFont -foreground {#000000} \
        -insertbackground black -textvariable domain_low 
    vTcl:DefineAlias "$site_5_1.ent46" "domain_low_entry" vTcl:WidgetProc "root" 1
    entry $site_5_1.ent47 \
        -background white -font TkFixedFont -foreground {#000000} \
        -insertbackground black -textvariable domain_high 
    vTcl:DefineAlias "$site_5_1.ent47" "domain_high_entry" vTcl:WidgetProc "root" 1
    entry $site_5_1.ent48 \
        -background white -font TkFixedFont -foreground {#000000} \
        -insertbackground black -textvariable range_low 
    vTcl:DefineAlias "$site_5_1.ent48" "range_low_entry" vTcl:WidgetProc "root" 1
    entry $site_5_1.ent49 \
        -background white -font TkFixedFont -foreground {#000000} \
        -insertbackground black -textvariable range_high 
    vTcl:DefineAlias "$site_5_1.ent49" "range_high_entry" vTcl:WidgetProc "root" 1
    button $site_5_1.but50 \
        -activebackground {#d9d9d9} -background {#d9d9d9} \
        -command generateGraph -foreground {#000000} -highlightcolor black \
        -text Graph! 
    vTcl:DefineAlias "$site_5_1.but50" "graph_button" vTcl:WidgetProc "root" 1
    place $site_5_1.lab42 \
        -in $site_5_1 -x 10 -y 10 -relwidth 0.4 -relheight 0.4 -anchor nw \
        -bordermode ignore 
    place $site_5_1.ent45 \
        -in $site_5_1 -x 10 -y 200 -width 256 -height 20 -anchor nw \
        -bordermode ignore 
    place $site_5_1.ent46 \
        -in $site_5_1 -x 50 -y 230 -width 46 -height 20 -anchor nw \
        -bordermode ignore 
    place $site_5_1.ent47 \
        -in $site_5_1 -x 150 -y 230 -width 46 -height 20 -anchor nw \
        -bordermode ignore 
    place $site_5_1.ent48 \
        -in $site_5_1 -x 50 -y 260 -width 46 -height 20 -anchor nw \
        -bordermode ignore 
    place $site_5_1.ent49 \
        -in $site_5_1 -x 150 -y 260 -width 46 -height 20 -anchor nw \
        -bordermode ignore 
    place $site_5_1.but50 \
        -in $site_5_1 -x 210 -y 230 -width 57 -height 57 -anchor nw \
        -bordermode ignore 
    frame .top38.fra40.tNo41.pg2 -background #d9d9d9
    $site_3_0.tNo41 add .top38.fra40.tNo41.pg2 \
        -padding 0 -sticky nsew -state normal -text Data -image {} \
        -compound none -underline -1 
    set site_5_2  $site_3_0.tNo41.pg2
    place $site_3_0.tNo41 \
        -in $site_3_0 -x 0 -y 0 -relwidth 1 -relheight 1 -anchor nw \
        -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.fra40 \
        -in $top -x 0 -y 0 -relwidth 1 -relheight 1 -anchor nw \
        -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

#############################################################################
## Binding tag:  _TopLevel

bind "_TopLevel" <<Create>> {
    if {![info exists _topcount]} {set _topcount 0}; incr _topcount
}
bind "_TopLevel" <<DeleteWindow>> {
    if {[set ::%W::_modal]} {
                vTcl:Toplevel:WidgetProc %W endmodal
            } else {
                destroy %W; if {$_topcount == 0} {exit}
            }
}
bind "_TopLevel" <Destroy> {
    if {[winfo toplevel %W] == "%W"} {incr _topcount -1}
}

Window show .
Window show .top38

