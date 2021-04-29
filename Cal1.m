
 function [] = Cal1()
    
    close all;
    global aa;
    aa.solution = 0;
    aa.fig = figure('numbertitle','off','name','Calculator');
    
    operationsButtons = uibuttongroup();
    aa.add = uicontrol(operationsButtons,'style','radio','units','normalized','position',[.65 .75 .10 .10],'string','+','horizontalalignment','left','fontsize',20,'callback', {@radio});
    aa.subtract = uicontrol(operationsButtons,'style','radio','units','normalized','position',[.65 .60 .10 .10],'string','-','horizontalalignment','left','fontsize',20,'callback', {@radio});
    aa.multiply = uicontrol(operationsButtons,'style','radio','units','normalized','position',[.65 .45 .10 .10],'string','*','horizontalalignment','left','fontsize',20,'callback', {@radio});
    aa.divide = uicontrol(operationsButtons,'style','radio','units','normalized','position',[.65 .30 .10 .10],'string','/','horizontalalignment','left','fontsize',20,'callback', {@radio});
    
    aa.clear = uicontrol('style','pushbutton','units','normalized','position',[.80 .520 .10 .20],'string','C','callback', {@clear,0});
    aa.enter = uicontrol('style','pushbutton','units','normalized','position',[.80 .280 .10 .20],'string','Enter','callback', {@enter});
     
    aa.input1 = uicontrol('style','edit','units','normalized','position',[.10 .780 .4 0.1],'horizontalalignment','left','fontsize',15); 
    aa.input1str = uicontrol('style','text','units','normalized','position',[.10 .90 .3 0.05],'string','INPUT1:','horizontalalignment','left','fontsize',15); 
    aa.input2 = uicontrol('style','edit','units','normalized','position',[.10 .50 .4 0.1],'horizontalalignment','left','fontsize',15);
    aa.input2str = uicontrol('style','text','units','normalized','position',[.10 .620 .3 0.05],'string','INPUT2:','horizontalalignment','left','fontsize',15); 
    aa.output = uicontrol('style','text','units','normalized','position',[.10 .20 .4 0.1],'string',num2str(aa.solution),'horizontalalignment','left','fontsize',15);
    aa.outputstr = uicontrol('style','text','units','normalized','position',[.10 .32 .3 0.05],'string','SOLUTION:','horizontalalignment','left','fontsize',15); 
    
end

function [] = radio(source,element)
    global aa;
    
end

function[] = clear(source,elementn,c)
    global aa;
    Cal1();  
end

function [] = enter(source,element)
    global aa;
    aa.solution = 123;
end