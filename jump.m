function dst = jump(dsttag)
% JUMP smart cd
%
% Args:
%   - dsttag: string, part of the directory name to identify destination path

% Depend on `autojump`
if isunix()
    cmd = ['/usr/bin/env autojump ', dsttag];
else
    cmd = ['C:\cygwin64\bin\python2.7.exe /usr/bin/autojump ', dsttag];
end
[status, dst] = system(cmd);
if status == 0
    if ~isunix()
        % translate cygwin path to windows
        [~, dst] = system(['C:\cygwin65\bin\cgypath.exe --windows ', dst]);
    end
    cd(dst(1:end-1))
else
    disp(dst);
end
