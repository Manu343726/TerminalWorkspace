
fun! tmuxline#presets#full#get()
  return tmuxline#util#create_line_from_hash({
        \ 'a': '#S',
        \ 'win': ['#I','#W'],
        \ 'cwin': ['#I','#W'],
        \ 'z': ['#(power_status.sh)'],
        \ 'y': ['%b %d %R','#(sudo wifi_status.sh)'],
        \ 'x': ['#(sudo upgrade_status.sh)'],
        \ 'options': {
          \ 'status-justify': 'left'}
        \})

    return bar
endfun
