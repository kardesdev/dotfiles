require('auto-session').setup {
  log_level = 'info',
  auto_session_root_dir = '/home/taylor/.nvimsessions/'
}
vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"
