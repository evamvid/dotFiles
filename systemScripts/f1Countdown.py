#!/usr/bin/env python3

from icalendar import *
import datetime
import sys

g = open(sys.path[0] + '/' + 'f1Calendar.ics','rb')
gcal = Calendar.from_ical(g.read())
#counter = 0
for component in gcal.walk():
	if component.name == "VEVENT":
		elapsedTime = component.get('dtstart').dt - datetime.datetime.now(component.get('dtstart').dt.tzinfo)
		if elapsedTime.total_seconds() > 0:
			name = component.get('summary')
			session = component
			timeToSession = elapsedTime
			break
else:
	print("Season Over!")

g.close()

days, hours, minutes = timeToSession.days, timeToSession.seconds // 3600, int(timeToSession.seconds % 3600 // 60.0)
#from https://stackoverflow.com/a/7839673

print(str(days) + "d" + str(hours) + "h" + str(minutes) + "m")
