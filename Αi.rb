require 'auto_click'
include AutoClickMethods
require 'openai'
require 'json'
require 'yaml'
require 'amazing_print'
RBS
puts AutoClickMethods.methods
sleep 3
key_stroke('a')
key_stroke('u')
key_stroke('t')
key_stroke('o')
key_stroke('space')
key_stroke('c')
key_stroke('l')
key_stroke('i')
key_stroke('c')
key_stroke('k')
key_stroke('num1')
# require 'irb'
# IRB.start(__FILE__)
# pp AutoClick::methods
__END__



AutoClick.key_stroke('ctrl', 'esc')

# Wait for a moment
sleep(2)

# Type 'Chrome' into the Start menu
AutoClick.type('Chrome')

# Wait for a moment
sleep(2)

# Press 'Enter' to open Chrome
AutoClick.key_stroke('enter')

# Wait for Chrome to open
sleep(5)

# Type in the URL
AutoClick.type('https://www.reddit.com')

# Press 'Enter' to go to the URL
AutoClick.key_stroke('enter')

# a..z, num0..num9, f1..f12, ‘shift’ ‘ctrl’ ‘alt’ ‘win’ ‘tab’ ‘del’ ‘return’ ‘esc’ ‘pageup’ ‘pagedown’
# ‘left’ ‘right’ ‘up’ ‘down’ ‘equal’ ‘hyphen’

# key_stroke('win')
# sleep 0.5
# type('paint')
# sleep 0.5

