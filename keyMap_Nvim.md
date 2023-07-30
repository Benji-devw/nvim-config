# Shell CMD
PowerShell & NEOVIM
https://www.youtube.com/watch?v=5-aK2_WwrmM
alias           .config\powershell\user_profile.ps1
shellConf       vim $PROFILE

* gitui           Git Manager
* ohmyposh        Style for shell prompt
* nerd Fonts      Police incon for shell
* scoop           Install programmes
* z               Directory jumper      
* :set hls!       hide backg search word 
* pwd             Path current
* btop            Current PC Stats
* Ctrl+maj+p      fraCommand shell
* 
* 
 ## Telescope:
* :Telescope commands
* :Telescope live_grep 		Search in file "function, margin ..."
* :Telescope git_files
* 
 # Tmux Navigation
* Ctrl+h j k l 		Navigate to buffers
* Ctrl+w s 			Horizontal Split
* Ctrl+w v 			Vertical Split
* 
* 
 # NVim 
* :checkhealth 		Nvim status
* Esc                 Normale mode
* i, a, c             Insert mode
* v, V, Ctrl-c        Visual mode
* :, /                Commande-line mode
* :wq!                Save + quit + ecrase
* :set hls!           hide backg search word "n"
* :set nu             Number Line
* :20vs .             Arborescence File
* :so %               Recharge File
* 
* :33                 Go line 33
* :%s/Replace/Word    Search and replace all words
* :s/replace/word     Search for replace line words
* :view file          Open File
* :b                  Go tod buffer
* :bn                 go to newt buffer
* :bd                 Delete current buffer
* :arga {filename}    Add
* :sf                 Split win and :find file
* :b 2                Open buffer #2 in this window
* :copen              Open a mini-window with list of errors - cclose
* 
* :hotWord            Go to word
* 
* =					Format Code
* 
* Ctrl+a 				Open nvim-tree
* Ctrl+f 				Open nvim-tree Current File
* 
* ctrl+w s            split Window
* ctrl+w v            split window Vertical
* ctrl+w q            Close Window
* ctrl+w w            Alternate Window
* 
* ctrl+o              Buffer prev
* ctrl+i              Buffer next
* ctrl+g              Display position in file
* 
* alt+k               Read
* alt+o               Insert line under
* maj+v & v           Select
* vgq                 Select line
* alt+u & u           Undo
* ctrl+r              Redo
* 
* ctrl+y              Scroll up screen
* ctrl+e              scroll down screen
* AltGr+{ }           Move cursor paragraph to
* ctrl+u              Move screen up 
* ctrl+d              Move screen down
* G                   Move view bottom file
* gg                  Move view top file
* maj+g               Move to down 
* $                   Move cursor end line
* 0, ^^               Move ursor start line
* 3+l                 Move to 3 letter
* :m+ or :m-2         Move line
* :move {num}         move line to number line
* 
* p                   Paste after cursor
* f                   find character after cursor in current line "fu"
* 
* alt+s               Supp + editMode
* alt+x               Delete + viewMode
* x   				delete the current character
* dw  				delete the current word
* 5dd 				delete five lines
* dd                  Delete/cut Line
* 2dd                 Delete 2 line
* maj+d               Delete right
* maj+j               Delete Space line
* d2l					Delete 2 lette right
* d2w                 Delete 2 word right
* d$ 					Delete line from cursor
* 
* /{pattern}          search forward from cursor    
* ?{pattern}          search backward from cursor    
* *                   search for the exact word
* gd                  Search var func
* 
* :%s/{pattern}/{string}/         replace all matches of a pattern
* :s/{pattern}/{string}           replace all matches of a pattern in the selected area (in visual mode) 
* 
* 
* ## Comment: "terrortylor/nvim-comment"
* gcc             comment/uncomment current line, this does not take a count, if you want a count use the gc{count}{motion}
* gc{motion}      comment/uncomment selection defined by a motion
* gcip            comment/uncomment a paragraph
* gc4w            comment/uncomment current line
* gc4j            comment/uncomment 4 lines below the current line
* dic             delete comment block
* gcic            uncomment commented block
* 
* 
* 
* 
* neovim conf  :help rtp
* ------------------------------------
* CONFIG DIRECTORY (DEFAULt) ~
*                   *$XDG_CONFIG_HOME*            Nvim: stdpath("config")
*     Unix:         ~/.config                   ~/.config/nvim
*     Windows:      ~/AppData/Local             ~/AppData/Local/nvim
* DATA DIRECTORY (DEFAULT) ~
*                   *$XDG_DATA_HOME*              Nvim: stdpath("data")
*     Unix:         ~/.local/share              ~/.local/share/nvim
*     Windows:      ~/AppData/Local             ~/AppData/Local/nvim-data
* RUN DIRECTORY (DEFAULT) ~
*                   *$XDG_RUNTIME_DIR*            Nvim: stdpath("run")
*     Unix:         /tmp/nvim.user/xxx          /tmp/nvim.user/xxx
*     Windows:      $TMP/nvim.user/xxx          $TMP/nvim.user/xxx
* STATE DIRECTORY (DEFAULT) ~
*                   *$XDG_STATE_HOME*             Nvim: stdpath("state")
*     Unix:         ~/.local/state              ~/.local/state/nvim
*     Windows:      ~/AppData/Local             ~/AppData/Local/nvim-data
* -------------------------------------
