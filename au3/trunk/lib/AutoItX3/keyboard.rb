#Encoding: UTF-8
#This file is part of au3. 
#Copyright © 2009, 2010 Marvin Gülker, Steven Heidel
#
#au3 is published under the same terms as Ruby. 
#See http://www.ruby-lang.org/en/LICENSE.txt

module AutoItX3
  
  class << self
    
    #Simulates keyboard input. 
    #===Parameters
    #[+keys+] The keystrokes to simulate. See _Remarks_. 
    #[+flag+] (+false+) If set to +true+, escape sequences in braces { and } are ignored. 
    #===Return value
    #nil. 
    #===Example
    #  #Simulate [SHIFT] + [A], [B] and [C]. 
    #  AutoItX3.send_keys("Abc")
    #  #Simulate [A], [ESC] and b. 
    #  AutoItX3.send_keys("a{ESC}b")
    #  #Ignore the escape sequence and send it as regular keystrokes. 
    #  AutoItX3.send_keys("a{ESC}b", true)
    #  #Sends [ALT] + [F]
    #  AutoItX3.send_keys("!F")
    #===Remarks
    #You may use some of the follwing escape sequences in braces { and } 
    #(copied from the AutoItX3 help): 
    #  Escape sequence     | Resulting keypress
    #  ====================+============================================================
    #  !                   | !
    #  --------------------+------------------------------------------------------------
    #  #                   | #
    #  --------------------+------------------------------------------------------------
    #  +                   | +
    #  --------------------+------------------------------------------------------------
    #  ^                   | ^
    #  --------------------+------------------------------------------------------------
    #  {                   | {
    #  --------------------+------------------------------------------------------------
    #  }                   | }
    #  --------------------+------------------------------------------------------------
    #  SPACE               | SPACE
    #  --------------------+------------------------------------------------------------
    #  ENTER               | Return on the main keyboard
    #  --------------------+------------------------------------------------------------
    #  ALT                 | Alt
    #  --------------------+------------------------------------------------------------
    #  BACKSPACE or BS     | Backspace
    #  --------------------+------------------------------------------------------------
    #  DELETE or DEL       | Del
    #  --------------------+------------------------------------------------------------
    #  UP                  | Up arrow
    #  --------------------+------------------------------------------------------------
    #  DOWN                | Down arrow
    #  --------------------+------------------------------------------------------------
    #  LEFT                | Left arrow
    #  --------------------+------------------------------------------------------------
    #  RIGHT               | Right arrow
    #  --------------------+------------------------------------------------------------
    #  HOME                | Home
    #  --------------------+------------------------------------------------------------
    #  END                 | End
    #  --------------------+------------------------------------------------------------
    #  ESCAPE or ESC       | ESC
    #  --------------------+------------------------------------------------------------
    #  INSERT or INS       | Ins
    #  --------------------+------------------------------------------------------------
    #  PGUP                | Page Up
    #  --------------------+------------------------------------------------------------
    #  PGDN                | Page Down
    #  --------------------+------------------------------------------------------------
    #  F1 - F12            | Function keys 1 to 12
    #  --------------------+------------------------------------------------------------
    #  TAB                 | Tab
    #  --------------------+------------------------------------------------------------
    #  PRINTSCREEN         | Printscreen
    #  --------------------+------------------------------------------------------------
    #  LWIN                | Left Windows key
    #  --------------------+------------------------------------------------------------
    #  RWIN                | Right Windows key
    #  --------------------+------------------------------------------------------------
    #  NUMLOCK on          | NumLock on
    #  --------------------+------------------------------------------------------------
    #  CAPSLOCK off        | CapsLock off
    #  --------------------+------------------------------------------------------------
    #  SCROLLLOCK toggle   | ScrollLock toggle
    #  --------------------+------------------------------------------------------------
    #  BREAK               | For CTRL-Break processing
    #  --------------------+------------------------------------------------------------
    #  PAUSE               | Pause
    #  --------------------+------------------------------------------------------------
    #  NUMPAD0 - NUMPAD9   | Numpad number keys. 
    #  --------------------+------------------------------------------------------------
    #  NUMPADMUTLT         | Numpad Multipy
    #  --------------------+------------------------------------------------------------
    #  NUMPADADD           | Numpad Add
    #  --------------------+------------------------------------------------------------
    #  NUMPADSUBT          | Numpad Subtract
    #  --------------------+------------------------------------------------------------
    #  NUMPADDIV           | Numpad Division
    #  --------------------+------------------------------------------------------------
    #  NUMPADDOT           | Numpad dot
    #  --------------------+------------------------------------------------------------
    #  NUMPADENTER         | Numpad return key
    #  --------------------+------------------------------------------------------------
    #  APPSKEY             | Windows App key
    #  --------------------+------------------------------------------------------------
    #  LALT                | Left Alt key
    #  --------------------+------------------------------------------------------------
    #  RALT                | Right Alt key
    #  --------------------+------------------------------------------------------------
    #  LCTRL               | Left control key
    #  --------------------+------------------------------------------------------------
    #  LSHIFT              | Left Shift key
    #  --------------------+------------------------------------------------------------
    #  RSHIFT              | Right Shift key
    #  --------------------+------------------------------------------------------------
    #  SLEEP               | Computer Sleep key
    #  --------------------+------------------------------------------------------------
    #  ALTDOWN             | Hold Alt down until ALTUP is sent
    #  --------------------+------------------------------------------------------------
    #  SHIFTDOWN           | Hold Shift down until SHIFTUP is sent
    #  --------------------+------------------------------------------------------------
    #  CTRLDOWN            | Hold CTRL down until CTRLUP is sent
    #  --------------------+------------------------------------------------------------
    #  LWINDOWN            | Hold the left Windows key down until LWDINUP is sent
    #  --------------------+------------------------------------------------------------
    #  RWINDOWN            | Hold the right Windows key down until RWINUP is sent
    #  --------------------+------------------------------------------------------------
    #  ASC nnnn            | Send the kombination Alt+nnnn on numpad
    #  --------------------+------------------------------------------------------------
    #  BROWSER_BACK        | 2000/XP Only: Select the browser "back" button
    #  --------------------+------------------------------------------------------------
    #  BROWSER_FORWARD     | 2000/XP Only: Select the browser "forward" button
    #  --------------------+------------------------------------------------------------
    #  BROWSER_REFRESH     | 2000/XP Only: Select the browser "refresh" button
    #  --------------------+------------------------------------------------------------
    #  BROWSER_STOP        | 2000/XP Only: Select the browser "stop" button
    #  --------------------+------------------------------------------------------------
    #  BROWSER_SEARCH      | 2000/XP Only: Select the browser "search" button
    #  --------------------+------------------------------------------------------------
    #  BROWSER_FAVORITES   | 2000/XP Only: Select the browser "favorites" button
    #  --------------------+------------------------------------------------------------
    #  BROWSER_HOME        | 2000/XP Only: Launch the browser and go to the home page
    #  --------------------+------------------------------------------------------------
    #  VOLUME_MUTE         | 2000/XP Only: Mute the volume
    #  --------------------+------------------------------------------------------------
    #  VOLUME_DOWN         | 2000/XP Only: Reduce the volume
    #  --------------------+------------------------------------------------------------
    #  VOLUME_UP           | 2000/XP Only: Increase the volume
    #  --------------------+------------------------------------------------------------
    #  MEDIA_NEXT          | 2000/XP Only: Select next track in media player
    #  --------------------+------------------------------------------------------------
    #  MEDIA_PREV          | 2000/XP Only: Select previous track in media player
    #  --------------------+------------------------------------------------------------
    #  MEDIA_STOP          | 2000/XP Only: Stop media player
    #  --------------------+------------------------------------------------------------
    #  MEDIA_PLAY_PAUSE    | 2000/XP Only: Play/pause media player
    #  --------------------+------------------------------------------------------------
    #  LAUNCH_MAIL         | 2000/XP Only: Launch the email application
    #  --------------------+------------------------------------------------------------
    #  LAUNCH_MEDIA        | 2000/XP Only: Launch media player
    #  --------------------+------------------------------------------------------------
    #  LAUNCH_APP1         | 2000/XP Only: Launch user app1
    #  --------------------+------------------------------------------------------------
    #  LAUNCH_APP2         | 2000/XP Only: Launch user app2
    #
    #A "!" in +keys+ indicates an ALT keystroke, 
    #the "+" means SHIFT, "^" CTRL 
    #and "#" is the Windows key. 
    def send_keys(keys, flag = false)
      @functions[__method__] ||= AU3_Function.new("Send", 'SL')
      @functions[__method__].call(keys.wide, flag)
    end
    
    #Allows you to do things like 
    #  AutoItX3.ctrl_c
    #.Every _ will be used to separate a key press from another, so 
    #you can't send _ with this function. Possible shortcuts are: 
    #* ctrl
    #* shift
    #* alt
    #* win
    #* enter (or return)
    #* del
    #This text sequences can't be sent, too. 
    def method_missing(sym, *args, &block)
      super if !args.empty? or block
      cmds = sym.to_s.split("_")
      callsequence = ""
      cmds.each do |cmd|
        callsequence << case cmd.downcase
          when "ctrl" then "^"
          when "shift" then "+"
          when "alt" then "!"
          when "win" then "#"
          when "enter" then "{ENTER}"
          when "return" then "{ENTER}"
          when "del" then "{DEL}"
          else
            cmd
        end
      end
      send_keys(callsequence)
    end
    
  end
  
end