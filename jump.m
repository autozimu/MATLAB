function dst = jump(dsttag)
% JUMP smart cd
% 
% Args:
%   - dsttag: string, part of the directory name to identify destination path

% Depend on `autojump`
if ~isunix()
    disp('Not implemented yet non-unix platform');
    return
end
cmd = ['/usr/bin/env autojump ', dsttag];
[status, dst] = system(cmd);
if status == 0
    cd(dst(1:end-1))
end