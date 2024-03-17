-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.transparent_window = true

lvim.builtin.terminal.open_mapping = "<c-/>"

lvim.keys.insert_mode["<C-f>"] = "<Right>"
lvim.keys.insert_mode["<C-p>"] = "<Up>"
lvim.keys.insert_mode["<C-n>"] = "<Down>"
lvim.keys.insert_mode["<C-b>"] = "<Left>"

lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext <Return>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev <Return>"
