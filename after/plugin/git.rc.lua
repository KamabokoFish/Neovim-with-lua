
local status,git = pcall(require,"git")
if (not status) then return end

git.setup({
  default_mappings = true, -- NOTE: `quit_blame` and `blame_commit` are still merged to the keymaps even if `default_mappings = false`

  keymaps = {
    -- Open blame window
    blame = "<space>b",
    -- Close blame window
    quit_blame = "q",
    -- Open blame commit
    blame_commit = "<CR>",
    -- Open file/folder in git repository
    browse = "<space>go",
    -- Open pull request of the current branch
    open_pull_request = "<space>gp",
    -- Create a pull request with the target branch is set in the `target_branch` option
    create_pull_request = "<space>gn",
    -- Opens a new diff that compares against the current index
    diff = "<space>d",
    -- Close git diff
    diff_close = "<space>D",
    -- Revert to the specific commit
    revert = "<space>gr",
    -- Revert the current file to the specific commit
    revert_file = "<space>gR",
  },
  -- Default target branch when create a pull request
  target_branch = "master",
})
