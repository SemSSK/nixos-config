{pkgs, upkgs,...}:
{
  	programs.waybar = {
			enable = true;
      style = ''
        window#waybar {
          font-size: 10px;
        	background-color: transparent;
        	color: #fdf6e3;
          min-height: 0;
        }

        #clock.1,
        #clock.2,
        #clock.3,
        #pulseaudio,
        #memory,
        #cpu,
        #battery,
        #disk,
        #tray {
        	background: #1a1a1a;
          margin-left:5px;
          margin-right:5px;
          border: 1px solid;
          border-color: #595959;
          border-radius:5px;
        }
        
        #workspaces {
          background-color: transparent;
        }

        #workspaces button {
          background-color:#1a1a1a;
          padding: 0 5px;
        	color: #268bd2;
          border: 1px solid;
          border-color: #595959;
          border-radius: 5px;
        }
        #workspaces button.active {
        	color: #fdf6e3;
          border-color: #fdf6e3;
        }
        #workspaces button:hover {
        	background-color: #fdf6e3;
          color: #1a1a1a;
        }

        #pulseaudio {
        	color: #268bd2;
        }
        #memory {
        	color: #2aa198;
        }
        #cpu {
        	color: #6c71c4;
        }
        #battery {
        	color: #859900;
        }
        #disk {
        	color: #b58900;
        }

        #clock,
        #pulseaudio,
        #memory,
        #cpu,
        #battery,
        #disk {
        	padding: 0 10px;
        }
      '';
      settings = {
        mainBar = {
          layer = "top";
          position = "top";
          output = [
            "eDP-1"
            "HDMI-A-1"
          ];
          modules-left = [ 
            "hyprland/workspaces"
          ];
          modules-center = [
        		"clock#1"
        		"clock#2"
        		"clock#3"
          ];
          modules-right = [
        		"pulseaudio"
        		"memory"
        		"cpu"
        		"battery"
        		"disk"
        		"tray"
          ]; 

          "hyprland/workspaces" = {
            disable-scroll = true;
            all-outputs = true;
          };
          
          "clock#1" = {
        		format = "{:%a}";
        		tooltip = false;
        	};
        	"clock#2" = {
        		format = "{:%H:%M}";
        		tooltip = false;
        	};
        	"clock#3" = {
        		format = "{:%d-%m-%y}";
        		tooltip = false;
        	};
          
          "pulseaudio" = {
        		format = "{icon} {volume:2}%";
        		format-bluetooth = "{icon}  {volume}%";
        		format-muted = "MUTE";
        		format-icons = {
        			headphones = "";
        			default = [
        				""
        				""
        			];
        		};
        		scroll-step = 5;
        		on-click = "pavucontrol";
        	};

          "memory" = {
        		interval = 5;
        		format = "Mem {}%";
        	};
        	"cpu" = {
        		interval = 5;
        		format = "CPU {usage:2}%";
        	};
        	"battery" = {
        		states = {
        			good = 95;
        			warning = 30;
        			critical = 15;
        		};
        		format = "{icon} {capacity}% {time}";
            format-time = "{H}h{M}min";
            format-charging = "󱐋 {capacity}% {time}";
        		format-icons = [
        			" "
        			" "
        			" "
        			" "
        			" " 
        		];
        	};

          "disk" = {
        		interval = 5;
        		format = "Disk {percentage_used:2}%";
        		path = "/";
        	};
        	"tray" = {
        		icon-size = 20;
        	};
          
        };
      };
		};

}
