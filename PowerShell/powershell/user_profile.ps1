# Prompt
#Import-Module posh-git
#Import-Module oh-my-posh
#Set-PoshPrompt Paradox
#Set-Theme Paradox

# Icons
Import-Module -Name Terminal-Icons

#PSReadline
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHistory 'Ctrl+r'



#Alias
Set-Alias v nvim
Set-Alias ll ls
Set-Alias t tree
Set-Alias tf 'tree /f'
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
