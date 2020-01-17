function kill_v2
a = gcf;
Fig2Close = a.Name;
delete(a)
ax = findall(0,'tag','RealAxes');

        num = length(ax.Children);
                j=0;
                for i=1:num
                     if strcmp(ax.Children(i).Tag,Fig2Close)
                         j = j+1
                        borra(j) = i;
                     end         
                end
                    delete(ax.Children(borra))
        ax.ColorOrderIndex = 1;                    
end