# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()

# Aliases for commands. The keys of the given dictionary are the
# aliases, while the values are the commands they map to.
# Type: Dict
c.aliases = {'q': 'close', 'qa': 'quit', 'w': 'session-save', 'wq': 'quit --save', 'wqa': 'quit --save'}

# c.qt.force_platform = 'Wayland'
c.qt.highdpi = True
c.auto_save.session = True
c.editor.encoding = 'utf-8'

config.set('content.javascript.enabled', True, 'file://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')

# BINDINGS
config.bind('<Alt-Escape>', 'leave-mode', mode='passthrough')


# UI SETTINGS
c.window.hide_decoration = False
c.statusbar.hide = False
c.tabs.indicator.width = 2
c.tabs.favicons.show = 'pinned'

# UI COLORS
c.colors.tabs.bar.bg = '#1c1c1c'
c.colors.tabs.indicator.error = '#ff8700'
c.colors.tabs.odd.fg = '#ffffff'
c.colors.tabs.odd.bg = '#6c6c6c'
c.colors.tabs.even.fg = '#ffffff'
c.colors.tabs.even.bg = '#6c6c6c'
c.colors.tabs.selected.odd.fg = '#262626'
c.colors.tabs.selected.odd.bg = '#ffffff'
c.colors.tabs.selected.even.fg = '#262626'
c.colors.tabs.selected.even.bg = '#ffffff'
c.colors.tabs.pinned.odd.fg = '#ffffff'
c.colors.tabs.pinned.odd.bg = '#6c6c6c'
c.colors.tabs.pinned.even.fg = '#ffffff'
c.colors.tabs.pinned.even.bg = '#6c6c6c'
c.colors.tabs.pinned.selected.odd.fg = '#262626'
c.colors.tabs.pinned.selected.odd.bg = '#ffffff'
c.colors.tabs.pinned.selected.even.fg = '#262626'
c.colors.tabs.pinned.selected.even.bg = '#ffffff'
c.colors.statusbar.normal.bg = "#6c6c6c"
c.colors.statusbar.normal.fg = "#ffffff"
c.colors.statusbar.insert.bg = "#5f8787"
c.colors.statusbar.insert.fg = "#ffffff"

# Web fonts
c.fonts.web.family.standard = 'Inter, sans-serif'
c.fonts.web.family.sans_serif = 'Inter, sans-serif'
c.fonts.web.family.serif = 'Georgia, serif'
c.fonts.web.family.fixed = 'Iosevka Custom, monospace'

# UI
c.tabs.padding = {"bottom": 1, "left": 8, "right": 8, "top": 1}

# UI fonts
c.fonts.default_size = '13pt'
c.fonts.default_family = 'Inter, default_size'
c.fonts.completion.entry = 'default_size default_family'
c.fonts.completion.category = 'bold default_size default_family'
c.fonts.debug_console = 'default_size default_family'
c.fonts.downloads = 'default_size default_family'
c.fonts.hints = 'bold default_size default_family'
c.fonts.keyhint = 'default_size default_family'
c.fonts.messages.info = 'default_size default_family'
c.fonts.messages.warning = 'default_size default_family'
c.fonts.prompts = 'default_size sans-serif'
c.fonts.statusbar = '12pt SF Mono'
c.fonts.tabs = 'default_size default_family'
