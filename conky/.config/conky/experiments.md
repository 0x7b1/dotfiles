## Experiments

```
conky.config = {
    alignment = 'bottom_middle',
    background = true,
    border_width = 0,
    cpu_avg_samples = 2,
    default_color = 'white',
    default_outline_color = 'white',
    default_shade_color = 'white',
    double_buffer = true,
    draw_borders = false,
    draw_graph_borders = false,
    draw_outline = false,
    draw_shades = false,
    extra_newline = false,
    font = 'Cozette:size=8',
    gap_x = 0,
    gap_y = 12,
    minimum_height = 0,
    minimum_width = 0,

    maximum_width = 1920,
    maximum_size = 1920,
    max_text_width = 3920,
    max_specials = 9999,

    net_avg_samples = 2,
    no_buffers = true,
    out_to_console = false,
    out_to_ncurses = false,
    out_to_stderr = false,
    out_to_x = true,
    own_window = true,
    own_window_transparent = true,
    own_window_argb_visual = true,
    own_window_class = 'Conky',
    own_window_type = 'override',
    show_graph_range = false,
    show_graph_scale = false,
    stippled_borders = 0,
    update_interval = 0.1,
    uppercase = false,
    use_spacer = 'none',
    use_xft = true,
}

conky.text = [[
${color grey}CPU ${color}${cpu}% ${color grey}RAM ${color}${memperc}% ${color grey}|${color} ${fs_free /} ${color grey}${color}${fs_free /media/6533-3962}${color} ${fs_free /media/roygbiv}
]]

conky.text = [[
${color #555}──────${color #A3CB38}■■■■■${color #ED4C67}■■■${color #555}───────${color #F79F1F}■■${color #555}──${color #555}──────────${color #555}──────${color #A3CB38}■■■■■${color #ED4C67}■■■${color #555}───────${color #F79F1F}■■■${color #555}────────${color red}○${color #333}──────────────────────────────────────────────────────────
${color #ddd}5AM             6AM             7AM             8AM             9AM             10AM            11AM            12AM
]]

conky.text = [[
${color #333}━━━━━${color #A3CB38}━━━━━${color #ED4C67}━━━${color #333}━━━━━━━${color #20bf6b}━━${color #333}━━${color #333}━━━━━━━━━${color #333}━━━━━━${color #A3CB38}━━━━━${color #ED4C67}━━━${color #333}━━━━━━${color #F79F1F}━━━━${color #333}━━━━${color #A3CB38}━━━${color #20bf6b}━━━━━━━━━━━━━━━━━━━${color #333}━━━━${color #20bf6b}━━━━━━━━━━┫${color #ddd} 14:41 ${color #333}──────────────────────────────────────────────────────────────────────────
]]

conky.text = [[
${color #222}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${color #A3CB38}━━┫ ${color #ddd}07:33 ${color #222}─────────────────────────${color #222}───────────────────────────${color #222}───────────────────────────${color #222}──────────────────────────────${color #222}──────────────────────────────────────────────────────────────────────────────${color #222}──────────────────────${color #ddd} 24/08
]]

conky.text = [[
${color #222}━━━━━━━━━━━━━━${color #ED4C67}━━━${color #A3CB38}━━━━━━━━━━━━━━${color #222}━━━━━━━${color #A3CB38}━━┫ ${color #ddd}07:33 ${color #222}─────────────────────────${color #222}───────────────────────────${color #222}───────────────────────────${color #222}──────────────────────────────${color #222}──────────────────────────────────────────────────────────────────────────────${color #222}──────────────────────${color #ddd} 24/08
]]

conky.text = [[
${color #222}━━━━━━━━━━━━━━${color #ED4C67}━━━${color #A3CB38}━━━━━━━━━━━━━━${color #222}━━━━━━━${color #A3CB38}━━━${color #222}━━━━━━━━━━━━━━━━━━━━━━━━━${color #222}━━━━━━━━━━━━━━━━━━━━━━━━━━━${color #222}━━━━━━━━━━━━━━━━━━━━━━━━━━━${color #ED4C67}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${color #222}━━━━━━━━━━━━━━━━━━━━━${color #A3CB38}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${color #222}━━━━━━━━┫ ${color #ddd}21:15 ${color #222}──────────────${color #ddd} 24/08
]]

conky.text = [[
${color #222}━━━━━━━━━━━━━━${color #ED4C67}━━━${color #A3CB38}━━━━━━━━━━━━━━${color #222}━━━━━━━${color #A3CB38}━━━${color #222}━━━━━━━━━━━━━━━━━━━━━━━━━${color #222}━━━━━━━━━━━━━━━━━━━━━━━━━━━${color #222}━━━━━━━━━━━━━━━━━━━━━━━━━━━${color #ED4C67}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${color #222}━━━━━━━━━━━━━━━━━━━━━${color #A3CB38}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${color #222}━━━━━━━━┫ ${color #ddd}21:15 ${color #222}──────────────${color #ddd} 24/08  🔋    ﱝ
]]

conky.text = [[
${color #555}━━━━━━━━━━━━━━${color #ED4C67}━━■━${color #A3CB38}━━━━━━━━━━━━━━${color #555}━━━━━━━${color #A3CB38}━━┫ ${color #ddd}07:33 ${color #555}────────────□────────────${color #555}───────────────────────────${color #555}─────────□─────────────────${color #555}───────────────────────────────${color #555}────────────────────────□────────────────────────────□────────────────────${color #555}──────────────────────${color #ddd} 24/08
]]

conky.text = [[
${color #555}━━━━━━━━━━━━━━${color #ED4C67}━■■${color #A3CB38}■■━━━━━━━━━━━${color #555}━━━━━━━${color #A3CB38}━━┫ ${color #ddd}07:33 ${color #555}────────────■■■■■■■──────${color #555}───────────────────────────${color #555}─────────■■■■■■────────────${color #555}───────────────────────────────${color #555}───────────────■■■■■■■■■■■■■■■■■■■■■■■■─────────────────■────────────────────${color #555}──────────────────────${color #ddd} 24/08
${color #888}               Present paper                               Algorithmics lecture                             Present stuff                                                   Study for exam
]]

```
