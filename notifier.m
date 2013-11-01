function notifier(msg)
% NOTIFIER send notification to OSX notification center
% 
% Args:
%   - msg: str, message body

% Depend on `terminal-notifier`
cmd = ['/usr/local/bin/terminal-notifier ', ...
    ' -message ', msg, ...
    ' -sender com.mathworks.matlab ', ...
    ' -activate com.mathworks.matlab ', ...
    ];
disp(cmd);
system(cmd);