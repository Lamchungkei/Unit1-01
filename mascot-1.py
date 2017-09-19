# Created by: Kay Lin
# Created on: 19-Sep-2017
# Created for: ICS3U
# This program displays the school name and their mascot

import ui

def mother_teresa_touch_up_inside(sender):
    # displays the school and mascot for MT
    view['school_name_label'].text = 'Mother Teresa HS'
    view['mascot_label'].text = 'Titans'
    
def st_joe_touch_up_inside(sender):
    # displays the school and mascot for St. Joe
    view['school_name_label'].text = 'St. Joe HS'
    view['mascot_label'].text = 'Jaguars'
    
def st_mark_touch_up_inside(sender):
    # displays the school and mascot for St. Mark
    view['school_name_label'].text = 'St. Mark HS'
    view['mascot_label'].text = 'Lions'

view = ui.load_view()
view.present('full_screen')

