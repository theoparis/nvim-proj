local function FindRoot()
    local ps = io.popen("git rev-parse --show-toplevel || echo 'FAILED'")
    local git_root = tostring(ps:read())
    ps:close()

    if git_root and git_root ~= "FAILED" then
        return git_root
    else
        return ""
    end
end

local function LoadProjectConfig()
    local root = FindRoot()
    if root ~= nil then
        local proj_cfg_path = root .. "/.nvim/init.lua"
        pcall(dofile, proj_cfg_path)
    end
end

return {
    LoadConfig = LoadProjectConfig,
    FindRoot = FindRoot
}
