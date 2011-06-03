
# (explicit-slides)-ification of (TODO slideshare link)

# [stylus](http://learnboost.github.com/stylus/)
"""

.title
  font-size 96px
  font-family Cochin

.h1
  font-size 72px
  font-family "Gil Sans"

.line
  font-size 48px
  font-family "Gil Sans"

"""

# There is always a current x, y. (For each slide it's initially the center point)
# number, number:       set x, y
# function invocation:  insert the item returned by that function
# object:               ...depends on its properties...

#### Howdy
[
  1234, 123, title "QuantMyLife.com"
  1234, 123, Img "qml_signals"
]

#### Privacy lovers rejoice
[
  1234, 123
  line "Each signal [will be] optional"
  dy:100
  line "All data is stored only on your Mac"
]

#### File details
[
  1234, 123, h1 "~/Library/Application Support/QuantMyLife/"
  1234, 123, Img "qml_files"
]


#### Application: Mouse Strokes
"""
caption
  font-size 45px
  font-family "Gil Sans"
"""
Diag = (title, img) ->
  Table [
    [Img img]
    [caption title]
  ]
[
  1234, 123, h1 "Mouse Strokes (by app)"
  1234, 123, Diag "Chrome",           "qml_mouse_chrome"
  1234, 123, Diag "Modern Warfare 2", "qml_mouse_mw2"
]


