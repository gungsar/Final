 function [] = Calculator()
    
    close all;
    global gg; %creat gui
    %make the figure
    gg.fig = figure('numbertitle','off','name','Calculator');
    %clear and enter buttons
    gg.clear = uicontrol('style','pushbutton','units','normalized','position',[.80 .520 .10 .20],'string','C','callback', {@clear});
    gg.enter = uicontrol('style','pushbutton','units','normalized','position',[.80 .280 .10 .20],'string','Enter','callback', {@enter});
     %input and output buttons and texts indicating the button
    gg.input1 = uicontrol('style','edit','units','normalized','position',[.10 .780 .4 0.1],'string','','horizontalalignment','left','fontsize',15); 
    gg.input1str = uicontrol('style','text','units','normalized','position',[.10 .90 .3 0.05],'string','INPUT1:','horizontalalignment','left','fontsize',15); 
    gg.input2 = uicontrol('style','edit','units','normalized','position',[.10 .50 .4 0.1],'string','','horizontalalignment','left','fontsize',15);
    gg.input2str = uicontrol('style','text','units','normalized','position',[.10 .620 .3 0.05],'string','INPUT2:','horizontalalignment','left','fontsize',15); 
    gg.output = uicontrol('style','text','units','normalized','position',[.10 .20 .4 0.1],'string','','horizontalalignment','left','fontsize',15);
    gg.outputstr = uicontrol('style','text','units','normalized','position',[.10 .32 .3 0.05],'string','SOLUTION:','horizontalalignment','left','fontsize',15); 
    %all the operation buttons and they are all in the buttongroup
    operationsButtons = uibuttongroup('FontSize',12,'Position',[.55 .270 .20 .62],'SelectionChangedFcn',{@buttongroup});
    gg.add = uicontrol(operationsButtons,'style','radio','units','normalized','position',[.3 .80 .50 .10],'string','+','horizontalalignment','left','fontsize',20);
    gg.subtract = uicontrol(operationsButtons,'style','radio','units','normalized','position',[.3 .60 .50 .10],'string','-','horizontalalignment','left','fontsize',20);
    gg.multiply = uicontrol(operationsButtons,'style','radio','units','normalized','position',[.3 .40 .50 .10],'string','*','horizontalalignment','left','fontsize',20);
    gg.divide = uicontrol(operationsButtons,'style','radio','units','normalized','position',[.3 .20 .50 .10],'string','/','horizontalalignment','left','fontsize',20);
         
 end

 %call back for  the operation buttongroups to indicate selected operation
 function [] = buttongroup(source,event)
    global mat;
    if strcmp('+',event.NewValue.String)
        mat = 1;
    elseif strcmp('-',event.NewValue.String)
        mat = 2;
    elseif strcmp('*',event.NewValue.String)
        mat = 3;
    elseif strcmp('/',event.NewValue.String)
        mat = 4;
    end
        
 
 end
% call back for the enter button that make all calculation and display the answer
%using the data from button group that is stored gui element mat.
function [] = enter(~,~)
    global gg;
    global mat;
    
    if mat == 1
   
        data = str2double(gg.input1.String)+ str2double(gg.input2.String);
        gg.output.String = num2str(data);


    elseif mat == 2
    
        data = str2double(gg.input1.String) - str2double(gg.input2.String);
        gg.output.String = num2str(data);
    elseif mat == 3

        data = str2double(gg.input1.String) * str2double(gg.input2.String);
        gg.output.String = num2str(data);


    elseif mat == 4
        data = str2double(gg.input1.String) / str2double(gg.input2.String);
        gg.output.String = num2str(data);
    
    end
end
%call back for clear button that reset all the display boxes and the
%solution to blank.
function[] = clear(~,~)
    global gg;
    gg.input1.String = '' ;
    gg.input2.String = '' ;
    gg.output.String = '' ;
end