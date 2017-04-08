conky.config = {
  -- basic
  update_interval = 1.0,
  double_buffer = true,
  out_to_console = false,
  out_to_stderr = false,

  -- own_window
  own_window = true,
  own_window_class = 'Conky',
  own_window_type = 'desktop',
  own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
  own_window_transparent = false,
  own_window_colour = '#ffffff',

  -- draw/show
  draw_shades = false,
  draw_outline = false,
  draw_borders = false,
  draw_graph_borders = true,
  show_graph_scale = false,
  show_graph_range = false,
  background = true,

  -- position/dimension
  alignment = 'top_right',
  gap_x = 10,
  gap_y = 30,
  minimum_width = 250,
  maximum_width = 250,

  -- colors
  default_color = 'white',
  default_shade_color = 'white',
  default_outline_color = 'white',
  color0 = '#443843',

  -- font
  use_xft = true,
  font = 'Ricty:style=Regular:size=11',
};

conky.text = [[
${color0}${font Ricty:size=24}${time %Y/%m/%d %a}
${alignr}${time %H:%M:%S}${font}
${hr}
Uptime ${alignr}${uptime}
${hr}
CPU ${alignr}Processes: ${processes}
${execp ~/.conky/cpu.sh}
- ${top name 1}${alignr}${top cpu 1}%
- ${top name 2}${alignr}${top cpu 2}%
- ${top name 3}${alignr}${top cpu 3}%
${hr}
RAM ${alignr}${mem}/${memmax}
${membar 6,200}${alignr}${memperc}%
- ${top_mem name 1}${alignr}${top_mem mem 1}%
- ${top_mem name 2}${alignr}${top_mem mem 2}%
- ${top_mem name 3}${alignr}${top_mem mem 3}%
${hr}
${execp ~/.conky/fs.sh}
${hr}
${execp ~/.conky/diskio.sh}
${hr}
${execp ~/.conky/network.sh}
${hr}
]];
