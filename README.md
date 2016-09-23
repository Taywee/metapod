# NOTHING IS HERE JUST YET
This project is new enough that there is little to no code yet, and shouldn't be expected to do anything useful at all until this notice is removed.

# metapod
A simple hardening framework with lots of included hardening suites, intended for the use of hardening UNIX and Linux systems

The plan is to use Lua as a hardening language, providing it enough OS calls and filesystem functionality to do everything it needs to do with as much safety and security as possible.
Will also use either raw curses or GNU dialog or the like to get nice useful dialog boxes to show all the hardening that passed and failed, and let the user step through everything that needs to be tested and done and how it needs to be tested and done.

What we want initially is a small, simple, free hardening system for one-time server hardening, but I would also like to eventually extend this to optionally output a hardening test suite that can be regularly run in the crontab and send an email or something if a hardening test fails at any point (auditors will love this, especially when you show them that you get a response as soon as something comes out of compliance).
