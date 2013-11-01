function dst = jump(dsttag)
% JUMP smart cd
% 
% Args:
%   - dsttag: string, part of the directory name to identify destination path

% Depend on `autojump`
cmd = ['/usr/local/bin/autojump ', dsttag];
[status, dst] = system(cmd);
if status == 0
    cd(dst(1:end-1))
end