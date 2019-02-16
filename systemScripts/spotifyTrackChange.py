#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
Title: Spotify Notification Demo
Author: Stuart Colville, http://muffinresearch.co.uk
License: BSD

modified by: Evam Sharma
file Located at ~/Documents/ProgrammingProjects/dotFiles/systemScripts/spotifyTrackChange.py

"""

import os
import dbus
from subprocess import call
from gi.repository import GLib as gobject
from dbus.mainloop.glib import DBusGMainLoop
from dbus.exceptions import DBusException

class SpotifyNotifier(object):

    def __init__(self):
        """initialise."""
        bus_loop = DBusGMainLoop(set_as_default=True)
        self.bus = dbus.SessionBus(mainloop=bus_loop)
        loop = gobject.MainLoop()
        try: 
            self.props_changed_listener()
        except DBusException as e:
            if not ("org.mpris.MediaPlayer2.spotify "
                    "was not provided") in e.get_dbus_message():
                raise
        self.session_bus = self.bus.get_object("org.freedesktop.DBus", 
                                 "/org/freedesktop/DBus")
        loop.run()

    def props_changed_listener(self):
        """Hook up callback to PropertiesChanged event."""
        self.spotify = self.bus.get_object("org.mpris.MediaPlayer2.spotify", 
                                           "/org/mpris/MediaPlayer2")
        self.spotify.connect_to_signal("PropertiesChanged", self.handle_properties_changed)

    def handle_name_owner_changed(self, name, older_owner, new_owner):
        """Introspect the NameOwnerChanged signal to work out if spotify has started."""
        if name == "org.mpris.MediaPlayer2.spotify":
            if new_owner:
                # spotify has been launched - hook it up.
                self.props_changed_listener()
            else:
                self.spotify = None

    def handle_properties_changed(self, interface, changed_props, invalidated_props):
        print("properties changed")
        call('~/Documents/ProgrammingProjects/dotFiles/systemScripts/downloadAlbumArt.sh', shell=True)

if __name__ == "__main__":
    SpotifyNotifier()
