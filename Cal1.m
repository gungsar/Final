function [] = Cal1()
    
    close all;
    global gg;
    gg.number = 0;
    gg.fig = figure('numbertitle','off','name','Calculator');
    %gg.displayBox = uicontrol('style','text','units','normalized','position',[.20 .85 .5 0.13],'string',num2str(gg.number),'horizontalalignment','left','fontsize',20);
    gg.input1 = uicontrol('style','edit','units','normalized','position',[.10 .85 .2 0.1]); 
    gg.input2 = uicontrol('style','edit','units','normalized','position',[.350 .85 .2 0.1]);
    gg.input3 = uicontrol('style','togglebutton','units','normalized','position',[.60 .85 .2 0.1]);
    
    gg.one = uicontrol('style','pushbutton','units','normalized','position',[.10 .70 .10 .10],'string','1','callback', {@numInput,1});
    gg.two = uicontrol('style','pushbutton','units','normalized','position',[.25 .70 .10 .10],'string','2','callback', {@numInput,2});
    gg.three = uicontrol('style','pushbutton','units','normalized','position',[.40 .70 .10 .10],'string','3','callback', {@numInput,3});
    
    gg.four = uicontrol('style','pushbutton','units','normalized','position',[.10 .57 .10 .10],'string','4','callback', {@numInput,4});
    gg.five = uicontrol('style','pushbutton','units','normalized','position',[.25 .57 .10 .10],'string','5','callback', {@numInput,5});
    gg.six = uicontrol('style','pushbutton','units','normalized','position',[.40 .57 .10 .10],'string','6','callback', {@numInput,6});
    
    gg.seven = uicontrol('style','pushbutton','units','normalized','position',[.10 .440 .10 .10],'string','7','callback', {@numInput,7});
    gg.eight = uicontrol('style','pushbutton','units','normalized','position',[.25 .440 .10 .10],'string','8','callback', {@numInput,8});
    gg.nine = uicontrol('style','pushbutton','units','normalized','position',[.40 .44 .10 .10],'string','9','callback', {@numInput,9});
    
    gg.dot = uicontrol('style','pushbutton','units','normalized','position',[.10 .31 .10 .10],'string','.','callback', {@numInput,'.'});
    gg.zero = uicontrol('style','pushbutton','units','normalized','position',[.250 .31 .10 .10],'string','0','callback', {@numInput,0});
    
    gg.add = uicontrol('style','pushbutton','units','normalized','position',[.550 .70 .10 .10],'string','+','callback', {@add});
    gg.subtract = uicontrol('style','pushbutton','units','normalized','position',[.550 .570 .10 .10],'string','-','callback', {@subtract});
    gg.multiply = uicontrol('style','pushbutton','units','normalized','position',[.550 .440 .10 .10],'string','*','callback', {@multiply});
    gg.divide = uicontrol('style','pushbutton','units','normalized','position',[.550 .310 .10 .10],'string','/','callback', {@divide});
    gg.clear = uicontrol('style','pushbutton','units','normalized','position',[.40 .31 .10 .10],'string','C','callback', {@clear,0});
     
end
function [] = numInput(source,element,num)
    global gg;
    if gg.number == 0
        gg.number = num;
    else
        gg.number = strcat(num2str(gg.number), num2str(num));
    end
    gg.displayBox.String = num2str(gg.number);   
    
end

function[] = clear(source,elementn,c)
    global gg;
    Cal1();  
end

function [] = add(source,element)
   
        
end

function [] = subtract(source,element)
    
        
end

function [] = multiply(source,element)
   
        
end

function [] = divide(source,element)
   
        
end


