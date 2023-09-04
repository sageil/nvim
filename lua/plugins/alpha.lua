return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local logo = [[ 
 
    ___  _____    
 .'/,-Y"     "~-.  
 l.Y             ^.           
 /\               _\_  
i            ___/"   "\ 
|          /"   "\   o !   
l         ]     o !__./   
 \ _  _    \.___./    "~\  
  X \/ \            ___./  
 ( \ ___.   _..--~~"   ~`-.  
  ` Z,--   /               \    
    \__.  (   /       ______) 
      \   l  /-----~~" /   
       Y   \          / 
       |    "x______.^ 
       |           \    
       |            \

    ]]
    opts.section.header.val = vim.split(logo, "\n", { trimempty = true })
  end,
}
