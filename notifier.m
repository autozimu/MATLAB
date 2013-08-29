function notifier(msg)
% send notification to OSX notification center
% 
% Args:
%   - msg: str, message body
% 
% Dependencies: terminal-notifier
cmd = ['terminal-notifier -message ', msg, ' -activate com.mathworks.matlab'];
system(cmd);