local gl = require('galaxyline')
local gls = gl.section
local condition = require('galaxyline.condition')

local colors = {
  red = '#E06C75',
  dark_red = '#BE5046',
  green = '#98C379',
  yellow = '#E5C07B',
  orange = '#d19a66',
  blue = '#61AFEF',
  purple = '#C67BDD',
  cyan = '#56B5C2',
  gray = '#ABB2BF',
  gutter_gray = '#4b5263',
  white = '#FFFFFF',
  black = '#202020',
  -- bg = '#3E4452',
  bg = '#202020'
}

gls.left[1] = {
  ViMode = {
    provider = function()
      local mode = vim.fn.mode()
      local modes = {
        ['c'] = { text = 'COMMAND', color = colors.green },
        ['ce'] = { text = 'NORMAL EX', color = colors.green },
        ['cv'] = { text = 'EX', color = colors.green },
        ['i'] = { text = 'INSERT', color = colors.green },
        ['ic'] = { text = 'INS-COMPLETE', color = colors.green },
        ['n'] = { text = 'NORMAL', color = colors.blue },
        ['no'] = { text = 'OPERATOR-PENDING', color = colors.blue },
        ['r'] = { text = 'HIT-ENTER', color = colors.green },
        ['r?'] = { text = ':CONFIRM', color = colors.green },
        ['rm'] = { text = '--MORE', color = colors.green },
        ['R'] = { text = 'REPLACE', color = colors.orange },
        ['Rv'] = { text = 'VIRTUAL', color = colors.orange },
        ['s'] = { text = 'SELECT', color = colors.yellow },
        ['S'] = { text = 'SELECT', color = colors.yellow },
        [''] = { text = 'SELECT', color = colors.yellow },
        ['t'] = { text = 'TERMINAL', color = colors.gray },
        ['v'] = { text = 'VISUAL', color = colors.purple },
        ['V'] = { text = 'VISUAL LINE', color = colors.purple },
        [''] = { text = 'VISUAL BLOCK', color = colors.purple },
        ['!'] = { text = 'SHELL', color = colors.green }
      }
      vim.api.nvim_command('hi GalaxyViMode guifg=' .. modes[mode]['color'])
      return modes[mode]['text']
    end,
    separator = ' ',
    separator_highlight = { 'NONE', colors.bg },
    highlight = { colors.blue, colors.bg, 'bold' }
  }
}

gls.left[2] = {
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    highlight = { require('galaxyline.provider_fileinfo').get_file_icon_color, colors.bg }
  }
}

gls.left[3] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    highlight = { colors.cyan, colors.bg, 'bold' }
  }
}
