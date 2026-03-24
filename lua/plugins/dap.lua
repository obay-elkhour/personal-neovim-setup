return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",

      -- installers
      "williamboman/mason.nvim",
      "jay-babu/mason-nvim-dap.nvim",
    },

    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      -- UI setup
      dapui.setup()

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end

      -- install debuggers
      require("mason-nvim-dap").setup({
        ensure_installed = { "python", "js" },
        automatic_installation = true,
      })

      -- 🐍 PYTHON (debugpy)
      dap.adapters.python = {
        type = "executable",
        command = "python",
        args = { "-m", "debugpy.adapter" },
      }

      dap.configurations.python = {
        {
          type = "python",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          pythonPath = function()
            return "python"
          end,
        },
      }

      -- 🟨 JS / TS (node)
      dap.adapters.node2 = {
        type = "executable",
        command = "node",
        args = {
          vim.fn.stdpath("data")
            .. "/mason/packages/node-debug2-adapter/out/src/nodeDebug.js",
        },
      }

      dap.configurations.javascript = {
        {
          name = "Launch JS file",
          type = "node2",
          request = "launch",
          program = "${file}",
          cwd = vim.fn.getcwd(),
        },
      }

      dap.configurations.typescript = dap.configurations.javascript

      -- 🔑 KEYMAPS (important)
      vim.keymap.set("n", "<F5>", dap.continue)
      vim.keymap.set("n", "<F10>", dap.step_over)
      vim.keymap.set("n", "<F11>", dap.step_into)
      vim.keymap.set("n", "<F12>", dap.step_out)

      vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
      vim.keymap.set("n", "<leader>B", function()
        dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
      end)

      vim.keymap.set("n", "<leader>dr", dap.repl.open)
      vim.keymap.set("n", "<leader>dl", dap.run_last)
    end,
  },
}
