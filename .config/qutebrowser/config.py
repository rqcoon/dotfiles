# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()

# Aliases for commands. The keys of the given dictionary are the
# aliases, while the values are the commands they map to.
# Type: Dict
c.aliases = {'q': 'close', 'qa': 'quit', 'w': 'session-save', 'wq': 'quit --save', 'wqa': 'quit --save'}

# Force a Qt platform to use. This sets the `QT_QPA_PLATFORM`
# environment variable and is useful to force using the XCB plugin when
# running QtWebEngine on Wayland.
# Type: String
c.qt.force_platform = 'Wayland:'

# Turn on Qt HighDPI scaling. This is equivalent to setting
# QT_AUTO_SCREEN_SCALE_FACTOR=1 in the environment. It's off by default
# as it can cause issues with some bitmap fonts. As an alternative to
# this, it's possible to set font sizes and the `zoom.default` setting.
# Type: Bool
c.qt.highdpi = True

# Always restore open sites when qutebrowser is reopened.
# Type: Bool
c.auto_save.session = True

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Binding keys.
config.bind('<Alt-Escape>', 'leave-mode', mode='passthrough')

# Encoding to use for the editor.
# Type: Encoding
c.editor.encoding = 'utf-8'

# Hide the window decoration.  This setting requires a restart on
# Wayland.
# Type: Bool
c.window.hide_decoration = True

# Background color of the tab bar.
# Type: QtColor
c.colors.tabs.bar.bg = '#323232'

# Color for the tab indicator on errors.
# Type: QtColor
c.colors.tabs.indicator.error = '#ff0000'

# Foreground color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.fg = '#aaaaaa'

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = '#323232'

# Foreground color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.fg = '#aaaaaa'

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = '#323232'

# Foreground color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.fg = 'black'

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = 'white'

# Foreground color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.fg = 'black'

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = 'white'

# Default monospace fonts. Whenever "monospace" is used in a font
# setting, it's replaced with the fonts listed here.
# Type: Font
c.fonts.monospace = 'Iosevka, "xos4 Terminus", Terminus, Monospace, "DejaVu Sans Mono", Monaco, "Bitstream Vera Sans Mono", "Andale Mono", "Courier New", Courier, "Liberation Mono", monospace, Fixed, Consolas, Terminal'

# Font used in the completion widget.
# Type: Font
c.fonts.completion.entry = '10pt monospace'

# Font used in the completion categories.
# Type: Font
c.fonts.completion.category = 'bold 10pt monospace'

# Font used for the debugging console.
# Type: QtFont
c.fonts.debug_console = '10pt monospace'

# Font used for the downloadbar.
# Type: Font
c.fonts.downloads = '10pt monospace'

# Font used for the hints.
# Type: Font
c.fonts.hints = 'bold 10pt monospace'

# Font used in the keyhint widget.
# Type: Font
c.fonts.keyhint = '10pt monospace'

# Font used for error messages.
# Type: Font
c.fonts.messages.error = '10pt monospace'

# Font used for info messages.
# Type: Font
c.fonts.messages.info = '10pt monospace'

# Font used for warning messages.
# Type: Font
c.fonts.messages.warning = '10pt monospace'

# Font used for prompts.
# Type: Font
c.fonts.prompts = '10pt sans-serif'

# Font used in the statusbar.
# Type: Font
c.fonts.statusbar = '10pt monospace'
