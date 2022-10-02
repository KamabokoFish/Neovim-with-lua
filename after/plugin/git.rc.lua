require('git').setup({
  default_mappings = false, -- NOTE: `quit_blame` and `blame_commit` are still merged to the keymaps even if `default_mappings = false`

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
    open_pull_request = "<space>p",
    -- Create a pull request with the target branch is set in the `target_branch` option
    create_pull_request = "<space>gn",
    -- Opens a new diff that compares against the current index
    diff = "<space>d",
    -- Close git diff
    diff_close = "<space>D",
    -- Revert the current file to the specific commit
  },
  -- Default target branch when create a pull request
  target_branch = "main",
})