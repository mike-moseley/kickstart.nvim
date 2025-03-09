return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },

  opts = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Add to harpoon' })

    vim.keymap.set('n', '<C-k1>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<C-k2>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<C-k3>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<C-k4>', function()
      harpoon:list():select(4)
    end)
    vim.keymap.set('n', '<C-k5>', function()
      harpoon:list():select(5)
    end)
    vim.keymap.set('n', '<C-k6>', function()
      harpoon:list():select(6)
    end)
    vim.keymap.set('n', '<C-k7>', function()
      harpoon:list():select(7)
    end)
    vim.keymap.set('n', '<C-k8>', function()
      harpoon:list():select(8)
    end)
    vim.keymap.set('n', '<C-k9>', function()
      harpoon:list():select(9)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end)

    vim.keymap.set('n', '<C-h>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    -- -- basic telescope configuration
    -- local conf = require('telescope.config').values
    -- local function toggle_telescope(harpoon_files)
    --   local file_paths = {}
    --   for _, item in ipairs(harpoon_files.items) do
    --     table.insert(file_paths, item.value)
    --   end
    --
    --   require('telescope.pickers')
    --     .new({}, {
    --       prompt_title = 'Harpoon',
    --       finder = require('telescope.finders').new_table {
    --         results = file_paths,
    --       },
    --       previewer = conf.file_previewer {},
    --       sorter = conf.generic_sorter {},
    --     })
    --     :find()
    -- end

    -- vim.keymap.set('n', '<C-h>', function()
    --   toggle_telescope(harpoon:list())
    -- end, { desc = 'Open harpoon window' })
  end,
}
