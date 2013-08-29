function dst = jump(dsttag)
% smart cd
% 
% Args:
%   - dsttag: string, part of the directory name to identify destination path
%
% Dependencies: autojump
cmd = ['autojump', ' ', dsttag];
[status, dst] = system(cmd);
if status == 0
    cd(dst(1:end-1))
end