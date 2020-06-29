a = gcf;
N = length(a.Children);

delete(a.Children(1:N-1))

a.Children.XLim = [-85 85];
a.Children.YLim = [0, 1.3];
axis square

%%
for i = 1:length(a.Children.Children)
a.Children.Children(i).XData = a.Children.Children(i).XData+0.00107;
end