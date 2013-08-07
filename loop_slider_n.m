function b1 = loop_slider_n(k,kmin,kmax,n)
%LOOP_SLIDER_N is a quick and easy way to make a simple slider at the bottom of your plot
%   LOOP_SLIDER_N differs from loop_slider by allowing you to have more
%   than one slider on a plot.  loop_slider(k,kmin,kmax) is the same as
%   loop_slider_n(k,kmin,kmax,1)
%       k -> starting value for slider
%       kmin -> minimum value for slider
%       kmax -> maximum value for slider
%       n -> the number of the loop slider, 1 for the first loop slider, 2
%            for the second, etc.
%
%   For Example:
%         k=1; kmin=1; kmax=5; hk=loop_slider_n(k,kmin,kmax,1);
%         j=1; jmin=1; jmax=5; hj=loop_slider_n(j,jmin,jmax,2);
%         h=1; hmin=1; hmax=5; hh=loop_slider_n(h,hmin,hmax,3);
%         t = linspace(0,4*pi,10^5);
%         while true
%             if ~ishandle(hk)
%                 break
%             end
%             k = round(get(hk, 'Value'));
%             j = round(get(hj, 'Value'));
%             h = round(get(hh, 'Value'));
% 
%             plot(t, k*sin(j*t).^h)
%             title(sprintf('y = %d*sin(%dt)^{%d}', k, j, h))
% 
%             uiwait;
%         end
%
% Marvin Thielk 2013
% mthielk@salk.edu

b1= uicontrol(gcf,...
    'Style','slider',...
    'Min' ,kmin,'Max',kmax, ...
    'Position',[200*(n-1),0,200,15], ...
    'Value', k,...
    'SliderStep',[1/(kmax-kmin) 1/(kmax-kmin)],...
    'CallBack', 'uiresume;');