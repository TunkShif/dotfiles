local wk = require('which-key')

wk.setup {}

wk.register({ ['<leader>f'] = { name = '+file', f = 'Find File', h = 'Find Recent File' } })

wk.register({
  ['<leader>c'] = { name = '+code', f = 'Code Format', a = 'Code Action', r = 'Rename', b = 'Preview Definition' }
})

wk.register({ ['<leader>s'] = { name = '+session', s = 'Save Session' } })
