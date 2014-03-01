function mouseClickIdx(X, Y)
%     X = [1:10];
%     Y = rand(10, 1)';
    h = plot(X, Y, 'o-');
    set(h, 'ButtonDownFcn', @buttonDownCallback);
    
    function buttonDownCallback(o, e)
        p = get(gca, 'CurrentPoint'); % get current point
        p = p(1, 1:2);
        [~, idx] = min((X - p(1)).^2 + (Y - p(2)).^2);
        title(sprintf('%g', idx));
    end
end