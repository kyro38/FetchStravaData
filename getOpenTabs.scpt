-- credits:
--  https://gist.github.com/samyk/65c12468686707b388ec43710430a421

set titleString to ""
tell application "Google Chrome"
        set window_list to every window # get the windows

        repeat with the_window in window_list # for every window
                set tab_list to every tab in the_window # get the tabs

                repeat with the_tab in tab_list # for every tab
                        set the_url to the URL of the_tab # grab the URL
                        set titleString to titleString & the_url & "\n"
                end repeat
        end repeat
        return titleString
end tell