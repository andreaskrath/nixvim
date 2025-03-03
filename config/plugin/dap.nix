{
  plugins.dap = {
    enable = true;

    luaConfig.post = ''
      local dap = require('dap')

      -- Function to read environment variables from .env file
      local function load_env_file(env_path)
        local env_vars = {}
        local file = io.open(env_path, "r")

        if file then
          for line in file:lines() do
            -- Skip comments and empty lines
            if not line:match("^%s*#") and line:match("%S") then
              local name, value = line:match("^%s*(%S+)%s*=%s*(.+)%s*$")
              if name and value then
                -- Remove quotes if they exist
                value = value:gsub("^[\"'](.+)[\"']$", "%1")
                env_vars[name] = value
              end
            end
          end
          file:close()
        end

        return env_vars
      end

      table.insert(dap.configurations.python or {}, {
        type = 'python',
        request = 'launch',
        name = 'Python with .env',
        program = function()
          return vim.fn.expand('%:p')
        end,
        cwd = function()
          return vim.fn.getcwd()
        end,
        env = function()
          local project_dir = vim.fn.getcwd()
          local env_path = project_dir .. '/.env'
          local env_vars = load_env_file(env_path)

          -- Debug output to verify env vars (can be removed later)
          print("Loading .env from: " .. env_path)
          for k, v in pairs(env_vars) do
            print("ENV: " .. k .. "=" .. v)
          end

          return env_vars
        end,
        justMyCode = false,
        console = "integratedTerminal",
      })
    '';
  };
}
