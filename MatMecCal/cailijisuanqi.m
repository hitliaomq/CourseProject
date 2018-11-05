function varargout = cailijisuanqi(varargin)
% CAILIJISUANQI M-file for cailijisuanqi.fig
%      CAILIJISUANQI, by itself, creates a new CAILIJISUANQI or raises the existing
%      singleton*.
%
%      H = CAILIJISUANQI returns the handle to a new CAILIJISUANQI or the handle to
%      the existing singleton*.
%
%      CAILIJISUANQI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CAILIJISUANQI.M with the given input arguments.
%
%      CAILIJISUANQI('Property','Value',...) creates a new CAILIJISUANQI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cailijisuanqi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cailijisuanqi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cailijisuanqi

% Last Modified by GUIDE v2.5 06-Jul-2012 15:22:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cailijisuanqi_OpeningFcn, ...
                   'gui_OutputFcn',  @cailijisuanqi_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before cailijisuanqi is made visible.
function cailijisuanqi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cailijisuanqi (see VARARGIN)

% Choose default command line output for cailijisuanqi
handles.output = hObject;

warning('off','MATLAB:HandleGraphics:ObsoletedProperty:JavaFrame');
javaFrame = get(hObject, 'JavaFrame');
javaFrame.setFigureIcon(javax.swing.ImageIcon('caili.jpg'));
[fengmian,map]=imread('封面.bmp');
fm=figure;
set(fm,'Menu','none','Name','','NumberTitle','off','Resize','off');
ha=axes('Position',[0 0 1 1]);
image(fengmian)
axis off
pause(2);
close;








global buttondown zuobiaodt %主界面中的全局变量 buttondown按键控制，zuobiaodt是控制界面大小的变量
global gdjzzwzdt gdzzwzdt gddwzdt zgqdwzdt zgcddt jlwzdt %各元件的位置矩阵，以拼音首字母+wzdt组成，只有直杆还有个长度位置量
global   jxk jxg yxb jizhonglidt junbuzaihedt xianxingzaihedt %作用的位置向量，以拼音首字母+wzdt组成
%global  %作用的大小向量，以拼音+dxdt组成
global zuoyongzl %作用种类
global  E u G %一些常数变量
global k k1 %计数矩阵,k为元件种类计数矩阵 ，k1为作用计数矩阵

global m  %n为作用矩阵，m为每一种作用的作用个数
%n1为集中力，n2为均布载荷，n3为线性载荷，n4为任意载荷，n5为集中力偶，n6为均布力偶，n7为线性力偶
global Iy Iz Wz Wy  Ip%截面全局变量
global yuanjianzl  %元件种类
global hk0
hk0=0;
buttondown=0;
zuobiaodt=1;%定义初始坐标的大小 
%初始化全局变量（定义初始值）
E=200*10^9;
u=0.3;
G=E/2*(1+u);
m=100;
Iz=1.0417e-006;
yuanjianzl=5;
zuoyongzl=7;
%% 计数变量
k=ones(1,yuanjianzl);
k1=ones(1,zuoyongzl);


% zuoyongzl=7;m=5;
% for a=1:zuoyongzl
%     k(a,:)=1:m;
% end
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cailijisuanqi wait for user response (see UIRESUME)
% uiwait(handles.zhujiemian);


% --- Outputs from this function are returned to the command line.
function varargout = cailijisuanqi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --------------------------------------------------------------------
function wenjianm_Callback(hObject, eventdata, handles)
% hObject    handle to wenjianm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function yuanjianm_Callback(hObject, eventdata, handles)
% hObject    handle to yuanjianm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function jiemianm_Callback(hObject, eventdata, handles)
% hObject    handle to jiemianm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function zuoyongm_Callback(hObject, eventdata, handles)
% hObject    handle to zuoyongm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --------------------------------------------------------------------
function bangzhum_Callback(hObject, eventdata, handles)
% hObject    handle to bangzhum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function guanyum_Callback(hObject, eventdata, handles)  %帮助 版权函数
% hObject    handle to guanyum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% open('关于.txt');
[guanyu,map]=imread('关于.bmp');
fm=figure;
set(fm,'Menu','none','Name','','NumberTitle','off','Resize','off');
ha=axes('Position',[0 0 1 1]);
image(guanyu)
axis off


% --------------------------------------------------------------------
function bangzhuwenjianm_Callback(hObject, eventdata, handles)
% hObject    handle to bangzhuwenjianm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
open('帮助.doc');



% --------------------------------------------------------------------
function lim_Callback(hObject, eventdata, handles)
% hObject    handle to lim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function lioum_Callback(hObject, eventdata, handles)
% hObject    handle to lioum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function jiemianxingzhuangm_Callback(hObject, eventdata, handles)
% hObject    handle to jiemianxingzhuangm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function chicunm_Callback(hObject, eventdata, handles)
% hObject    handle to chicunm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function gudingjiaozhizuom_Callback(hObject, eventdata, handles)  %固定铰支座函数
% hObject    handle to gudingjiaozhizuom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt hg %结构体，图画
global gdjzzwzdt %固定铰支座的位置矩阵
global k %计数矩阵
gudingjiaozhizuo=inputdlg('请输入固定铰支座的位置（坐标m）','固定铰支座',1,{'0'});
if isempty(gudingjiaozhizuo)
    close(figure,'gudingjiaozhizuom');
else
    hg(1)=hggroup;
    gdjzzwzdt(k(1))=str2double(gudingjiaozhizuo{1});
    if gdjzzwzdt(k(1))>zuobiaodt
        warndlg('请设置初始设置中的界面大小','警告');
    else
        r=0.03;
        s=0.03;
        %以下是绘制固定铰支座图
        hl2=line([gdjzzwzdt(k(1)),gdjzzwzdt(k(1))-r.*sin(pi./6).*zuobiaodt],...
            [0.5,0.5-r.*cos(pi./6)].*zuobiaodt,...
            'Color','black','LineWidth',1.5,'Parent',hg(1));
        hl3=line([gdjzzwzdt(k(1)),gdjzzwzdt(k(1))+r.*sin(pi./6).*zuobiaodt],...
            [0.5,0.5-r.*cos(pi./6)].*zuobiaodt,...
            'Color','black','LineWidth',1.5,'Parent',hg(1));
        hl4=line([gdjzzwzdt(k(1))-1.5.*r.*sin(pi./6).*zuobiaodt,...
            gdjzzwzdt(k(1))+1.5.*r.*sin(pi./6).*zuobiaodt],...
            [ 0.5-r.*cos(pi./6),0.5-r.*cos(pi./6)].*zuobiaodt,...
            'Color','black','LineWidth',1.5,'Parent',hg(1));
        for y=linspace(gdjzzwzdt(k(1))-1.5.*r.*sin(pi./6).*zuobiaodt,gdjzzwzdt(k(1))+1.5.*r.*sin(pi./6).*zuobiaodt,7)
            line([y,y-s.*cos(pi/6)./2.5],[0.5-0.03.*cos(pi./6),0.5-0.03.*cos(pi./6)-s.*sin(pi/6)./2.5].*zuobiaodt,'Color','black','LineWidth',1);
        end
        k(1)=k(1)+1;
    end
    
end



% --------------------------------------------------------------------
function gundongzhizuom_Callback(hObject, eventdata, handles)  %滚动支座函数
% hObject    handle to gundongzhizuom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt
global k  %计数矩阵
global gdzzwzdt  hg%滚动支座位置矩阵gundongzhizuost 为图的结构体
gundongzhizuo=inputdlg('请输入滚动支座的位置（坐标m）','滚动支座',1,{'0'});
kong=cell2mat(gundongzhizuo);
if isempty(kong)
    close(figure,'gundongzhizuom');
else
    %     gundongzhizuo1=gundongzhizuo{1};
    % if abs(gundongzhizuo1)<abs('0')||abs(gundongzhizuo1)>abs('9')
    %    errordlg('请输入数字','警告');
    gdzzwzdt(k(2))=str2double(gundongzhizuo{1});
    if gdzzwzdt(k(2))>zuobiaodt
        warndlg('请设置初始设置中的界面大小','警告');
    else
        zhizuobianchang=0.03;
        s=0.03;
        %绘制滚动支座的图
        hg(2)=hggroup;
        hl2=line([gdzzwzdt(k(2)),gdzzwzdt(k(2))-zhizuobianchang.*sin(pi./6).*zuobiaodt],...
            [0.5,0.5-zhizuobianchang.*cos(pi./6)].*zuobiaodt,...
            'Color','black','LineWidth',1.5,'Parent',hg(2));
        hl3=line([gdzzwzdt(k(2)),gdzzwzdt(k(2))+zhizuobianchang.*sin(pi./6).*zuobiaodt],...
            [0.5,0.5-zhizuobianchang.*cos(pi./6)].*zuobiaodt,...
            'Color','black','LineWidth',1.5,'Parent',hg(2));
        hl4=line([gdzzwzdt(k(2))-zhizuobianchang.*sin(pi./6).*zuobiaodt,...
            gdzzwzdt(k(2))+zhizuobianchang.*sin(pi./6).*zuobiaodt],...
            [ 0.5-zhizuobianchang.*cos(pi./6),0.5-zhizuobianchang.*cos(pi./6)].*zuobiaodt,...
            'Color','black','LineWidth',1.5,'Parent',hg(2));
        t=-pi:pi/1000:pi;
        r=0.008.*zuobiaodt;
        hc1=line((gdzzwzdt(k(2))-zhizuobianchang.*sin(pi./6).*zuobiaodt)+r.*cos(t),...
            (0.5-zhizuobianchang.*cos(pi./6)).*zuobiaodt-r+r.*sin(t),...
            'LineWidth',0.001,'Color','black','Parent',hg(2));
        hc2=line((gdzzwzdt(k(2))+zhizuobianchang.*sin(pi./6).*zuobiaodt)+r.*cos(t),...
            (0.5-zhizuobianchang.*cos(pi./6)).*zuobiaodt-r+r.*sin(t),...
            'LineWidth',0.001,'Color','black','Parent',hg(2));
        hl5=line([gdzzwzdt(k(2))-zhizuobianchang.*sin(pi./6).*zuobiaodt-2.*r,...
            gdzzwzdt(k(2))+zhizuobianchang.*sin(pi./6).*zuobiaodt+2.*r],...
            [ 0.5-zhizuobianchang.*cos(pi./6),0.5-zhizuobianchang.*cos(pi./6)].*zuobiaodt-2.*r,...
            'Color','black','LineWidth',1.5,'Parent',hg(2));
        for y=linspace(gdzzwzdt(k(2))-0.03.*sin(pi./6).*zuobiaodt-2.*r,gdzzwzdt(k(2))+0.03.*sin(pi./6).*zuobiaodt+2.*r,10)
            line([y,y-s.*cos(pi/6)./2.5],[0.5-0.03.*cos(pi./6)-0.015,0.5-0.03.*cos(pi./6)-s.*sin(pi/6)./2.5-0.015].*zuobiaodt,'Color','black','LineWidth',1);
        end
        % end
        k(2)=k(2)+1;
    end
end





% --------------------------------------------------------------------
function gudingduanm_Callback(hObject, eventdata, handles)  %固定端函数
% hObject    handle to gudingduanm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt 
global gddwzdt  hg %固定端位置矩阵
global k  %计数变量
gudingduan=inputdlg('请输入固定端的位置（坐标m）','固定端',1,{'0'});
kong=cell2mat(gudingduan);
if isempty(kong)
    close(figure,'gudingduanm');
else
    gddwzdt(k(3)) = str2double(gudingduan{1});
    if gddwzdt(k(3))>zuobiaodt
        warndlg('请设置初始设置中的界面大小','警告');
    else
        hg(3)=hggroup;
        hg(3)=line([gddwzdt(k(3)),gddwzdt(k(3))],[0.42.*zuobiaodt,0.58.*zuobiaodt],...
            'Color','black','LineWidth',2,'Parent',hg(3));
        r=0.02.*zuobiaodt;
        a=pi/6;
        for y=linspace(0.42.*zuobiaodt,0.58.*zuobiaodt,15)
            line([gddwzdt(k(3)),gddwzdt(k(3))-r.*sin(a)],[y,y-r.*cos(a)],'Color','black','LineWidth',1);
        end
        k(3)=k(3)+1;
    end
end



% --------------------------------------------------------------------
function zhiganm_Callback(hObject, eventdata, handles)   %直杆函数
% hObject    handle to zhiganm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%绘制直杆
global zuobiaodt
global zgqdwzdt zgcddt hg%位置变量矩阵
global k  %计数变量
zhigan =inputdlg({'请输入直杆的长度(m)','输入起点坐标(m)'},'直杆',1,{'1','0'});%输入起点，长度
%kong=cell2mat(zhigan);
if isempty(zhigan)
    close(figure,'zhiganm');
else
    hg(4)=hggroup;
    zgqdwzdt(k(4)) = str2double(zhigan{2});
    zgcddt(k(4)) =str2double(zhigan{1});
    if zgcddt(k(4))>zuobiaodt
        warndlg('请设置初始设置中的界面大小','警告');
    else
        zhiganst=line([zgqdwzdt(k(4)),zgqdwzdt(k(4))+zgcddt(k(4))],[zuobiaodt./2,zuobiaodt./2],...
            'Color','black','LineWidth',2,'Parent',hg(4));
        k(4)=k(4)+1;
    end

end




% --------------------------------------------------------------------
function jiaolianm_Callback(hObject, eventdata, handles)  %铰链函数
% hObject    handle to jiaolianm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%绘制铰链图
global zuobiaodt
global jlwzdt  hg %铰链位置矩阵
global k %计数矩阵
jiaolian=inputdlg('请输入铰链的位置(坐标m)','铰链',1,{'0'});
kong=cell2mat(jiaolian);
if isempty(kong)
    close(figure,'jiaolianm');
else
    hg(5)=hggroup;
    jlwzdt(k(5))=str2double(jiaolian{1});
    t=-pi:pi/1000:pi;
    r=0.01.*zuobiaodt;
    jiaolianst=line(jlwzdt(k(5))+r.*cos(t),zuobiaodt./2+r.*sin(t),...
        'LineWidth',0.001,'Color','black','Parent',hg(5));
    k(5)=k(5)+1;
end


% --------------------------------------------------------------------
function dakaim_Callback(hObject, eventdata, handles)
% hObject    handle to dakaim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global m
global E Iz   %常数
global gdjzzwzdt gdzzwzdt gddwzdt zgqdwzdt zgcddt%各个元件的位置矩阵
global jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt  %各个作用的位置矩阵
global jzldxdt jzlodxdt jbzhdxdt  %各个作用的大小 
global data

[filename1, pathname1] = uigetfile( '*.fig','请选择要打开的fig文件');
if isequal(filename1,0)
else
    kfile0=size(filename1);
    kfile=kfile0(2);
    for fk=1:kfile
        filename(fk)=filename1(fk);
        if abs(filename1(fk))==46
            break;
        end
    end
    filename20=filename(1:fk-1);
    ff='.mat';
    filename2=[filename20 ff];
    load(fullfile(pathname1, filename2));
    m=qj1;
    E=qj2;
    Iz=qj3;
    gdjzzwzdt=wz1;
    gdzzwzdt=wz2;
    gddwzdt=wz3;
    zgqdwzdt=wz4;
    zgcddt=wz5;
    jzlwzdt=zywz1;
    jzlowzdt=zywz2;
    jbzhqdwzdt=zywz3;
    jbzhzdwzdt=zywz4;
    jzldxdt=zydx1;
    jzlodxdt=zydx2;
    jbzhdxdt=zydx3;
    open(fullfile(pathname1, filename1));
end


% --------------------------------------------------------------------
function baocunm_Callback(hObject, eventdata, handles)
% hObject    handle to baocunm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global m 
global E Iz   %常数
global k k1
global gdjzzwzdt gdzzwzdt gddwzdt zgqdwzdt zgcddt%各个元件的位置矩阵
global jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt  %各个作用的位置矩阵
global jzldxdt jzlodxdt jbzhdxdt  %各个作用的大小
global data

[filename, pathname] = uiputfile('untitled');   
if isequal(filename,0)
else
   data.qj1=m;
   data.qj2=E;
   data.qj3=Iz;
   data.wz1=gdjzzwzdt;
   data.wz2=gdzzwzdt;
   data.wz3=gddwzdt;
   data.wz4=zgqdwzdt;
   data.wz5=zgcddt;
   data.zywz1=jzlwzdt;
   data.zywz2=jzlowzdt;
   data.zywz3=jbzhqdwzdt;
   data.zywz4=jbzhzdwzdt;
   data.zydx1=jzldxdt;
   data.zydx2=jzlodxdt;
   data.zydx3=jbzhdxdt;
   save(fullfile(pathname, filename),'-struct','data');
   saveas(gcf,fullfile(pathname, filename),'fig') ;
   saveas(gcf,fullfile(pathname, filename),'jpg');
end


% --------------------------------------------------------------------
function guanbim_Callback(hObject, eventdata, handles)
% hObject    handle to guanbim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear global;
close(handles.zhujiemian);


% --------------------------------------------------------------------
function juxingm_Callback(hObject, eventdata, handles)   %截面矩形函数
% hObject    handle to juxingm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)   
global jxk jxg Iz Iy Wy Wz
juxing=inputdlg({'请输入矩形的宽(mm)','请输入矩形的高(mm)'},...
    '矩形',1,{'100','50'});
if isempty(juxing)
    close(figure,'jizhongli');
else
    jxk=str2double(juxing{1});
    jxg=str2double(juxing{2});
    Iz=(jxk.*jxg.^3)./12.*10^(-12);
    Iy=(jxg.*jxk.^3)./12.*10^(-12);
    Wz=(jxk.*jxg.*2)./6.*10^(-9);
    Wy=(jxg.*jxk.*2)./6.*10^(-9);
    set(handles.juxingm,'Checked','on');
    set(handles.yuanxingm,'Checked','off');
    set(handles.gongzixingm,'Checked','off');
    set(handles.huanxingm,'Checked','off');
end



% --------------------------------------------------------------------
function yuanxingm_Callback(hObject, eventdata, handles)  %截面圆形函数
% hObject    handle to yuanxingm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yxz Iz Iy Wy Wz Ip
yuanxing=inputdlg('请输入圆的直径(mm)','圆形',1,{'50'});
if isempty(yuanxing)
    close(figure,'yuanxing');
else
    yxz=str2double(yuanxing{1});
    Ip=pi.*((yxz).^4./32).*10^(-12);
    Iz=Ip./2;
    Iy=Iz;
    Wy=Ip./(yxz./2000);
    Wz=Wy;
    set(handles.juxingm,'Checked','off');
    set(handles.yuanxingm,'Checked','on');
    set(handles.gongzixingm,'Checked','off');
    set(handles.huanxingm,'Checked','off');
   
end


% --------------------------------------------------------------------
function gongzixingm_Callback(hObject, eventdata, handles)  %截面工字型函数 数据未导入
% hObject    handle to gongzixingm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA) 
%怎样调取excel中的数据
global Iz Iy Wy Wz
gzx=inputdlg({'请输入工字型钢型号(如果型号中有a或b或c请分别用1，2,3代替)'},...
    '工字型',1,{'10'});
if isempty(gzx)
    close(figure,'gzx');
else
    gzxxh=str2double(gzx{1});
    set(handles.juxingm,'Checked','off');
    set(handles.yuanxingm,'Checked','off');
    set(handles.gongzixingm,'Checked','on');
    set(handles.huanxingm,'Checked','off');
    suohao=xlsread('工字型钢参数表.xls','sheet2');
    kkk=find(suohao(:,1)==gzxxh);
    Iz=suohao(kkk,3);
    Wz=suohao(kkk,4);
    Iy=suohao(kkk,5);
    Wy=suohao(kkk,6); 
    
   
end

% --------------------------------------------------------------------
function huanxingm_Callback(hObject, eventdata, handles)  %截面环形函数
% hObject    handle to huanxingm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Iz Iy Wy Wz Ip
huanxing=inputdlg({'请输入环的外径(mm)','请输入环的内径(mm)'},'圆形',1,{'100','50'});
if isempty(huanxing)
    close(figure,'huanxing');
else
    hxw=str2double(huanxing{1});
    hxn=str2double(huanxing{2});
    Ip=pi./32.*(hxw.^4-hxn.^4).*10^(-12);
    Iz=Ip./2;
    Iy=Iz;
    Wy=Ip./(hxw./2000);
    Wz=Wy;
    set(handles.juxingm,'Checked','off');
    set(handles.yuanxingm,'Checked','off');
    set(handles.gongzixingm,'Checked','off');
    set(handles.huanxingm,'Checked','on');
   
    
end






% --------------------------------------------------------------------
function jizhonglim_Callback(hObject, eventdata, handles)  %集中力函数
% hObject    handle to jizhonglim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt   hg1
global jzlwzdt jzldxdt %集中力位置和大小数据矩阵
global k1  %计数矩阵
F='F=';
danwei='kN';
jizhongli=inputdlg({'请输入集中力的位置(坐标m)','请输入集中力的大小(kN)'},...
    '集中力',1,{'0','1'});
if isempty(jizhongli)
    close(figure,'jizhongli');
else
    hg1(1)=hggroup('ButtonDownFcn',@liBDF);
    jzlwzdt(k1(1))=str2double(jizhongli{1});
    jzldxdt(k1(1))=1000.*str2double(jizhongli{2});
    %以下是绘制均布载荷图像用line自制箭头
    hold on;
    l=line([1,1].*jzlwzdt(k1(1)),[0.5+0.08*(jzldxdt(k1(1))./1000)/abs(jzldxdt(k1(1))./1000),0.5].*zuobiaodt,...
        'Color','black','LineWidth',1.5,'Parent',hg1(1));
    r=0.01*zuobiaodt;
    a=pi/6;
    a1=line([jzlwzdt(k1(1)),jzlwzdt(k1(1))-r*sin(a)],...
        [0.5*zuobiaodt,0.5*zuobiaodt+r*(jzldxdt(k1(1))./1000)/abs(jzldxdt(k1(1))./1000)*cos(a)],...
        'Color','black','LineWidth',1.5,'Parent',hg1(1));
    a2=line([jzlwzdt(k1(1)),jzlwzdt(k1(1))+r*sin(a)],...
        [0.5*zuobiaodt,0.5*zuobiaodt+r*(jzldxdt(k1(1))./1000)/abs(jzldxdt(k1(1))./1000)*cos(a)],...
        'Color','black','LineWidth',1.5,'Parent',hg1(1));
    text(jzlwzdt(k1(1)),(0.5+0.1*(jzldxdt(k1(1))./1000)/abs(jzldxdt(k1(1))./1000)).*zuobiaodt,[F jizhongli{2} danwei]);
    k1(1)=k1(1)+1;
end
 
function liBDF(hObject,evendata,handles)
global buttondown hg1
switch buttondown
    case 1
        set(hg1(1),'HitTest','on','Selected','on');
    otherwise
end

    



% --------------------------------------------------------------------
function junbuzaihem_Callback(hObject, eventdata, handles)   %均布载荷函数
% hObject    handle to junbuzaihem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt  hg1
global jbzhqdwzdt jbzhzdwzdt jbzhdxdt %均布载荷作用矩阵包括大小，起点，终点
global k1 %计数矩阵
q='q=';
danwei='kN/m';
junbuzaihe=inputdlg({'请输入均布载荷作用的起点(坐标m)','请输入均布载荷作用的终点(坐标m)','请输入均布载荷的大小(kN/m)'},...
    '均布载荷',1,{'0','1','1'});
if isempty(junbuzaihe)
    close(figure,'junbuzaihe');
else
    hg1(2)=hggroup;
    jbzhqdwzdt(k1(2))=str2double(junbuzaihe{1});
    jbzhzdwzdt(k1(2))=str2double(junbuzaihe{2});
    jbzhdxdt(k1(2))  =1000.*str2double(junbuzaihe{3});
    %以下是绘制均布载荷图像
    hold on;
    line([jbzhqdwzdt(k1(2)),jbzhzdwzdt(k1(2))],...
        [1,1].*(0.5+(jbzhdxdt(k1(2))./1000)/abs(jbzhdxdt(k1(2))./1000)*0.05)*zuobiaodt,...
        'Color','black','LineWidth',1.5,'Parent',hg1(2));
    for t=linspace(jbzhqdwzdt(k1(2)),jbzhzdwzdt(k1(2)),20*(jbzhzdwzdt(k1(2))-jbzhqdwzdt(k1(2)))./zuobiaodt )
        l=line([t,t],[0.5+0.05*jbzhdxdt(k1(2))/abs(jbzhdxdt(k1(2))),0.5].*zuobiaodt,...
            'Color','black','LineWidth',1.5,'Parent',hg1(2));
        r=0.01*zuobiaodt;
        a=pi/6;
        b1=line([t,t-r*sin(a)],[0.5*zuobiaodt,0.5*zuobiaodt+r*jbzhdxdt(k1(2))/abs(jbzhdxdt(k1(2)))*cos(a)],...
            'Color','black','LineWidth',1.5,'Parent',hg1(2));
        b1=line([t,t+r*sin(a)],[0.5*zuobiaodt,0.5*zuobiaodt+r*jbzhdxdt(k1(2))/abs(jbzhdxdt(k1(2)))*cos(a)],...
            'Color','black','LineWidth',1.5,'Parent',hg1(2));
    end
    text((jbzhqdwzdt(k1(2))+jbzhzdwzdt(k1(2)))/2,(0.5+(jbzhdxdt(k1(2))./1000)/abs(jbzhdxdt(k1(2))./1000)*0.1)*zuobiaodt,[q junbuzaihe{3} danwei]);
    k1(2)=k1(2)+1;
end


% --------------------------------------------------------------------
function xianxingzaihem_Callback(hObject, eventdata, handles)  %线性载荷函数
% hObject    handle to xianxingzaihem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt  hg1
global xxzhqdwzdt xxzhzdwzdt xxzhqddxdt xxzhzddxdt  %线性载荷的属性
global k1  %计数矩阵
xianxingzaihe=inputdlg({'请输入线性载荷作用的起点(坐标m)','请输入线性载荷作用的终点(坐标m)',...
    '请输入线性载荷起点的大小(kN/m)','请输入线性载荷终点的大小(kN/m)'},...
    '线性载荷',1,{'0','1','0','1'});
if isempty(xianxingzaihe)
    close(figure,'xianxingzaihe');
else
    hg1(3)=hggroup;
    xxzhqdwzdt(k1(3))=str2double(xianxingzaihe{1});
    xxzhzdwzdt(k1(3))=str2double(xianxingzaihe{2});
    xxzhqddxdt(k1(3))=str2double(xianxingzaihe{3});
    xxzhzddxdt(k1(3))=str2double(xianxingzaihe{4});
    %以下是绘制线性载荷的图像
    xianxingzaihea.l=line([xxzhqdwzdt(k1(3)),xxzhzdwzdt(k1(3))],...
        zuobiaodt.*(0.5+0.08.*[xxzhqddxdt(k1(3)),xxzhzddxdt(k1(3))]),...
        'Color','black','LineWidth',1,'Parent',hg1(3));
    for t=linspace(xxzhqdwzdt(k1(3)),xxzhzdwzdt(k1(3)),20*(xxzhzdwzdt(k1(3))-xxzhqdwzdt(k1(3))))
        arrow.l=line([t,t],...
            [0.5+0.08.*(xxzhqddxdt(k1(3))+(t-xxzhqdwzdt(k1(3))).*(xxzhzddxdt(k1(3))-xxzhqddxdt(k1(3)))./(xxzhzdwzdt(k1(3))-xxzhqdwzdt(k1(3)))),0.5].*zuobiaodt,...
            'Color','black','LineWidth',1,'Parent',hg1(3));
        r=0.01*zuobiaodt;
        a=pi/6;
        arrow.a=line([t,t-r*sin(a)],[0.5*zuobiaodt,0.5*zuobiaodt+r*cos(a)],...
            'Color','black','LineWidth',1,'Parent',hg1(3));
        arrow.a=line([t,t+r*sin(a)],[0.5*zuobiaodt,0.5*zuobiaodt+r*cos(a)],...
            'Color','black','LineWidth',1,'Parent',hg1(3));
    end
    k1(3)=k1(3)+1;
end




% --------------------------------------------------------------------
function jizhonglioum_Callback(hObject, eventdata, handles)  %集中力偶函数
% hObject    handle to jizhonglioum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt hg1
global jzlowzdt jzlodxdt  %集中力偶的属性向量，大小和位置
global k1 %计数矩阵
M='M=';
danwei='kN/m';
jizhongliou=inputdlg({'请输入集中力偶的位置(坐标m)','请输入集中力偶的大小(kN.m)'},...
    '集中力偶',1,{'0','1'});%顺时针为正
if isempty(jizhongliou)
    close(figure,'jizhongliou');
else
    hg1(4)=hggroup;
    jzlowzdt(k1(4))=str2double(jizhongliou{1});
    jzlodxdt(k1(4))=1000.*str2double(jizhongliou{2});
    %以下是绘制均布载荷图像用line自制箭头
    hold on;
    arrow.l1=line([1,1].*jzlowzdt(k1(4)),...
        [0.55,0.45].*zuobiaodt,...
        'Color','black','LineWidth',1.5,'Parent',hg1(4));%箭头竖线
    arrow.l2=line([jzlowzdt(k1(4)),jzlowzdt(k1(4))+0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))],[0.55,0.55].*zuobiaodt,...
        'Color','black','LineWidth',1.5,'Parent',hg1(4));
    arrow.l3=line([jzlowzdt(k1(4)),jzlowzdt(k1(4))-0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))],[0.45,0.45].*zuobiaodt,...
        'Color','black','LineWidth',1.5,'Parent',hg1(4));%箭头横线
    %以下绘制箭头
    r=0.01*zuobiaodt;
    a=pi/6;
    %上半部分的箭头
    arrow.a=line([jzlowzdt(k1(4))+0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4)))),...
        jzlowzdt(k1(4))+0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))-r.*cos(a).*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))],...
        [0.55*zuobiaodt,0.55*zuobiaodt+r*sin(a)],...
        'Color','black','LineWidth',1.5,'Parent',hg1(4));
    arrow.a=line([jzlowzdt(k1(4))+0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4)))),...
        jzlowzdt(k1(4))+0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))-r.*cos(a).*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))],...
        [0.55*zuobiaodt,0.55*zuobiaodt-r*sin(a)],...
        'Color','black','LineWidth',1.5,'Parent',hg1(4));
    %下半部分的箭头
    arrow.a=line([jzlowzdt(k1(4))-0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4)))),...
        jzlowzdt(k1(4))-0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))+r.*cos(a).*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))],...
        [0.45*zuobiaodt,0.45*zuobiaodt+r*sin(a)],...
        'Color','black','LineWidth',1.5,'Parent',hg1(4));
    arrow.a=line([jzlowzdt(k1(4))-0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4)))),...
        jzlowzdt(k1(4))-0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))+r.*cos(a).*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))],...
        [0.45*zuobiaodt,0.45*zuobiaodt-r*sin(a)],...
        'Color','black','LineWidth',1.5,'Parent',hg1(4));
    text(jzlowzdt(k1(4)),0.6.*zuobiaodt,[M jizhongliou{2} danwei]);
    k1(4)=k1(4)+1;
end




% --- Executes during object creation, after setting all properties.
function plotarea1_CreateFcn(hObject, eventdata, handles)   %包含右键清除函数
% hObject    handle to plotarea1 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
xlabel('坐标轴宽度/m');
hyjcd=uicontextmenu;
uimenu(hyjcd,'Label','清除全部','CallBack',@qingchu_CallBack);
uimenu(hyjcd,'Label','清除构件','CallBack',@qingchu_CallBack1);
uimenu(hyjcd,'Label','清除文本','CallBack',@qingchu_CallBack2);


set(gca,'uicontextmenu',hyjcd);




function qingchu_CallBack(hObject, eventdata, handles)
qingchu_CallBack1
qingchu_CallBack2


function qingchu_CallBack1(hObject, eventdata, handles)
%右键清除函数的回调函数
global zuobiaodt
qcdx=findall(gca,'Type','line');
qcbz=findall(gca,'Type','text');
delete(qcdx);
delete(qcbz);
zuobiao2=zuobiaodt;
clear global;

global buttondown zuobiaodt %主界面中的全局变量 buttondown按键控制，zuobiaodt是控制界面大小的变量
global gdjzzwzdt gdzzwzdt gddwzdt zgqdwzdt zgcddt jlwzdt %各元件的位置矩阵，以拼音首字母+wzdt组成，只有直杆还有个长度位置量
global   jxk jxg yxb jizhonglidt junbuzaihedt xianxingzaihedt %作用的位置向量，以拼音首字母+wzdt组成
%global  %作用的大小向量，以拼音+dxdt组成
global zuoyongzl %作用种类
global  E u G %一些常数变量
global k k1 %计数矩阵,k为元件种类计数矩阵 ，k1为作用计数矩阵

global m  %n为作用矩阵，m为每一种作用的作用个数
%n1为集中力，n2为均布载荷，n3为线性载荷，n4为任意载荷，n5为集中力偶，n6为均布力偶，n7为线性力偶
global Iy Iz Wz Wy  Ip%截面全局变量
global yuanjianzl  %元件种类
global hk0
hk0=0;
buttondown=0;
zuobiaodt=zuobiao2;%定义初始坐标的大小
%初始化全局变量（定义初始值）
E=200*10^9;
u=0.3;
G=E/2*(1+u);
m=100;
Iz=1.0417e-006;
yuanjianzl=5;
zuoyongzl=7;
%% 计数变量
k=ones(1,yuanjianzl);
k1=ones(1,zuoyongzl);
@cailijisuanqi_OpeningFcn;

function qingchu_CallBack2(hObject, eventdata, handles)
qbtxt=findobj('Style','text');
set(qbtxt,'Visible','off');





% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function zhujiemian_WindowButtonDownFcn(hObject, eventdata, handles)  %判断主界面的按键类型
% hObject    handle to zhujiemian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%鼠标响应
global buttondown pos
if strcmp(get(gcf,'SelectionType'),'normal')  %判断是否是按下左键
    buttondown =1;
     pos=get(handles.plotarea1,'Currentpoint');%获得此时的坐标
elseif strcmp(get(gcf,'SelectionType'),'alt')%判断是否是按下右键
    buttondown=2;
elseif strcmp(get(gcf,'SelectionType'),'open')%判断是否是双击左键
    buttondown=3;
else strcmp(get(gcf,'SelectionType'),'extend')%判断是否是按下中键
    buttondown=4
end


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function zhujiemian_WindowButtonUpFcn(hObject, eventdata, handles)
% hObject    handle to zhujiemian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global buttondown
buttondown=0;


% --- Executes on mouse press over axes background.
function plotarea1_ButtonDownFcn(hObject, eventdata, handles)  %界面大小设置函数
% hObject    handle to plotarea1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global buttondown zuobiaodt
switch buttondown
    case 3
        zuobiao=inputdlg('请根据所绘图形大小输入所需坐标的宽度(m)','坐标宽度(m)',1,{'2'});
        kong=cell2mat(zuobiao);
        if isempty(kong)
            close(figure);
        else
            zuobiaodt=str2double(zuobiao{1});
            set(handles.plotarea1,'XLim',[-0.1.*zuobiaodt,1.1.*zuobiaodt],'YLim',[0,zuobiaodt]);
        end
end


% --- Executes during object creation, after setting all properties.
function zhujiemian_CreateFcn(hObject, eventdata, handles)  %封面函数
% hObject    handle to zhujiemian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called






% --- Executes on mouse press over figure background.
function zhujiemian_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to zhujiemian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





% --------------------------------------------------------------------
function chushijiemian_Callback(hObject, eventdata, handles)  %截面大小函数
% hObject    handle to chushijiemian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt
zuobiao=inputdlg('请根据所绘图形大小输入所需坐标的宽度(m)','坐标宽度(m)',1,{'2'});
%kong=cell2mat(zuobiao);
if isempty(zuobiao)
    close(figure);
else
    zuobiao1=zuobiao{1};
    % if abs(zuobiao1)<abs('0')||abs(zuobiao1)>abs('9')
    %    errordlg('请输入数字','警告');
    %  else
    zuobiaodt=str2double(zuobiao1);
    set(handles.plotarea1,'XLim',[-0.1.*zuobiaodt,1.1.*zuobiaodt],'YLim',[0,zuobiaodt]);
    % end
end



% --------------------------------------------------------------------
function E_Callback(hObject, eventdata, handles)  %弹性模量函数
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global E
txml=inputdlg({'请输入弹性模量值(GPa)'},...
    '弹性模量值E',1,{'200'});
if isempty(txml)
    close(figure,'txml');
else
   E=str2double(txml{1}).*10.^9;

end


% --------------------------------------------------------------------
function u_Callback(hObject, eventdata, handles)  %泊松比
% hObject    handle to u (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global u
bsb=inputdlg({'请输入泊松比'},...
    '泊松比u',1,{'0.3'});
if isempty(bsb)
    close(figure,'bsb');
else
   u=str2double(bsb{1});
end


% --- Executes on button press in jisuanpb.
function jisuanpb_Callback(hObject, eventdata, handles)   %计算函数
% hObject    handle to jisuanpb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% 计算单位力产生的挠度中用到的全局变量
% close all;
global m
global E Iz   %常数
global yuanjianwzdt  %位置矩阵
global gdjzzwzdt gdzzwzdt gddwzdt jlwzdt zgqdwzdt zgcddt%各个元件的位置矩阵
global Xxiangdui danweilind

%% 在计算各个作用的时候需要的全局变量
global zuoyongwzdt  %作用位置矩阵
global jzlwzdt jbzhqdwzdt jbzhzdwzdt  jzlowzdt %各个作用的位置矩阵
global zuoyongnd
global jzldxdt jzlodxdt jbzhdxdt  %各个作用的大小
global zuoyongndsum
global Fn
global zuobiaodt

fn='FN=';
MM='M=';
N='N';
M='N.m';

try 
    close 剪力图 弯矩图 转角图 挠度图
end


%% 求单位力在各个支座位置产生的挠度
yuanjianwzdt=[gdjzzwzdt gdzzwzdt gddwzdt];
ksum1=size(yuanjianwzdt);  %计算总的支座数
ksum=ksum1(2);
[yuanjianwzstdt kst]=sort(yuanjianwzdt);  %kst为保留的原来元素的索引



%% 计算每个作用在每个支座处产生的挠度
zuoyongndsum=0;
jbzhcddt=jbzhzdwzdt-jbzhqdwzdt;
zuoyongwzdt=[jzlwzdt jzlowzdt (jbzhqdwzdt+jbzhcddt./2)]; %注意均布载荷的位置使用了其中点的坐标
zuoyongdxdt=[jzldxdt jzlodxdt jbzhdxdt];
ksum2=size(zuoyongwzdt);
kzysum=ksum2(2);
c11=size(jzlwzdt);
c12=size(jzlowzdt);
c13=size(jbzhqdwzdt);
c1=c11(2);  %集中力的个数
c2=c12(2);   %集中力偶个数
c3=c13(2);   %均布载荷个数
n0=0;  %用于统计均布载荷的个数


if isempty(gddwzdt)    %没有固定端时候执行的语句（即采用简支梁作为基本结构）
    Xxiangdui=yuanjianwzstdt(2:(ksum-1))-yuanjianwzstdt(1);  %计算出每一个支座相对于第一个支座的距离
    ZYxiangdui=zuoyongwzdt(1:kzysum)-yuanjianwzstdt(1);  %各个作用相对简支梁的第一个支座的位置
    l=zgcddt;
%     l=yuanjianwzstdt(ksum)-yuanjianwzstdt(1);
    
    %% 在基本结构为简支梁的时候计算单位力在各个支座处产生的挠度
    for kX=1:(ksum-2)  %第kX个单位力
        a=Xxiangdui(kX);
        b=l-a;
        for t=1:(ksum-2)   %在地t个支座产生的挠度
            if t<=kX
                danweilind(kX,t)=-b.*Xxiangdui(t)./(6*E*Iz.*l)*...
                    (l.^2-(Xxiangdui(t)).^2-b.^2);
                
            else
                danweilind(kX,t)=-b./(6.*E.*Iz.*l).*(l./b.*...
                    (Xxiangdui(t)-a).^3+(l.^2 -b.^2).*Xxiangdui(t)-Xxiangdui(t).^3);
            end
        end
    end
    
    %% 基本结构为简支梁的时候计算各个作用在各个支座处产生的挠度
    zuoyongndsum=zeros(1,ksum-2);
    zuoyongnd=zeros(kzysum,ksum-2);
    for kX=1:kzysum  %第kX个作用
        a=ZYxiangdui(kX);
        b=l-a;
        for t=1:(ksum-2)  %在第t个支座处产生的挠度
            if kX<=c1  %即该作用为集中力
                if Xxiangdui(t)<=ZYxiangdui(kX)
                    zuoyongnd(kX,t)=-zuoyongdxdt(kX).*b.*Xxiangdui(t)./(6*E*Iz.*l)*...
                        (l.^2-(Xxiangdui(t)).^2-b.^2);
                else
                    zuoyongnd(kX,t)=-zuoyongdxdt(kX).*b./(6.*E.*Iz.*l).*(l./b.*...
                        (Xxiangdui(t)-a).^3+(l.^2 -b.^2).*Xxiangdui(t)-Xxiangdui(t).^3);
                end
            elseif kX>c1&&kX<=c1+c2  %即该作用为集中力偶
                if Xxiangdui(t)<=ZYxiangdui(kX)
                    zuoyongnd(kX,t)=zuoyongdxdt(kX).*Xxiangdui(t)./(6*E.*Iz.*l).*...
                        (l.^2-3*b.^2-(Xxiangdui(t)).^2);
                else
                    zuoyongnd(kX,t)=zuoyongdxdt(kX)./(6*E.*Iz.*l).*...
                        (-(Xxiangdui(t)).^3+3*l.*(Xxiangdui(t)-a).^2+Xxiangdui(t).*(l^2-3*b^2));
                end
                
              
            else  %即该作用为均布载荷   d为各个系数
                %约束为均布载荷中间不能有支座
                tt=kX-c1-c2;
                q=jbzhdxdt(tt);
                d=jbzhcddt(tt);
                fa=q.*d.*(b)./l;
                fb=q.*d.*a./l;
                xsc=[(a+d/2) -b+d/2;1 1];
                bb=[fb./6.*(b-d/2).^3+q/24.*d.^4-fa/6.*(a+d/2).^3 q/6.*d.^3-fa/2.*(a+d/2).^2-fb/2.*(b-d/2).^2]';
                cc=inv(xsc)*bb;
                if Xxiangdui(t)<=a %即该支座在均布载荷的左边
                    zuoyongnd(kX,t)=(1/6.*fa.*Xxiangdui(t).^3+cc(1).*Xxiangdui(t))./(E.*Iz);     
                else   %该支座在均布载荷的右边
                   zuoyongnd(kX,t)=(1/6.*fb.*(l-Xxiangdui(t)).^3+cc(2).*(l-Xxiangdui(t)))./(E.*Iz); 
                end

            end
        end
        zuoyongndsum=zuoyongnd(kX,:)+zuoyongndsum;   %即每个作用在各个支座处产生的挠度和，即得到所需的一个矩阵
    end
    
    %% 下面是解线性方程组来解出各个支座的作用反力 
    danweilindinv=inv(danweilind);   %求单位力在各个支座产生的挠度的系数矩阵danweilind的逆
    Fn=-danweilindinv*(zuoyongndsum');  %求出各个支座的支座反力即Fn 对应的角标为元件的从小到大排序
    
    %% 下面开始计算各个要求的量 剪力（jianli），弯矩（wanju），挠度（naodu），转角（zhuanjiao）等
    jzlwzdt1=jzlwzdt-yuanjianwzstdt(1);   %各个作用相对简支梁第一个支座的位置
    jzlowzdt1=jzlowzdt-yuanjianwzstdt(1);
    jbzhqdwzdt1=jbzhqdwzdt-yuanjianwzstdt(1);
    jbzhzdwzdt1=jbzhzdwzdt-yuanjianwzstdt(1);
    
    % 下面计算两端两个支座的支座反力 
    %FA是左端的支座反力,FB是右端的支座反力
    if isempty(Fn)   %判断是否是静不定问题
        if isempty(jzldxdt)  %判断是否有集中力
            if isempty(jzlodxdt)  %判断时候有集中力偶
                if isempty(jbzhdxdt)  %判断是否有均布载荷
                else
                    FB=-sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)./l;
                    FA=-sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt)./l;
                end
            else
                if isempty(jbzhdxdt)
                    FB=-sum(jzlodxdt)./l;
                    FA=sum(jzlodxdt)./l;
                else
                    FB=-(sum(jzlodxdt)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt))./l;
                    FA=-(-sum(jzlodxdt)+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt))./l;
                end
            end
        else
            if isempty(jzlodxdt)
                if isempty(jbzhdxdt)
                    FB=-sum(jzldxdt.*jzlwzdt1)./l;
                    FA=-sum(jzldxdt.*(l-jzlwzdt1))./l;
                else
                    FB=-(sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt))./l;
                    FA=-(sum(jzldxdt.*(l-jzlwzdt1))+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt))./l;
                end
            else
                if isempty(jbzhdxdt)
                    FB=-(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1))./l;
                    FA=-(-sum(jzlodxdt)+sum(jzldxdt.*(l-jzlwzdt1)))./l;
                else
                    FB=-(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt))./l;
                    FA=-(-sum(jzlodxdt)+sum(jzldxdt.*(l-jzlwzdt1)+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt)))./l;
                end
            end
        end
    else
        if isempty(jzldxdt)
            if isempty(jzlodxdt)
                if isempty(jbzhdxdt)
                    FB=-sum(Fn'.*Xxiangdui)./l;
                    FA=-sum(Fn'.*(l-Xxiangdui))./l;
                else
                    FB=-(sum(Fn'.*Xxiangdui)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt))./l;
                    FA=-(sum(Fn'.*(l-Xxiangdui))+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt))./l;
                end
            else
                if isempty(jbzhdxdt)
                    FB=-(sum(Fn'.*Xxiangdui)+sum(jzlodxdt))./l;
                    FA=-(sum(Fn'.*(l-Xxiangdui))-sum(jzlodxdt))./l;
                else
                    FB=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)))./l;
                    FA=-(sum(Fn'.*(l-Xxiangdui))-(sum(jzlodxdt)+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt)))./l;
                end
            end
        else
            if isempty(jzlodxdt)
                if isempty(jbzhdxdt)
                    FB=-(sum(Fn'.*Xxiangdui)+sum(jzldxdt.*jzlwzdt1))./l;
                    FA=-(sum(Fn'.*(l-Xxiangdui))+sum(jzldxdt.*(l-jzlwzdt1)))./l;
                else
                    FB=-(sum(Fn'.*Xxiangdui)+(sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)))./l;
                    FA=-(sum(Fn'.*(l-Xxiangdui))+(sum(jzldxdt.*(l-jzlwzdt))+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt)))./l;
                end
            else
                if isempty(jbzhdxdt)
                    FB=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)))./l;
                    FA=-(sum(Fn'.*(l-Xxiangdui))-(sum(jzlodxdt)+sum(jzldxdt.*(l-jzlwzdt1))))./l;
                else
                    FB=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)))./l;
                    FA=-(sum(Fn'.*(l-Xxiangdui))-(sum(jzlodxdt)+sum(jzldxdt.*(l-jzlwzdt1)+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt))))./l;
                end
            end
        end
    end
    FFA=num2str(FA);
    FFB=num2str(FB);
    text(yuanjianwzstdt(1),0.45*zuobiaodt,[fn FFA N]);
    text(yuanjianwzstdt(ksum),0.44*zuobiaodt,[fn FFB N]);

    
    
    zongwzdt1=[yuanjianwzstdt(1:ksum) jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt];  %均布载荷有起点和终点
    zongdxdt1=[FA Fn' FB jzldxdt jzlodxdt jbzhdxdt];  %zongdxdt 和 zongwzdt1的下角标一一对应
    zongzydxdt1=[Fn' jzldxdt jzlodxdt jbzhdxdt];
    zongzywzdt =[yuanjianwzstdt(2:ksum-1) jzlwzdt jzlowzdt jbzhqdwzdt];
    zongzydxdt=size(zongzydxdt1);
    kzongzydxdt=zongzydxdt(2);
    cc=size(Fn);
    c4=cc(1);
    
    for kFn=1:c4
        FFn=num2str(Fn(kFn));
        text(zongwzdt1(kFn+1),0.44*zuobiaodt,[fn FFn N]);
    end
    
    [zongwzdt,zongst]=sort(zongwzdt1);
    kzongsum1=size(zongwzdt);
    kzongsum=kzongsum1(2);    %简化为静定问题的总的作用个数
    a=zongzywzdt-yuanjianwzstdt(1);
    b=l-a;
    %判断每一个作用的种类 
    
    %% 计算剪力   不要去判断载荷中间的支座，可以约束为不能那样输入
     v=zeros(m+1,1);
     theta=zeros(m+1,1);
    for kX=1:kzongsum-1
        x=linspace(zongwzdt(kX),zongwzdt(kX+1),m+1);  %分别计算每一个小段
        h=(zongwzdt(kX+1)-zongwzdt(kX))./m;
        s0=0;  %剪力初值
        wanju0=0;  %弯矩初值
        for t=1:kX  %计算该小段前面的力之和 
            if zongst(t)<=(ksum+c1)   %判断第t个作用的种类  即为集中力
                s0=s0+zongdxdt1(zongst(t));
                wanju0=wanju0+zongdxdt1(zongst(t)).*(x-zongwzdt1(zongst(t)));
            elseif zongst(t)<=(ksum+c1+c2)&&zongst(t)>(ksum+c1)  %此时为集中力偶
                wanju0=wanju0-zongdxdt1(zongst(t));
                %力偶不改变剪力的大小
            else     %此时为均布载荷 
                if zongst(t)>(ksum+c1+c2+c3)  %该点为均布载荷的终点
                    %也就是，对于均布载荷只计算一次  省略s0=s0,wanju0=wanju0
                else
                    if t==kX
                        %省略s0=s0 wanju0=wanju0
                    else
                        s0=s0+zongdxdt1(zongst(t)).*jbzhcddt(zongst(t)-ksum-c1-c2);
                        wanju0=wanju0+(zongdxdt1(zongst(t)).*(jbzhcddt(zongst(t)-ksum-c1-c2)).*(x-(zongwzdt1(zongst(t))+jbzhcddt(zongst(t)-ksum-c1-c2)/2)));
                    end
            
                end

            end
        end
        
        %该段的剪力弯矩
        if zongst(kX)>(ksum+c1+c2)&&zongst(kX)<=(ksum+c1+c2+c3)  %判断是不是均布载荷
            jianli=(zongdxdt1(zongst(kX)).*(x-zongwzdt(kX))+s0).*ones(size(x));
            wanju=-wanju0-(zongdxdt1(zongst(kX))*((x-zongwzdt(kX)).^2)/2);
        elseif zongst(kX)>(ksum+c1+c2+c3)
            jianli=s0.*ones(size(x));
            wanju=-wanju0;
        else
            a0=size(x);
            jianli=s0.*ones(1,a0(2));
            wanju=-wanju0;
        end
            jianliopt(kX,:)=jianli;
            jianliwzopt(kX,:)=x;
            wanjuopt(kX,:)=wanju;
            wanjuwzopt(kX,:)=x;
        %% 下面使计算挠度
        kk=size(x);
        theta=zeros(1,kk(2)); 
        vsum=zeros(1,kk(2));
        %%
        for t=1:kzongzydxdt
            if t<=c4+c1  %c1为集中力的个数 c4为支座反力的个数
                if x<=zongzywzdt(t)  %t处为集中力
                    vsum=vsum-zongzydxdt1(t).*b(t).*x./(6*E*Iz.*l).*...
                        (l.^2-(x).^2-(b(t)).^2);
                    theta=theta-zongzydxdt1(t).*b(t)./(6*E*Iz.*l).*...
                        (l.^2-3.*(x).^2-(b(t)).^2);
                else
                    vsum=vsum-zongzydxdt1(t).*b(t)./(6.*E.*Iz.*l).*(l./b(t).*...
                        (x-a(t)).^3+(l.^2 -(b(t)).^2).*x-x.^3);  
                    theta=theta-zongzydxdt1(t).*b(t)./(6.*E.*Iz.*l).*(l./b(t).*...
                        3.*(x-a(t)).^2+(l.^2 -(b(t)).^2)-3.*x.^2);
                end
            elseif t>c4+c1&&t<=c4+c1+c2  %t为集中力偶  
                if x<=zongzywzdt(t)
                    vsum=vsum+zongzydxdt1(t).*x./(6*E.*Iz.*l).*...
                        (l.^2-3*(b(t)).^2-(x).^2);
                    theta=theta+zongzydxdt1(t)./(6*E.*Iz.*l).*(l.^2-3*b(t).^2-3.*(x).^2);
                else
                    vsum=vsum+zongzydxdt1(t)./(6*E.*Iz.*l).*...
                        (-(x).^3+3.*l.*(x-a(t)).^2+(l^2-3.*(b(t)).^2).*x);
                    theta=theta+zongzydxdt1(t)./(6*E.*Iz.*l).*... 
                        (-3.*(x).^2+6*l.*(x-a(t))+(l^2-3*b(t)^2));
                end
            elseif t>c4+c1+c2&&t<=c4+c1+c2+c3%此处为均布载荷  
                tt=zongst(t)-c4-c1-c2;
                q=zongzydxdt1(t);
                d=jbzhcddt(t-c4-c1-c2);
                fa=q.*d.*(b(t)-d/2)./l;
                fb=q.*d.*(a(t)+d/2)./l;
                xsc=[(a(t)+d) -b(t)+d;1 1];
                bb=[fb./6.*(b(t)-d).^3+q/24.*d.^4-fa/6.*(a(t)+d).^3 q/6.*d.^3-fa/2.*(a(t)+d).^2-fb/2.*(b(t)-d).^2]';
                cc=inv(xsc)*bb;
                if x<=zongzywzdt(t)  %即该支座在均布载荷的左边
                    vsum=vsum+(1/6.*fa.*x.^3+cc(1).*x)./(E.*Iz);     
                    theta=theta+(1./2.*fa.*x.^2+cc(1))./(E.*Iz);
                elseif x(1)>=zongzywzdt(t)&&x(m+1)<=(zongzywzdt(t)+jbzhcddt(t-c4-c1-c2))&&x(1)~=x(m+1)  %该支座在均布载荷之间
                    vsum=vsum+(1/6.*fa.*x.^3+cc(1).*x-q./24.*(x-a(t)).^4)./(E.*Iz);
                    theta=theta+(1./2.*fa.*x.^2+cc(1)-q./6.*(x-a(t)).^3)./(E.*Iz);
                else   %该支座在均布载荷的右边
                   vsum=vsum+(1/6.*fb.*(l-x).^3+cc(2).*(l-x))./(E.*Iz); 
                   theta=theta-(1/2.*fb.*(l-x).^2+cc(2))./(E.*Iz);
                end
            else
            end
            
        end
        vsumopt(kX,:)=vsum;
        vsumwzopt(kX,:)=x;
        thetaopt(kX,:)=theta;
        thetawzopt(kX,:)=x;
        
        
        
        %% 下面是绘图
        kl1=fix(51./l.*(zongwzdt(kX+1)-zongwzdt(kX)));
        kl2=linspace(zongwzdt(kX),zongwzdt(kX+1),kl1);
        kl=zeros(1,kl1);
        for kl3=1:kl1
            [xsort2 kl4]=sort(abs(x(:)-kl2(kl3)));
            kl(kl3)=kl4(1);
        end
        hf1=figure(1);
        hf2=figure(2);
        hf3=figure(3);
        hf4=figure(4);
        set(hf1,'NumberTitle','off','Name','剪力图','Menu','none','ToolBar','figure');
        set(hf2,'NumberTitle','off','Name','弯矩图','Menu','none','ToolBar','figure');
        set(hf3,'NumberTitle','off','Name','转角图','Menu','none','ToolBar','figure');
        set(hf4,'NumberTitle','off','Name','挠度图','Menu','none','ToolBar','figure');
        hf1=figure(1);    %画剪力图
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2);
        plot(x,jianli);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 jianli(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
        hf2=figure(2);    %画弯矩图
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2);
        plot(x,wanju);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 wanju(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
        hf3=figure(3);   %画转角图
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2); 
        plot(x,theta);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 theta(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
        hf4=figure(4);   %画挠度图
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2); 
        plot(x,vsum);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 vsum(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
    end
    
    
    
else
    
    %% 下面是基本结构为固定端的时候计算单位力在各个支座的位置产生的挠度
    zgzdwzdt=zgqdwzdt+zgcddt;
    l=zgcddt;
    if gddwzdt==yuanjianwzstdt(1)  %有固定端且在最左端的时候执行
        Xxiangdui=yuanjianwzstdt(2:ksum)-yuanjianwzstdt(1);
    else  %有固定端且在最右端的时候执行
        Xxiangdui=yuanjianwzstdt(ksum)-yuanjianwzstdt(1:ksum-1);
    end%有固定端的时候执行（即采用固定端作为基本结构）
    ZYxiangdui=abs(gddwzdt-zuoyongwzdt(1:kzysum));
    
    for kX=1:ksum-1  %第kX个单位力
        a=Xxiangdui(kX);
        for t=1:ksum-1  %在第t个力处产生的挠度
            if t<=kX
                danweilind(kX,t)=-(Xxiangdui(t)).^2./(6*E.*Iz).*(3*a-Xxiangdui(t));
            else
                danweilind(kX,t)=-a.^2./(6*E*Iz).*(3*Xxiangdui(t)-a);
            end
        end
    end
    
    %% 以下是基本结构为固定端的时候计算各个作用在各个支座处产生的挠度
    zuoyongndsum=zeros(1,ksum-1);
    zuoyongnd=zeros(kzysum,ksum-1);
    for kX=1:kzysum  %第kX个作用
        a=ZYxiangdui(kX);
        b=l-a;
        for t=1:(ksum-1)  %在第t个力处产生的挠度
            if kX<=c1  %即该作用为集中力
                if Xxiangdui(t)<=ZYxiangdui(kX)
                    zuoyongnd(kX,t)=-zuoyongdxdt(kX).*(Xxiangdui(t)).^2./(6*E.*Iz).*(3*a-Xxiangdui(t));
                else
                    zuoyongnd(kX,t)=-zuoyongdxdt(kX).*a.^2./(6*E*Iz).*(3*Xxiangdui(t)-a);
                end
            elseif kX>c1&&kX<=c1+c2  %即该作用为集中力偶
                if Xxiangdui(t)<=ZYxiangdui(kX)
                    zuoyongnd(kX,t)=-zuoyongdxdt(kX).*(Xxiangdui(t)).^2./(2*E.*Iz);
                else
                    zuoyongnd(kX,t)=-zuoyongdxdt(kX).*a./(E.*Iz).*((Xxiangdui(t)-a)+a/2);
                end
                
                
            else  %即该作用为均布载荷
                
                tt=kX-c1-c2;
                q=jbzhdxdt(tt);
                d=jbzhcddt(tt);
                ma=q.*d.*(a);
                fa=q.*d;
                if Xxiangdui(t)<=a
                    zuoyongnd(kX,t)=-((1/2.*ma.*Xxiangdui(t).^2-1/6.*fa.*Xxiangdui(t).^3))./(E.*Iz);
                else
                    zuoyongnd(kX,t)=-(((1/2.*ma.*(a+d/2).^2-1/6.*fa.*(a+d/2).^3+q./24.*(d).^4))./(E.*Iz)+...
                        (ma*(a+d/2)-1/2*fa*(a+d/2).^2+q/6*d.^3)*(Xxiangdui(t)-(a+d/2))./(E.*Iz));
                end
                             
            end
        end
        zuoyongndsum=zuoyongnd(kX,:)+zuoyongndsum;
    end
    %% 下面是解线性方程组来解出各个支座的作用反力 
    danweilindinv=inv(danweilind);   %求单位力在各个支座产生的挠度的系数矩阵danweilind的逆
    Fn=-danweilindinv*(zuoyongndsum');  %求出各个支座的支座反力即Fn 对应的角标为元件的从小到大排序
    
    %% 下面开始计算各个要求的量 剪力（jianli），弯矩（wanju），挠度（naodu），转角（zhuanjiao）等
    jzlwzdt1=jzlwzdt-yuanjianwzstdt(1);
    jzlowzdt1=jzlowzdt-yuanjianwzstdt(1);
    jbzhqdwzdt1=jbzhqdwzdt-yuanjianwzstdt(1);
    jbzhzdwzdt1=jbzhzdwzdt-yuanjianwzstdt(1);
    
    % 下面计算两端两个支座的支座反力
    %FA是左端的支座反力,FB是右端的支座反力
    if isempty(Fn)   %判断是否是静不定问题
        if isempty(jzldxdt)  %判断是否有集中力
            if isempty(jzlodxdt)  %判断时候有集中力偶
                if isempty(jbzhdxdt)  %判断是否有均布载荷
                else
                    MA=-sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt);
                    FA=-sum(jbzhdxdt.*jbzhcddt);
                end
            else
                if isempty(jbzhdxdt)
                    MA=-sum(jzlodxdt);
                    FA=0;
                else
                    MA=-(sum(jzlodxdt)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt));
                    FA=-(sum(jbzhdxdt.*jbzhcddt));
                end
            end
        else
            if isempty(jzlodxdt)
                if isempty(jbzhdxdt)
                    MA=-sum(jzldxdt.*jzlwzdt1);
                    FA=-sum(jzldxdt);
                else
                    MA=-(sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt));
                    FA=-(sum(jzldxdt)+sum(jbzhdxdt.*jbzhcddt));
                end
            else
                if isempty(jbzhdxdt)
                    MA=-(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1));
                    FA=-(sum(jzldxdt));
                else
                    MA=-(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt));
                    FA=-(sum(jzldxdt+sum(jbzhdxdt.*jbzhcddt)));
                end
            end
        end
    else
        if isempty(jzldxdt)
            if isempty(jzlodxdt)
                if isempty(jbzhdxdt)
                    MA=-sum(Fn'.*Xxiangdui);
                    FA=-sum(Fn);
                else
                    MA=-(sum(Fn'.*Xxiangdui)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt));
                    FA=-(sum(Fn)+sum(jbzhdxdt.*jbzhcddt));
                end
            else
                if isempty(jbzhdxdt)
                    MA=-(sum(Fn'.*Xxiangdui)+sum(jzlodxdt));
                    FA=-(sum(Fn));
                else
                    MA=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)));
                    FA=-(sum(Fn)+sum(jbzhdxdt.*jbzhcddt));
                end
            end
        else
            if isempty(jzlodxdt)
                if isempty(jbzhdxdt)
                   MA=-(sum(Fn'.*Xxiangdui)+sum(jzldxdt.*jzlwzdt1));
                    FA=-(sum(Fn)+sum(jzldxdt));
                else
                    MA=-(sum(Fn'.*Xxiangdui)+(sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)));
                    FA=-(sum(Fn)+(sum(jzldxdt)+sum(jbzhdxdt.*jbzhcddt)));
                end
            else
                if isempty(jbzhdxdt)
                    MA=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)));
                    FA=-(sum(Fn)+(sum(jzldxdt)));
                else
                    MA=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)));
                    FA=-(sum(Fn)+(sum(jzldxdt+sum(jbzhdxdt.*jbzhcddt))));
                end
            end
        end
    end
    FFA2=num2str(FA);
    MMA=num2str(MA);
    text(yuanjianwzstdt(1),0.45*zuobiaodt,[fn FFA2 N]);
    text(yuanjianwzstdt(1),0.43*zuobiaodt,[MM MMA M]);
    
    zongwzdt1=[yuanjianwzstdt(1:ksum) jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt];  %均布载荷有起点和终点
    zongdxdt1=[FA Fn' jzldxdt jzlodxdt jbzhdxdt];  %zongdxdt 和 zongwzdt1的下角标一一对应
    zongzydxdt1=[Fn' jzldxdt jzlodxdt jbzhdxdt];
    zongzywzdt =[yuanjianwzstdt(2:ksum) jzlwzdt jzlowzdt jbzhqdwzdt];
    zongzydxdt=size(zongzydxdt1);
    kzongzydxdt=zongzydxdt(2);
    cc=size(Fn);
    c4=cc(1);
    
     for kFn=1:c4
        FFn=num2str(Fn(kFn));
        text(zongwzdt1(kFn+1),0.44*zuobiaodt,[fn FFn N]);
    end
    
    [zongwzdt,zongst]=sort(zongwzdt1);
    kzongsum1=size(zongwzdt);
    kzongsum=kzongsum1(2);    %简化为静定问题的总的作用个数
    Zxiangdui=zongwzdt-yuanjianwzstdt(1); %各个作用相对简支梁的第一个支座的距离
    a=zongzywzdt-yuanjianwzstdt(1);
    b=l-a;
    %判断每一个作用的种类
    
    %% 计算剪力   不要去判断载荷中间的支座，可以约束为不能那样输入

    for kX=1:kzongsum-1
        x=linspace(zongwzdt(kX),zongwzdt(kX+1),m+1);  %分别计算每一个小段
        s0=0;
        wanju0=MA;
        for t=1:kX  %计算该小段前面的力之和
            if zongst(t)<=(ksum+c1)   %判断第t个作用的种类  即为集中力
                s0=s0+zongdxdt1(zongst(t));
                wanju0=wanju0-zongdxdt1(zongst(t)).*(x-zongwzdt1(zongst(t)));
            elseif zongst(t)<=(ksum+c1+c2)&&zongst(t)>(ksum+c1)  %此时为集中力偶
                wanju0=wanju0+zongdxdt1(zongst(t));
                %力偶不改变剪力的大小
            else  %此时为均布载荷
                if zongst(t)>(ksum+c1+c2+c3)  %该点为均布载荷的终点
                    %也就是，对于均布载荷只计算一次  省略s0=s0,wanju0=wanju0
                else
                    if t==kX
                        %省略s0=s0 wanju0=wanju0
                    else
                        s0=s0+zongdxdt1(zongst(t)).*jbzhcddt(zongst(t)-ksum-c1-c2);
                        wanju0=wanju0-zongdxdt1(zongst(t)).*(jbzhcddt(zongst(t)-ksum-c1-c2)).*(x-(zongwzdt1(zongst(t))+jbzhcddt(zongst(t)-ksum-c1-c2)/2));
                    end
                end
            end
        end
        if zongst(kX)>(ksum+c1+c2)&&zongst(kX)<=(ksum+c1+c2+c3)  %判断是不是均布载荷 
            jianli=(zongdxdt1(zongst(kX)).*(x-zongwzdt(kX))+s0).*ones(size(x));
            wanju=-(wanju0-zongdxdt1(zongst(kX))*((x-zongwzdt(kX)).^2)/2);
        elseif zongst(kX)>(ksum+c1+c2+c3)
            jianli=s0.*ones(size(x));
            wanju=-wanju0;
        else
            jianli=s0.*ones(size(x));
            wanju=-wanju0;
        end
            jianliopt(kX,:)=jianli;
            jianliwzopt(kX,:)=x;
            wanjuopt(kX,:)=wanju;
            wanjuwzopt(kX,:)=x;
        
        
           %% 下面是计算挠度
        kk=size(x);
        theta=zeros(1,kk(2));
        vsum=zeros(1,kk(2));

        for t=1:kzongzydxdt
            if t<=c4  %c4为支座反力的个数
                if x<=zongzywzdt(t)  %t处为集中力
                    vsum=vsum-zongzydxdt1(t).*(x).^2./(6*E.*Iz).*(3*a(t)-x);
                    theta=theta-zongzydxdt1(t)./(6*E.*Iz).*(6*a(t).*x-3*x.^2);
                else
                    vsum=vsum-zongzydxdt1(t).*a(t).^2./(6*E*Iz).*(3*x-a(t));  
                    theta=theta-zongzydxdt1(t).*a(t).^2./(2*E*Iz); 
                end
            elseif t<=c4+c1&&t>c4  %集中力
                if x<=zongzywzdt(t)  %t处为集中力
                    vsum=vsum-zongzydxdt1(t).*(x).^2./(6*E.*Iz).*(3*a(t)-x);
                    theta=theta-zongzydxdt1(t)./(6*E.*Iz).*(6*a(t).*x-3*x.^2);
                else
                    vsum=vsum-zongzydxdt1(t).*a(t).^2./(6*E*Iz).*(3*x-a(t));  
                    theta=theta-zongzydxdt1(t).*a(t).^2./(2*E*Iz); 
                end
            elseif t>c4+c1&&t<=c4+c1+c2  %t为集中力偶
                if x<=zongzywzdt(t)
                    vsum=vsum-zongzydxdt1(t).*(x).^2./(2.*E.*Iz);
                    theta=theta-zongzydxdt1(t).*(x)./(E.*Iz);
                else
                    vsum=vsum-zongzydxdt1(t).*a(t)./(E.*Iz).*((x-a(t))+a(t)/2);
                    theta=theta-zongzydxdt1(t).*a(t)./(E.*Iz);
                end
            else 
                
                tt=t-c1-c2-c4;
                q=jbzhdxdt(tt);
                d=jbzhzdwzdt(tt)-jbzhqdwzdt(tt);
                ma=q.*d.*(a(t)+d./2);
                fa=q.*d;
                if x<=zongzywzdt(t);
                    vsum=vsum-((1/2.*ma.*x.^2-1/6.*fa.*x.^3))./(E.*Iz);
                    theta = theta-((ma.*x-1/2.*fa.*x.^2))./(E.*Iz);
                elseif x(1)>=zongzywzdt(t)&&x(m+1)<=(zongzywzdt(t)+jbzhcddt(t-c4-c1-c2))&&x(1)~=x(m+1)  %x>=a(tt)&&x<=a(tt)+d;
                    vsum=vsum-((1/2.*ma.*x.^2-1/6.*fa.*x.^3+q./24.*(x-a(t)).^4))./(E.*Iz);
                    theta = theta-((ma.*x-1/2.*fa.*x.^2+q./6.*(x-a(t)).^3))./(E.*Iz);
                else
                    vsum=vsum-((1/2.*ma.*(a(t)+d).^2-1/6.*fa.*(a(t)+d).^3+q./24.*(d).^4))./(E.*Iz)-...
                        (((ma.*(a(t)+d)-1/2.*fa.*(a(t)+d).^2+q./6.*(d).^3))./(E.*Iz)).*(x-a(t)-d);
                    theta=theta-(((ma.*(a(t)+d)-1/2.*fa.*(a(t)+d).^2+q./6.*(d).^3))./(E.*Iz));
                end
            end
            
        end
        thetamo=theta(kk(2));
        vsummo=vsum(kk(2));
        vsumopt(kX,:)=vsum;
        vsumwzopt(kX,:)=x;
        thetaopt(kX,:)=theta;
        thetawzopt(kX,:)=x;
        
               %% 下面是绘图
        kl1=fix(51./l.*(zongwzdt(kX+1)-zongwzdt(kX)));
        kl2=linspace(zongwzdt(kX),zongwzdt(kX+1),kl1);
        kl=zeros(1,kl1);
        for kl3=1:kl1
            [xsort2 kl4]=sort(abs(x(:)-kl2(kl3)));
            kl(kl3)=kl4(1);
        end
        hf1=figure(1);
        hf2=figure(2);
        hf3=figure(3);
        hf4=figure(4);
        set(hf1,'NumberTitle','off','Name','剪力图','Menu','none','ToolBar','figure');
        set(hf2,'NumberTitle','off','Name','弯矩图','Menu','none','ToolBar','figure');
        set(hf3,'NumberTitle','off','Name','转角图','Menu','none','ToolBar','figure');
        set(hf4,'NumberTitle','off','Name','挠度图','Menu','none','ToolBar','figure');
        hf1=figure(1);    %画剪力图
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2);
        plot(x,jianli);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 jianli(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
        hf2=figure(2);    %画弯矩图
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2);
        plot(x,wanju);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 wanju(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
        hf3=figure(3);   %画转角图
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2); 
        plot(x,theta);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 theta(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
        hf4=figure(4);   %画挠度图
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2); 
        plot(x,vsum);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 vsum(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on; 
        hold on;
    end
    
    if zongwzdt(kzongsum)<zgzdwzdt   %绘制最后一个位置到直杆端点的图
        
        x=linspace(zongwzdt(kzongsum),zgzdwzdt,m+1);
        a11=size(x);
        
        kl1=fix(51./l.*(zgzdwzdt-zongwzdt(kzongsum)));
        kl2=linspace(zongwzdt(kzongsum),zgzdwzdt,kl1);
        kl=zeros(1,kl1);
        for kl3=1:kl1
            [xsort2 kl4]=sort(abs(x(:)-kl2(kl3)));
            kl(kl3)=kl4(1);
        end
        
        jianli=zeros(1,a11(2));
        hf1=figure(1);
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2);
        plot(x,jianli);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 jianli(kl(kkk))],'Color','black','LineWidth',1);
        end
        hold on;
        datacursormode on;
        wanju=zeros(1,a11(2));
        wanjuopt(kzongsum,:)=wanju;
        jianliopt(kzongsum,:)=jianli;
        jianliwzopt(kzongsum,:)=x;
        wanjuwzopt(kzongsum,:)=x;
        hf2=figure(2);
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2);
        plot(x,wanju);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 wanju(kl(kkk))],'Color','black','LineWidth',1);
        end
        hold on;
        datacursormode on;
        hf3=figure(3);   %画转角图
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2); 
        theta=thetamo.*ones(1,a11(2));
        plot(x,theta);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 theta(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
        hf4=figure(4);   %画挠度图
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',3); 
        vsum=vsummo+tan(thetamo).*(x-zongwzdt(kzongsum));
        plot(x,vsum);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 vsum(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on; 
        hold on;
    end
    vsumopt(kzongsum,:)=vsum;
    vsumwzopt(kzongsum,:)=x;
    thetaopt(kzongsum,:)=theta;
    thetawzopt(kzongsum,:)=x;
    

    
end

%大小的reshape
jianlirsp=reshape(jianliopt',1,[]);
wanjursp=reshape(wanjuopt',1,[]);
thetarsp=reshape(thetaopt',1,[]);
vsumrsp=reshape(vsumopt',1,[]);

%位置reshape
jianliwzrsp=reshape(jianliwzopt',1,[]);
wanjuwzrsp=reshape(wanjuwzopt',1,[]);
thetawzrsp=reshape(thetawzopt',1,[]);
vsumwzrsp=reshape(vsumwzopt',1,[]);

%得到最大的位置索引  
[jianlimax1 kjianli]=max(abs(jianlirsp));
[wanjumax1 kwanju]=max(abs(wanjursp));
[thetamax1 ktheta]=max(abs(thetarsp));
[vsummax1 kvsum]=max(abs(vsumrsp));

%
jianliwzmax=num2str(jianliwzrsp(kjianli));
wanjuwzmax=num2str(wanjuwzrsp(kwanju));
thetawzmax=num2str(thetawzrsp(ktheta));
vsumwzmax=num2str(vsumwzrsp(kvsum));

%得到最大的（字符型）
jianlimax0=num2str(jianlimax1);
wanjumax0=num2str(wanjumax1);
thetamax0=num2str(thetamax1);
vsummax0=num2str(1000.*vsummax1);

%得到最小
jianlimin=min([jianlirsp 0]);
wanjumin=min([wanjursp 0]);
thetamin=min([thetarsp 0]);
vsummin=min([vsumrsp 0]);

%得到最大
jianlimax=max([jianlirsp 0]);
wanjumax=max([wanjursp 0]);
thetamax=max([thetarsp 0]);
vsummax=max([vsumrsp 0]);

%得到最大和最小之间的大小
jianlikd=jianlimax-jianlimin;
wanjukd=wanjumax-wanjumin;
thetakd=thetamax-thetamin;
vsumkd=vsummax-vsummin;

%得到每个图中的坐标周的名称
ho1=findobj(hf1,'Type','axes');
ho2=findobj(hf2,'Type','axes');
ho3=findobj(hf3,'Type','axes');
ho4=findobj(hf4,'Type','axes');

%以下两部分是设置图形的大小以便观察 
set(ho1,'Xlim',[zgqdwzdt-0.1.*zgcddt zgqdwzdt+1.1.*zgcddt]);
set(ho2,'Xlim',[zgqdwzdt-0.1.*zgcddt zgqdwzdt+1.1.*zgcddt]);
set(ho3,'Xlim',[zgqdwzdt-0.1.*zgcddt zgqdwzdt+1.1.*zgcddt]);
set(ho4,'Xlim',[zgqdwzdt-0.1.*zgcddt zgqdwzdt+1.1.*zgcddt]);

if jianlikd==0
set(ho1,'Ylim',[jianlimin-0.1.*jianlikd-0.1 jianlimax+0.1.*jianlikd+0.1]);
else
    set(ho1,'Ylim',[jianlimin-0.1.*jianlikd jianlimax+0.1.*jianlikd]);
end
set(ho2,'Ylim',[wanjumin-0.1.*wanjukd wanjumax+0.1.*wanjukd]);
set(ho3,'Ylim',[thetamin-0.1.*thetakd thetamax+0.1.*thetakd]);
set(ho4,'Ylim',[vsummin-0.1.*vsumkd vsummax+0.1.*vsumkd]);

%将各个text显现
set(handles.jianlitxt,'Visible','on');
set(handles.wanjutxt,'Visible','on');
set(handles.zhuanjiaotxt,'Visible','on');
set(handles.naodutxt,'Visible','on');

set(handles.jianlixstxt,'Visible','on');
set(handles.wanjuxstxt,'Visible','on');
set(handles.zhuanjiaoxstxt,'Visible','on');
set(handles.naoduxstxt,'Visible','on');

set(handles.wztxt1,'Visible','on');
set(handles.wztxt2,'Visible','on');
set(handles.wztxt3,'Visible','on');
set(handles.wztxt4,'Visible','on');

set(handles.wzxstxt1,'Visible','on');
set(handles.wzxstxt2,'Visible','on');
set(handles.wzxstxt3,'Visible','on');
set(handles.wzxstxt4,'Visible','on');


%将各个大小显示出来 
set(handles.jianlixstxt,'String',jianlimax0);
set(handles.wanjuxstxt,'String',wanjumax0);
set(handles.zhuanjiaoxstxt,'String',thetamax0);
set(handles.naoduxstxt,'String',vsummax0);

%将各个位置显示出来
set(handles.wzxstxt1,'String',jianliwzmax);
set(handles.wzxstxt2,'String',wanjuwzmax);
set(handles.wzxstxt3,'String',thetawzmax);
set(handles.wzxstxt4,'String',vsumwzmax);


       



% --- Executes when user attempts to close zhujiemian.
function zhujiemian_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to zhujiemian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
choise=questdlg('是否保存','是否保存','是','否','取消','取消');
switch choise
    case '是'
        baocunm_Callback;
        clear global;
        delete(hObject);
    case '否'
        clear global;
        delete(hObject);
    case '取消'
end



% --------------------------------------------------------------------
function youhuashejim_Callback(hObject, eventdata, handles)
% hObject    handle to youhuashejim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function yhzywzm_Callback(hObject, eventdata, handles)   %优化设计函数（优化作用位置）
% hObject    handle to yhzywzm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global m
global E Iz   %常数
global yuanjianwzdt  %位置矩阵
global gdjzzwzdt gdzzwzdt gddwzdt zgqdwzdt zgcddt%各个元件的位置矩阵
global Xxiangdui danweilind

%% 在计算各个作用的时候需要的全局变量
global zuoyongwzdt  %作用位置矩阵
global jzlwzdt jbzhqdwzdt jbzhzdwzdt  jzlowzdt %各个作用的位置矩阵
global zuoyongnd
global jzldxdt jzlodxdt jbzhdxdt  %各个作用的大小
global zuoyongndsum
global Fn
global zuobiaodt


youhual=inputdlg('请设置优化对象n(从左至右数第n个)', '作用优化',1,{'1'});
if isempty(youhual)
    close(figure,'youhual');
else
    youhualn=str2double(youhual{1});
end

%% 求单位力在各个支座位置产生的挠度
yuanjianwzdt=[gdjzzwzdt gdzzwzdt gddwzdt];
ksum1=size(yuanjianwzdt);  %计算总的支座数
ksum=ksum1(2);
[yuanjianwzstdt kst]=sort(yuanjianwzdt);  %kst为保留的原来元素的索引



%% 计算每个作用在每个支座处产生的挠度
zuoyongndsum=0;
jbzhcddt=jbzhzdwzdt-jbzhqdwzdt;
zuoyongwzdt=[jzlwzdt jzlowzdt (jbzhqdwzdt+jbzhcddt./2)]; %注意均布载荷的位置使用了其中点的坐标
zuoyongdxdt=[jzldxdt jzlodxdt jbzhdxdt];
ksum2=size(zuoyongwzdt);
kzysum=ksum2(2);
[zuoyongwzstdt,kst2]=sort(zuoyongwzdt);
c11=size(jzlwzdt);
c12=size(jzlowzdt);
c13=size(jbzhqdwzdt);
c1=c11(2);  %集中力的个数
c2=c12(2);   %集中力偶个数
c3=c13(2);   %均布载荷个数
n0=0;  %用于统计均布载荷的个数

if youhualn<=c1
    zuoyongwzhy=jzlwzdt(kst2(youhualn));
elseif youhualn>c1&&youhualn<=(c1+c2)
    zuoyongwzhy=jzlowzdt(kst2(youhualn));
else
    zuoyongwzhy=jbzhqdwzdt(kst2(youhualn));
end

for kyhzyx=zgqdwzdt:0.01:(zgqdwzdt+zgcddt)
    n0=n0+1;
    zuoyongwzdt(kst2(youhualn))=kyhzyx;
    if youhualn<=c1
        jzlwzdt(kst2(youhualn))=kyhzyx;
    elseif youhualn>c1&&youhualn<=(c1+c2)
        jzlowzdt(kst2(youhualn))=kyhzyx;
    else
        jbzhqdwzdt(kst2(youhualn))=kyhzyx;
    end

    if isempty(gddwzdt)    %没有固定端时候执行的语句（即采用简支梁作为基本结构）
        Xxiangdui=yuanjianwzstdt(2:(ksum-1))-yuanjianwzstdt(1);  %计算出每一个支座相对于第一个支座的距离
        ZYxiangdui=zuoyongwzdt(1:kzysum)-yuanjianwzstdt(1);  %各个作用相对简支梁的第一个支座的位置
        l=zgcddt;
        %     l=yuanjianwzstdt(ksum)-yuanjianwzstdt(1);
        
        %% 在基本结构为简支梁的时候计算单位力在各个支座处产生的挠度
        for kX=1:(ksum-2)  %第kX个单位力
            a=Xxiangdui(kX);
            b=l-a;
            for t=1:(ksum-2)   %在地t个支座产生的挠度
                if t<=kX
                    danweilind(kX,t)=-b.*Xxiangdui(t)./(6*E*Iz.*l)*...
                        (l.^2-(Xxiangdui(t)).^2-b.^2);
                    
                else
                    danweilind(kX,t)=-b./(6.*E.*Iz.*l).*(l./b.*...
                        (Xxiangdui(t)-a).^3+(l.^2 -b.^2).*Xxiangdui(t)-Xxiangdui(t).^3);
                end
            end
        end
        
        %% 基本结构为简支梁的时候计算各个作用在各个支座处产生的挠度
        zuoyongndsum=zeros(1,ksum-2);
        zuoyongnd=zeros(kzysum,ksum-2);
        for kX=1:kzysum  %第kX个作用
            a=ZYxiangdui(kX);
            b=l-a;
            for t=1:(ksum-2)  %在第t个支座处产生的挠度
                if kX<=c1  %即该作用为集中力
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*b.*Xxiangdui(t)./(6*E*Iz.*l)*...
                            (l.^2-(Xxiangdui(t)).^2-b.^2);
                    else
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*b./(6.*E.*Iz.*l).*(l./b.*...
                            (Xxiangdui(t)-a).^3+(l.^2 -b.^2).*Xxiangdui(t)-Xxiangdui(t).^3);
                    end
                elseif kX>c1&&kX<=c1+c2  %即该作用为集中力偶
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=zuoyongdxdt(kX).*Xxiangdui(t)./(6*E.*Iz.*l).*...
                            (l.^2-3*b.^2-(Xxiangdui(t)).^2);
                    else
                        zuoyongnd(kX,t)=zuoyongdxdt(kX)./(6*E.*Iz.*l).*...
                            (-(Xxiangdui(t)).^3+3*l.*(Xxiangdui(t)-a).^2+Xxiangdui(t).*(l^2-3*b^2));
                    end
                    
                    
                else  %即该作用为均布载荷   d为各个系数
                    %约束为均布载荷中间不能有支座
                    tt=kX-c1-c2;
                    q=jbzhdxdt(tt);
                    d=jbzhcddt(tt);
                    fa=q.*d.*(b)./l;
                    fb=q.*d.*a./l;
                    xsc=[(a+d/2) -b+d/2;1 1];
                    bb=[fb./6.*(b-d/2).^3+q/24.*d.^4-fa/6.*(a+d/2).^3 q/6.*d.^3-fa/2.*(a+d/2).^2-fb/2.*(b-d/2).^2]';
                    cc=inv(xsc)*bb;
                    if Xxiangdui(t)<=a %即该支座在均布载荷的左边
                        zuoyongnd(kX,t)=(1/6.*fa.*Xxiangdui(t).^3+cc(1).*Xxiangdui(t))./(E.*Iz);
                    else   %该支座在均布载荷的右边
                        zuoyongnd(kX,t)=(1/6.*fb.*(l-Xxiangdui(t)).^3+cc(2).*(l-Xxiangdui(t)))./(E.*Iz);
                    end
                    
                end
            end
            zuoyongndsum=zuoyongnd(kX,:)+zuoyongndsum;   %即每个作用在各个支座处产生的挠度和，即得到所需的一个矩阵
        end
        
        %% 下面是解线性方程组来解出各个支座的作用反力
        danweilindinv=inv(danweilind);   %求单位力在各个支座产生的挠度的系数矩阵danweilind的逆
        Fn=-danweilindinv*(zuoyongndsum');  %求出各个支座的支座反力即Fn 对应的角标为元件的从小到大排序
        
        %% 下面开始计算各个要求的量 剪力（jianli），弯矩（wanju），挠度（naodu），转角（zhuanjiao）等
        jzlwzdt1=jzlwzdt-yuanjianwzstdt(1);   %各个作用相对简支梁第一个支座的位置
        jzlowzdt1=jzlowzdt-yuanjianwzstdt(1);
        jbzhqdwzdt1=jbzhqdwzdt-yuanjianwzstdt(1);
        jbzhzdwzdt1=jbzhzdwzdt-yuanjianwzstdt(1);
        
        % 下面计算两端两个支座的支座反力
        %FA是左端的支座反力,FB是右端的支座反力
        if isempty(Fn)   %判断是否是静不定问题
            if isempty(jzldxdt)  %判断是否有集中力
                if isempty(jzlodxdt)  %判断时候有集中力偶
                    if isempty(jbzhdxdt)  %判断是否有均布载荷
                    else
                        FB=-sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)./l;
                        FA=-sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt)./l;
                    end
                else
                    if isempty(jbzhdxdt)
                        FB=-sum(jzlodxdt)./l;
                        FA=sum(jzlodxdt)./l;
                    else
                        FB=-(sum(jzlodxdt)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt))./l;
                        FA=-(-sum(jzlodxdt)+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt))./l;
                    end
                end
            else
                if isempty(jzlodxdt)
                    if isempty(jbzhdxdt)
                        FB=-sum(jzldxdt.*jzlwzdt1)./l;
                        FA=-sum(jzldxdt.*(l-jzlwzdt1))./l;
                    else
                        FB=-(sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt))./l;
                        FA=-(sum(jzldxdt.*(l-jzlwzdt1))+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt))./l;
                    end
                else
                    if isempty(jbzhdxdt)
                        FB=-(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1))./l;
                        FA=-(-sum(jzlodxdt)+sum(jzldxdt.*(l-jzlwzdt1)))./l;
                    else
                        FB=-(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt))./l;
                        FA=-(-sum(jzlodxdt)+sum(jzldxdt.*(l-jzlwzdt1)+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt)))./l;
                    end
                end
            end
        else
            if isempty(jzldxdt)
                if isempty(jzlodxdt)
                    if isempty(jbzhdxdt)
                        FB=-sum(Fn'.*Xxiangdui)./l;
                        FA=-sum(Fn'.*(l-Xxiangdui))./l;
                    else
                        FB=-(sum(Fn'.*Xxiangdui)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt))./l;
                        FA=-(sum(Fn'.*(l-Xxiangdui))+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt))./l;
                    end
                else
                    if isempty(jbzhdxdt)
                        FB=-(sum(Fn'.*Xxiangdui)+sum(jzlodxdt))./l;
                        FA=-(sum(Fn'.*(l-Xxiangdui))-sum(jzlodxdt))./l;
                    else
                        FB=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)))./l;
                        FA=-(sum(Fn'.*(l-Xxiangdui))-(sum(jzlodxdt)+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt)))./l;
                    end
                end
            else
                if isempty(jzlodxdt)
                    if isempty(jbzhdxdt)
                        FB=-(sum(Fn'.*Xxiangdui)+sum(jzldxdt.*jzlwzdt1))./l;
                        FA=-(sum(Fn'.*(l-Xxiangdui))+sum(jzldxdt.*(l-jzlwzdt1)))./l;
                    else
                        FB=-(sum(Fn'.*Xxiangdui)+(sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)))./l;
                        FA=-(sum(Fn'.*(l-Xxiangdui))+(sum(jzldxdt.*(l-jzlwzdt))+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt)))./l;
                    end
                else
                    if isempty(jbzhdxdt)
                        FB=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)))./l;
                        FA=-(sum(Fn'.*(l-Xxiangdui))-(sum(jzlodxdt)+sum(jzldxdt.*(l-jzlwzdt1))))./l;
                    else
                        FB=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)))./l;
                        FA=-(sum(Fn'.*(l-Xxiangdui))-(sum(jzlodxdt)+sum(jzldxdt.*(l-jzlwzdt1)+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt))))./l;
                    end
                end
            end
        end
      
        
        
        zongwzdt1=[yuanjianwzstdt(1:ksum) jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt];  %均布载荷有起点和终点
        zongdxdt1=[FA Fn' FB jzldxdt jzlodxdt jbzhdxdt];  %zongdxdt 和 zongwzdt1的下角标一一对应
        zongzydxdt1=[Fn' jzldxdt jzlodxdt jbzhdxdt];
        zongzywzdt =[yuanjianwzstdt(2:ksum-1) jzlwzdt jzlowzdt jbzhqdwzdt];
        zongzydxdt=size(zongzydxdt1);
        kzongzydxdt=zongzydxdt(2);
        cc=size(Fn);
        c4=cc(1);
        
 
        [zongwzdt,zongst]=sort(zongwzdt1);
        kzongsum1=size(zongwzdt);
        kzongsum=kzongsum1(2);    %简化为静定问题的总的作用个数
        a=zongzywzdt-yuanjianwzstdt(1);
        b=l-a;
        %判断每一个作用的种类
        
        %% 计算剪力   不要去判断载荷中间的支座，可以约束为不能那样输入
        v=zeros(m+1,1);
        theta=zeros(m+1,1);
        for kX=1:kzongsum-1
            x=linspace(zongwzdt(kX),zongwzdt(kX+1),m+1);  %分别计算每一个小段
            h=(zongwzdt(kX+1)-zongwzdt(kX))./m;
            s0=0;  %剪力初值
            wanju0=0;  %弯矩初值
            for t=1:kX  %计算该小段前面的力之和
                if zongst(t)<=(ksum+c1)   %判断第t个作用的种类  即为集中力
                    s0=s0+zongdxdt1(zongst(t));
                    wanju0=wanju0+zongdxdt1(zongst(t)).*(x-zongwzdt1(zongst(t)));
                elseif zongst(t)<=(ksum+c1+c2)&&zongst(t)>(ksum+c1)  %此时为集中力偶
                    wanju0=wanju0-zongdxdt1(zongst(t));
                    %力偶不改变剪力的大小
                else     %此时为均布载荷
                    if zongst(t)>(ksum+c1+c2+c3)  %该点为均布载荷的终点
                        %也就是，对于均布载荷只计算一次  省略s0=s0,wanju0=wanju0
                    else
                        if t==kX
                            %省略s0=s0 wanju0=wanju0
                        else
                            s0=s0+zongdxdt1(zongst(t)).*jbzhcddt(zongst(t)-ksum-c1-c2);
                            wanju0=wanju0+(zongdxdt1(zongst(t)).*(jbzhcddt(zongst(t)-ksum-c1-c2)).*(x-(zongwzdt1(zongst(t))+jbzhcddt(zongst(t)-ksum-c1-c2)/2)));
                        end
                        
                    end
                    
                end
            end
            
            %该段的剪力弯矩
            if zongst(kX)>(ksum+c1+c2)&&zongst(kX)<=(ksum+c1+c2+c3)  %判断是不是均布载荷
                jianli=(zongdxdt1(zongst(kX)).*(x-zongwzdt(kX))+s0).*ones(size(x));
                wanju=-wanju0-(zongdxdt1(zongst(kX))*((x-zongwzdt(kX)).^2)/2);
            elseif zongst(kX)>(ksum+c1+c2+c3)
                jianli=s0.*ones(size(x));
                wanju=-wanju0;
            else
                a0=size(x);
                jianli=s0.*ones(1,a0(2));
                wanju=-wanju0;
            end
            jianliopt(kX,:)=jianli;
            jianliwzopt(kX,:)=x;
            wanjuopt(kX,:)=wanju;
            wanjuwzopt(kX,:)=x;
            %% 下面使计算挠度
            kk=size(x);
            theta=zeros(1,kk(2));
            vsum=zeros(1,kk(2));
            %%
            for t=1:kzongzydxdt
                if t<=c4+c1  %c1为集中力的个数 c4为支座反力的个数
                    if x<=zongzywzdt(t)  %t处为集中力
                        vsum=vsum-zongzydxdt1(t).*b(t).*x./(6*E*Iz.*l).*...
                            (l.^2-(x).^2-(b(t)).^2);
                        theta=theta-zongzydxdt1(t).*b(t)./(6*E*Iz.*l).*...
                            (l.^2-3.*(x).^2-(b(t)).^2);
                    else
                        vsum=vsum-zongzydxdt1(t).*b(t)./(6.*E.*Iz.*l).*(l./b(t).*...
                            (x-a(t)).^3+(l.^2 -(b(t)).^2).*x-x.^3);
                        theta=theta-zongzydxdt1(t).*b(t)./(6.*E.*Iz.*l).*(l./b(t).*...
                            3.*(x-a(t)).^2+(l.^2 -(b(t)).^2)-3.*x.^2);
                    end
                elseif t>c4+c1&&t<=c4+c1+c2  %t为集中力偶
                    if x<=zongzywzdt(t)
                        vsum=vsum+zongzydxdt1(t).*x./(6*E.*Iz.*l).*...
                            (l.^2-3*(b(t)).^2-(x).^2);
                        theta=theta+zongzydxdt1(t)./(6*E.*Iz.*l).*(l.^2-3*b(t).^2-3.*(x).^2);
                    else
                        vsum=vsum+zongzydxdt1(t)./(6*E.*Iz.*l).*...
                            (-(x).^3+3.*l.*(x-a(t)).^2+(l^2-3.*(b(t)).^2).*x);
                        theta=theta+zongzydxdt1(t)./(6*E.*Iz.*l).*...
                            (-3.*(x).^2+6*l.*(x-a(t))+(l^2-3*b(t)^2));
                    end
                elseif t>c4+c1+c2&&t<=c4+c1+c2+c3%此处为均布载荷
                    tt=zongst(t)-c4-c1-c2;
                    q=zongzydxdt1(t);
                    d=jbzhcddt(t-c4-c1-c2);
                    fa=q.*d.*(b(t)-d/2)./l;
                    fb=q.*d.*(a(t)+d/2)./l;
                    xsc=[(a(t)+d) -b(t)+d;1 1];
                    bb=[fb./6.*(b(t)-d).^3+q/24.*d.^4-fa/6.*(a(t)+d).^3 q/6.*d.^3-fa/2.*(a(t)+d).^2-fb/2.*(b(t)-d).^2]';
                    cc=inv(xsc)*bb;
                    if x<=zongzywzdt(t)  %即该支座在均布载荷的左边
                        vsum=vsum+(1/6.*fa.*x.^3+cc(1).*x)./(E.*Iz);
                        theta=theta+(1./2.*fa.*x.^2+cc(1))./(E.*Iz);
                    elseif x(1)>=zongzywzdt(t)&&x(m+1)<=(zongzywzdt(t)+jbzhcddt(t-c4-c1-c2))&&x(1)~=x(m+1)  %该支座在均布载荷之间
                        vsum=vsum+(1/6.*fa.*x.^3+cc(1).*x-q./24.*(x-a(t)).^4)./(E.*Iz);
                        theta=theta+(1./2.*fa.*x.^2+cc(1)-q./6.*(x-a(t)).^3)./(E.*Iz);
                    else   %该支座在均布载荷的右边
                        vsum=vsum+(1/6.*fb.*(l-x).^3+cc(2).*(l-x))./(E.*Iz);
                        theta=theta-(1/2.*fb.*(l-x).^2+cc(2))./(E.*Iz);
                    end
                else
                end
                
            end
            vsumopt(kX,:)=vsum;
            vsumwzopt(kX,:)=x;
            thetaopt(kX,:)=theta;
            thetawzopt(kX,:)=x;
            
            
            
            %% 下面是绘图
            kl1=fix(51./l.*(zongwzdt(kX+1)-zongwzdt(kX)));
            kl2=linspace(zongwzdt(kX),zongwzdt(kX+1),kl1);
            kl=zeros(1,kl1);
            for kl3=1:kl1
                [xsort2 kl4]=sort(abs(x(:)-kl2(kl3)));
                kl(kl3)=kl4(1);
            end
           
        end
        
        
        
    else
        
        %% 下面是基本结构为固定端的时候计算单位力在各个支座的位置产生的挠度
        zgzdwzdt=zgqdwzdt+zgcddt;
        l=zgcddt;
        if gddwzdt==yuanjianwzstdt(1)  %有固定端且在最左端的时候执行
            Xxiangdui=yuanjianwzstdt(2:ksum)-yuanjianwzstdt(1);
        else  %有固定端且在最右端的时候执行
            Xxiangdui=yuanjianwzstdt(ksum)-yuanjianwzstdt(1:ksum-1);
        end%有固定端的时候执行（即采用固定端作为基本结构）
        ZYxiangdui=abs(gddwzdt-zuoyongwzdt(1:kzysum));
        
        for kX=1:ksum-1  %第kX个单位力
            a=Xxiangdui(kX);
            for t=1:ksum-1  %在第t个力处产生的挠度
                if t<=kX
                    danweilind(kX,t)=-(Xxiangdui(t)).^2./(6*E.*Iz).*(3*a-Xxiangdui(t));
                else
                    danweilind(kX,t)=-a.^2./(6*E*Iz).*(3*Xxiangdui(t)-a);
                end
            end
        end
        
        %% 以下是基本结构为固定端的时候计算各个作用在各个支座处产生的挠度
        zuoyongndsum=zeros(1,ksum-1);
        zuoyongnd=zeros(kzysum,ksum-1);
        for kX=1:kzysum  %第kX个作用
            a=ZYxiangdui(kX);
            b=l-a;
            for t=1:(ksum-1)  %在第t个力处产生的挠度
                if kX<=c1  %即该作用为集中力
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*(Xxiangdui(t)).^2./(6*E.*Iz).*(3*a-Xxiangdui(t));
                    else
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*a.^2./(6*E*Iz).*(3*Xxiangdui(t)-a);
                    end
                elseif kX>c1&&kX<=c1+c2  %即该作用为集中力偶
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*(Xxiangdui(t)).^2./(2*E.*Iz);
                    else
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*a./(E.*Iz).*((Xxiangdui(t)-a)+a/2);
                    end
                    
                    
                else  %即该作用为均布载荷
                    
                    tt=kX-c1-c2;
                    q=jbzhdxdt(tt);
                    d=jbzhcddt(tt);
                    ma=q.*d.*(a);
                    fa=q.*d;
                    if Xxiangdui(t)<=a
                        zuoyongnd(kX,t)=-((1/2.*ma.*Xxiangdui(t).^2-1/6.*fa.*Xxiangdui(t).^3))./(E.*Iz);
                    else
                        zuoyongnd(kX,t)=-(((1/2.*ma.*(a+d/2).^2-1/6.*fa.*(a+d/2).^3+q./24.*(d).^4))./(E.*Iz)+...
                            (ma*(a+d/2)-1/2*fa*(a+d/2).^2+q/6*d.^3)*(Xxiangdui(t)-(a+d/2))./(E.*Iz));
                    end
                    
                end
            end
            zuoyongndsum=zuoyongnd(kX,:)+zuoyongndsum;
        end
        %% 下面是解线性方程组来解出各个支座的作用反力
        danweilindinv=inv(danweilind);   %求单位力在各个支座产生的挠度的系数矩阵danweilind的逆
        Fn=-danweilindinv*(zuoyongndsum');  %求出各个支座的支座反力即Fn 对应的角标为元件的从小到大排序
        
        %% 下面开始计算各个要求的量 剪力（jianli），弯矩（wanju），挠度（naodu），转角（zhuanjiao）等
        jzlwzdt1=jzlwzdt-yuanjianwzstdt(1);
        jzlowzdt1=jzlowzdt-yuanjianwzstdt(1);
        jbzhqdwzdt1=jbzhqdwzdt-yuanjianwzstdt(1);
        jbzhzdwzdt1=jbzhzdwzdt-yuanjianwzstdt(1);
        
        % 下面计算两端两个支座的支座反力
        %FA是左端的支座反力,FB是右端的支座反力
        if isempty(Fn)   %判断是否是静不定问题
            if isempty(jzldxdt)  %判断是否有集中力
                if isempty(jzlodxdt)  %判断时候有集中力偶
                    if isempty(jbzhdxdt)  %判断是否有均布载荷
                    else
                        MA=-sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt);
                        FA=-sum(jbzhdxdt.*jbzhcddt);
                    end
                else
                    if isempty(jbzhdxdt)
                        MA=-sum(jzlodxdt);
                        FA=0;
                    else
                        MA=-(sum(jzlodxdt)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt));
                        FA=-(sum(jbzhdxdt.*jbzhcddt));
                    end
                end
            else
                if isempty(jzlodxdt)
                    if isempty(jbzhdxdt)
                        MA=-sum(jzldxdt.*jzlwzdt1);
                        FA=-sum(jzldxdt);
                    else
                        MA=-(sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt));
                        FA=-(sum(jzldxdt)+sum(jbzhdxdt.*jbzhcddt));
                    end
                else
                    if isempty(jbzhdxdt)
                        MA=-(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1));
                        FA=-(sum(jzldxdt));
                    else
                        MA=-(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt));
                        FA=-(sum(jzldxdt+sum(jbzhdxdt.*jbzhcddt)));
                    end
                end
            end
        else
            if isempty(jzldxdt)
                if isempty(jzlodxdt)
                    if isempty(jbzhdxdt)
                        MA=-sum(Fn'.*Xxiangdui);
                        FA=-sum(Fn);
                    else
                        MA=-(sum(Fn'.*Xxiangdui)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt));
                        FA=-(sum(Fn)+sum(jbzhdxdt.*jbzhcddt));
                    end
                else
                    if isempty(jbzhdxdt)
                        MA=-(sum(Fn'.*Xxiangdui)+sum(jzlodxdt));
                        FA=-(sum(Fn));
                    else
                        MA=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)));
                        FA=-(sum(Fn)+sum(jbzhdxdt.*jbzhcddt));
                    end
                end
            else
                if isempty(jzlodxdt)
                    if isempty(jbzhdxdt)
                        MA=-(sum(Fn'.*Xxiangdui)+sum(jzldxdt.*jzlwzdt1));
                        FA=-(sum(Fn)+sum(jzldxdt));
                    else
                        MA=-(sum(Fn'.*Xxiangdui)+(sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)));
                        FA=-(sum(Fn)+(sum(jzldxdt)+sum(jbzhdxdt.*jbzhcddt)));
                    end
                else
                    if isempty(jbzhdxdt)
                        MA=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)));
                        FA=-(sum(Fn)+(sum(jzldxdt)));
                    else
                        MA=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)));
                        FA=-(sum(Fn)+(sum(jzldxdt+sum(jbzhdxdt.*jbzhcddt))));
                    end
                end
            end
        end
        
        zongwzdt1=[yuanjianwzstdt(1:ksum) jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt];  %均布载荷有起点和终点
        zongdxdt1=[FA Fn' jzldxdt jzlodxdt jbzhdxdt];  %zongdxdt 和 zongwzdt1的下角标一一对应
        zongzydxdt1=[Fn' jzldxdt jzlodxdt jbzhdxdt];
        zongzywzdt =[yuanjianwzstdt(2:ksum) jzlwzdt jzlowzdt jbzhqdwzdt];
        zongzydxdt=size(zongzydxdt1);
        kzongzydxdt=zongzydxdt(2);
        cc=size(Fn);
        c4=cc(1);
        

        [zongwzdt,zongst]=sort(zongwzdt1);
        kzongsum1=size(zongwzdt);
        kzongsum=kzongsum1(2);    %简化为静定问题的总的作用个数
        Zxiangdui=zongwzdt-yuanjianwzstdt(1); %各个作用相对简支梁的第一个支座的距离
        a=zongzywzdt-yuanjianwzstdt(1);
        b=l-a;
        %判断每一个作用的种类
        
        %% 计算剪力   不要去判断载荷中间的支座，可以约束为不能那样输入
        
        for kX=1:kzongsum-1
            x=linspace(zongwzdt(kX),zongwzdt(kX+1),m+1);  %分别计算每一个小段
            s0=0;
            wanju0=MA;
            for t=1:kX  %计算该小段前面的力之和
                if zongst(t)<=(ksum+c1)   %判断第t个作用的种类  即为集中力
                    s0=s0+zongdxdt1(zongst(t));
                    wanju0=wanju0-zongdxdt1(zongst(t)).*(x-zongwzdt1(zongst(t)));
                elseif zongst(t)<=(ksum+c1+c2)&&zongst(t)>(ksum+c1)  %此时为集中力偶
                    wanju0=wanju0+zongdxdt1(zongst(t));
                    %力偶不改变剪力的大小
                else  %此时为均布载荷
                    if zongst(t)>(ksum+c1+c2+c3)  %该点为均布载荷的终点
                        %也就是，对于均布载荷只计算一次  省略s0=s0,wanju0=wanju0
                    else
                        if t==kX
                            %省略s0=s0 wanju0=wanju0
                        else
                            s0=s0+zongdxdt1(zongst(t)).*jbzhcddt(zongst(t)-ksum-c1-c2);
                            wanju0=wanju0-zongdxdt1(zongst(t)).*(jbzhcddt(zongst(t)-ksum-c1-c2)).*(x-(zongwzdt1(zongst(t))+jbzhcddt(zongst(t)-ksum-c1-c2)/2));
                        end
                    end
                end
            end
            if zongst(kX)>(ksum+c1+c2)&&zongst(kX)<=(ksum+c1+c2+c3)  %判断是不是均布载荷
                jianli=(zongdxdt1(zongst(kX)).*(x-zongwzdt(kX))+s0).*ones(size(x));
                wanju=-(wanju0-zongdxdt1(zongst(kX))*((x-zongwzdt(kX)).^2)/2);
            elseif zongst(kX)>(ksum+c1+c2+c3)
                jianli=s0.*ones(size(x));
                wanju=-wanju0;
            else
                jianli=s0.*ones(size(x));
                wanju=-wanju0;
            end
            jianliopt(kX,:)=jianli;
            jianliwzopt(kX,:)=x;
            wanjuopt(kX,:)=wanju;
            wanjuwzopt(kX,:)=x;
            
            
            %% 下面是计算挠度
            kk=size(x);
            theta=zeros(1,kk(2));
            vsum=zeros(1,kk(2));
            
            for t=1:kzongzydxdt
                if t<=c4  %c4为支座反力的个数
                    if x<=zongzywzdt(t)  %t处为集中力
                        vsum=vsum-zongzydxdt1(t).*(x).^2./(6*E.*Iz).*(3*a(t)-x);
                        theta=theta-zongzydxdt1(t)./(6*E.*Iz).*(6*a(t).*x-3*x.^2);
                    else
                        vsum=vsum-zongzydxdt1(t).*a(t).^2./(6*E*Iz).*(3*x-a(t));
                        theta=theta-zongzydxdt1(t).*a(t).^2./(2*E*Iz);
                    end
                elseif t<=c4+c1&&t>c4  %集中力
                    if x<=zongzywzdt(t)  %t处为集中力
                        vsum=vsum-zongzydxdt1(t).*(x).^2./(6*E.*Iz).*(3*a(t)-x);
                        theta=theta-zongzydxdt1(t)./(6*E.*Iz).*(6*a(t).*x-3*x.^2);
                    else
                        vsum=vsum-zongzydxdt1(t).*a(t).^2./(6*E*Iz).*(3*x-a(t));
                        theta=theta-zongzydxdt1(t).*a(t).^2./(2*E*Iz);
                    end
                elseif t>c4+c1&&t<=c4+c1+c2  %t为集中力偶
                    if x<=zongzywzdt(t)
                        vsum=vsum-zongzydxdt1(t).*(x).^2./(2.*E.*Iz);
                        theta=theta-zongzydxdt1(t).*(x)./(E.*Iz);
                    else
                        vsum=vsum-zongzydxdt1(t).*a(t)./(E.*Iz).*((x-a(t))+a(t)/2);
                        theta=theta-zongzydxdt1(t).*a(t)./(E.*Iz);
                    end
                else
                    
                    tt=t-c1-c2-c4;
                    q=jbzhdxdt(tt);
                    d=jbzhzdwzdt(tt)-jbzhqdwzdt(tt);
                    ma=q.*d.*(a(t)+d./2);
                    fa=q.*d;
                    if x<=zongzywzdt(t);
                        vsum=vsum-((1/2.*ma.*x.^2-1/6.*fa.*x.^3))./(E.*Iz);
                        theta = theta-((ma.*x-1/2.*fa.*x.^2))./(E.*Iz);
                    elseif x(1)>=zongzywzdt(t)&&x(m+1)<=(zongzywzdt(t)+jbzhcddt(t-c4-c1-c2))&&x(1)~=x(m+1)  %x>=a(tt)&&x<=a(tt)+d;
                        vsum=vsum-((1/2.*ma.*x.^2-1/6.*fa.*x.^3+q./24.*(x-a(t)).^4))./(E.*Iz);
                        theta = theta-((ma.*x-1/2.*fa.*x.^2+q./6.*(x-a(t)).^3))./(E.*Iz);
                    else
                        vsum=vsum-((1/2.*ma.*(a(t)+d).^2-1/6.*fa.*(a(t)+d).^3+q./24.*(d).^4))./(E.*Iz)-...
                            (((ma.*(a(t)+d)-1/2.*fa.*(a(t)+d).^2+q./6.*(d).^3))./(E.*Iz)).*(x-a(t)-d);
                        theta=theta-(((ma.*(a(t)+d)-1/2.*fa.*(a(t)+d).^2+q./6.*(d).^3))./(E.*Iz));
                    end
                end
                
            end
            thetamo=theta(kk(2));
            vsummo=vsum(kk(2));
            vsumopt(kX,:)=vsum;
            vsumwzopt(kX,:)=x;
            thetaopt(kX,:)=theta;
            thetawzopt(kX,:)=x;
            
            %% 下面是绘图
            kl1=fix(51./l.*(zongwzdt(kX+1)-zongwzdt(kX)));
            kl2=linspace(zongwzdt(kX),zongwzdt(kX+1),kl1);
            kl=zeros(1,kl1);
            for kl3=1:kl1
                [xsort2 kl4]=sort(abs(x(:)-kl2(kl3)));
                kl(kl3)=kl4(1);
            end
           
           
        end
        
       if zongwzdt(kzongsum)<zgzdwzdt   %绘制最后一个位置到直杆端点的图
            
            x=linspace(zongwzdt(kzongsum),zgzdwzdt,m+1);
            a11=size(x);
            
            kl1=fix(51./l.*(zgzdwzdt-zongwzdt(kzongsum)));
            kl2=linspace(zongwzdt(kzongsum),zgzdwzdt,kl1);
            kl=zeros(1,kl1);
            for kl3=1:kl1
                [xsort2 kl4]=sort(abs(x(:)-kl2(kl3)));
                kl(kl3)=kl4(1);
            end
            
            jianli=zeros(1,a11(2));
           
            wanju=zeros(1,a11(2));
            wanjuopt(kzongsum,:)=wanju;
            jianliopt(kzongsum,:)=jianli;
            jianliwzopt(kzongsum,:)=x;
            wanjuwzopt(kzongsum,:)=x;
           
            theta=thetamo.*ones(1,a11(2));
           
            vsum=vsummo+tan(thetamo).*(x-zongwzdt(kzongsum));
            
        end
        vsumopt(kzongsum,:)=vsum;
        vsumwzopt(kzongsum,:)=x;
        thetaopt(kzongsum,:)=theta;
        thetawzopt(kzongsum,:)=x;
        
        
        
    end
  
    
    
    %%
    
    %大小的reshape
    jianlirsp=reshape(jianliopt',1,[]);
    wanjursp=reshape(wanjuopt',1,[]);
    thetarsp=reshape(thetaopt',1,[]);
    vsumrsp=reshape(vsumopt',1,[]);
    
    
    jianlimax2=max(abs(jianlirsp));
    wanjumax2=max(abs(wanjursp));
    thetamax2 =max(abs(thetarsp));
    vsummax2  =max(abs(vsumrsp));
    
    jianliy(n0)=jianlimax2;
    wanjuy(n0)=wanjumax2;
    thetay(n0)=thetamax2;
    vsumy(n0)=vsummax2;
end
kyhzyx=zgqdwzdt:0.01:(zgqdwzdt+zgcddt);
hf5=figure(5);
set(hf5,'NumberTitle','off','Name','作用位置优化','Menu','none','ToolBar','figure');
line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2);
plot(kyhzyx,vsumy);


if youhualn<=c1
    jzlwzdt(kst2(youhualn))=zuoyongwzhy;
elseif youhualn>c1&&youhualn<=(c1+c2)
    jzlowzdt(kst2(youhualn))=zuoyongwzhy;
else
    jbzhqdwzdt(kst2(youhualn))=zuoyongwzhy;
end



% --------------------------------------------------------------------
function yhzzwzm_Callback(hObject, eventdata, handles)
% hObject    handle to yhzzwzm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global m
global E Iz   %常数
global yuanjianwzdt  %位置矩阵
global gdjzzwzdt gdzzwzdt gddwzdt  zgqdwzdt zgcddt%各个元件的位置矩阵
global Xxiangdui danweilind

%% 在计算各个作用的时候需要的全局变量
global zuoyongwzdt  %作用位置矩阵
global jzlwzdt jbzhqdwzdt jbzhzdwzdt jzlowzdt %各个作用的位置矩阵
global zuoyongnd
global jzldxdt jzlodxdt jbzhdxdt  %各个作用的大小
global zuoyongndsum
global Fn



youhual=inputdlg('请设置优化对象n(从左至右数第n个)', '作用优化',1,{'2'});
if isempty(youhual)
    close(figure,'youhual');
else
    youhualn=str2double(youhual{1});
end

c14=size(gdjzzwzdt);
c15=size(gdzzwzdt);
c42=c14(2);
c52=c15(2);
n0=0;  %用于统计均布载荷的个数
yuanjianwzdt=[gdjzzwzdt gdzzwzdt gddwzdt];
[yuanjianwzstdt kst]=sort(yuanjianwzdt);  %kst为保留的原来元素的索引


if kst(youhualn)<=c42
    yuanjianwzhy=gdjzzwzdt(kst(youhualn));
elseif kst(youhualn)>c42&&kst(youhualn)<=(c42+c52)
    yuanjianwzhy=gdzzwzdt(kst(youhualn)-c42);
else
    yuanjianwzhy=gddwzdt(kst(youhualn)-c42-c52);
end

for kyhzyx=zgqdwzdt:0.01:(zgqdwzdt+zgcddt)
    n0=n0+1;
    yuanjianwzdt(kst(youhualn))=kyhzyx;
    if kst(youhualn)<=c42
        gdjzzwzdt(kst(youhualn))=kyhzyx;
    elseif kst(youhualn)>c42&&kst(youhualn)<=(c42+c52)
        gdzzwzdt(kst(youhualn)-c42)=kyhzyx;
    else
        gddwzdt(kst(youhualn)-c42-c52)=kyhzyx;
    end
    
    
    %% 求单位力在各个支座位置产生的挠度
    yuanjianwzdt=[gdjzzwzdt gdzzwzdt gddwzdt];
    ksum1=size(yuanjianwzdt);  %计算总的支座数
    ksum=ksum1(2);
    [yuanjianwzstdt kst]=sort(yuanjianwzdt);  %kst为保留的原来元素的索引
    
    
    
    %% 计算每个作用在每个支座处产生的挠度
%     zuoyongndsum=0;
    jbzhcddt=jbzhzdwzdt-jbzhqdwzdt;
    zuoyongwzdt=[jzlwzdt jzlowzdt (jbzhqdwzdt+jbzhcddt)./2]; %注意均布载荷的位置使用了其中点的坐标
    zuoyongdxdt=[jzldxdt jzlodxdt jbzhdxdt];
    ksum2=size(zuoyongwzdt);
    kzysum=ksum2(2);
    [zuoyongwzstdt,kst2]=sort(zuoyongwzdt);
    c11=size(jzlwzdt);
    c12=size(jzlowzdt);
    c13=size(jbzhqdwzdt);
    c1=c11(2);  %集中力的个数
    c2=c12(2);   %集中力偶个数
    c3=c13(2);   %均布载荷个数
    
    if isempty(gddwzdt)    %没有固定端时候执行的语句（即采用简支梁作为基本结构）
        Xxiangdui=yuanjianwzstdt(2:(ksum-1))-yuanjianwzstdt(1);  %计算出每一个支座相对于第一个支座的距离
        ZYxiangdui=zuoyongwzdt(1:kzysum)-yuanjianwzstdt(1);  %各个作用相对简支梁的第一个支座的位置
        l=zgcddt;
        %     l=yuanjianwzstdt(ksum)-yuanjianwzstdt(1);
        
        %% 在基本结构为简支梁的时候计算单位力在各个支座处产生的挠度
        for kX=1:(ksum-2)  %第kX个单位力
            a=Xxiangdui(kX);
            b=l-a;
            for t=1:(ksum-2)   %在地t个支座产生的挠度
                if t<=kX
                    danweilind(kX,t)=-b.*Xxiangdui(t)./(6*E*Iz.*l)*...
                        (l.^2-(Xxiangdui(t)).^2-b.^2);
                    
                else
                    danweilind(kX,t)=-b./(6.*E.*Iz.*l).*(l./b.*...
                        (Xxiangdui(t)-a).^3+(l.^2 -b.^2).*Xxiangdui(t)-Xxiangdui(t).^3);
                end
            end
        end
        
        %% 基本结构为简支梁的时候计算各个作用在各个支座处产生的挠度
        zuoyongndsum=zeros(1,ksum-2);
        zuoyongnd=zeros(kzysum,ksum-2);
        for kX=1:kzysum  %第kX个作用
            a=ZYxiangdui(kX);
            b=l-a;
            for t=1:(ksum-2)  %在第t个支座处产生的挠度
                if kX<=c1  %即该作用为集中力
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*b.*Xxiangdui(t)./(6*E*Iz.*l)*...
                            (l.^2-(Xxiangdui(t)).^2-b.^2);
                    else
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*b./(6.*E.*Iz.*l).*(l./b.*...
                            (Xxiangdui(t)-a).^3+(l.^2 -b.^2).*Xxiangdui(t)-Xxiangdui(t).^3);
                    end
                elseif kX>c1&&kX<=c1+c2  %即该作用为集中力偶
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=zuoyongdxdt(kX).*Xxiangdui(t)./(6*E.*Iz.*l).*...
                            (l.^2-3*b.^2-(Xxiangdui(t)).^2);
                    else
                        zuoyongnd(kX,t)=zuoyongdxdt(kX)./(6*E.*Iz.*l).*...
                            (-(Xxiangdui(t)).^3+3*l.*(Xxiangdui(t)-a).^2+Xxiangdui(t).*(l^2-3*b^2));
                    end
                    
                    
                else  %即该作用为均布载荷   d为各个系数
                    %约束为均布载荷中间不能有支座
                    tt=kX-c1-c2;
                    q=jbzhdxdt(tt);
                    d=jbzhcddt(tt);
                    fa=q.*d.*(b)./l;
                    fb=q.*d.*a./l;
                    xsc=[(a+d/2) -b+d/2;1 1];
                    bb=[fb./6.*(b-d/2).^3+q/24.*d.^4-fa/6.*(a+d/2).^3 q/6.*d.^3-fa/2.*(a+d/2).^2-fb/2.*(b-d/2).^2]';
                    cc=inv(xsc)*bb;
                    if Xxiangdui(t)<=a %即该支座在均布载荷的左边
                        zuoyongnd(kX,t)=(1/6.*fa.*Xxiangdui(t).^3+cc(1).*Xxiangdui(t))./(E.*Iz);
                    else   %该支座在均布载荷的右边
                        zuoyongnd(kX,t)=(1/6.*fb.*(l-Xxiangdui(t)).^3+cc(2).*(l-Xxiangdui(t)))./(E.*Iz);
                    end
                    
                end
            end
            zuoyongndsum=zuoyongnd(kX,:)+zuoyongndsum;   %即每个作用在各个支座处产生的挠度和，即得到所需的一个矩阵
        end
        
        %% 下面是解线性方程组来解出各个支座的作用反力
        danweilindinv=inv(danweilind);   %求单位力在各个支座产生的挠度的系数矩阵danweilind的逆
        Fn=-danweilindinv*(zuoyongndsum');  %求出各个支座的支座反力即Fn 对应的角标为元件的从小到大排序
        
        %% 下面开始计算各个要求的量 剪力（jianli），弯矩（wanju），挠度（naodu），转角（zhuanjiao）等
        jzlwzdt1=jzlwzdt-yuanjianwzstdt(1);   %各个作用相对简支梁第一个支座的位置
        jbzhqdwzdt1=jbzhqdwzdt-yuanjianwzstdt(1);
        jbzhzdwzdt1=jbzhzdwzdt-yuanjianwzstdt(1);
        
        % 下面计算两端两个支座的支座反力
        %FA是左端的支座反力,FB是右端的支座反力
        if isempty(Fn)   %判断是否是静不定问题
            if isempty(jzldxdt)  %判断是否有集中力
                if isempty(jzlodxdt)  %判断时候有集中力偶
                    if isempty(jbzhdxdt)  %判断是否有均布载荷
                    else
                        FB=-sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)./l;
                        FA=-sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt)./l;
                    end
                else
                    if isempty(jbzhdxdt)
                        FB=-sum(jzlodxdt)./l;
                        FA=sum(jzlodxdt)./l;
                    else
                        FB=-(sum(jzlodxdt)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt))./l;
                        FA=-(-sum(jzlodxdt)+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt))./l;
                    end
                end
            else
                if isempty(jzlodxdt)
                    if isempty(jbzhdxdt)
                        FB=-sum(jzldxdt.*jzlwzdt1)./l;
                        FA=-sum(jzldxdt.*(l-jzlwzdt1))./l;
                    else
                        FB=-(sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt))./l;
                        FA=-(sum(jzldxdt.*(l-jzlwzdt1))+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt))./l;
                    end
                else
                    if isempty(jbzhdxdt)
                        FB=-(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1))./l;
                        FA=-(-sum(jzlodxdt)+sum(jzldxdt.*(l-jzlwzdt1)))./l;
                    else
                        FB=-(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt))./l;
                        FA=-(-sum(jzlodxdt)+sum(jzldxdt.*(l-jzlwzdt1)+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt)))./l;
                    end
                end
            end
        else
            if isempty(jzldxdt)
                if isempty(jzlodxdt)
                    if isempty(jbzhdxdt)
                        FB=-sum(Fn'.*Xxiangdui)./l;
                        FA=-sum(Fn'.*(l-Xxiangdui))./l;
                    else
                        FB=-(sum(Fn'.*Xxiangdui)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt))./l;
                        FA=-(sum(Fn'.*(l-Xxiangdui))+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt))./l;
                    end
                else
                    if isempty(jbzhdxdt)
                        FB=-(sum(Fn'.*Xxiangdui)+sum(jzlodxdt))./l;
                        FA=-(sum(Fn'.*(l-Xxiangdui))-sum(jzlodxdt))./l;
                    else
                        FB=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)))./l;
                        FA=-(sum(Fn'.*(l-Xxiangdui))-(sum(jzlodxdt)+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt)))./l;
                    end
                end
            else
                if isempty(jzlodxdt)
                    if isempty(jbzhdxdt)
                        FB=-(sum(Fn'.*Xxiangdui)+sum(jzldxdt.*jzlwzdt1))./l;
                        FA=-(sum(Fn'.*(l-Xxiangdui))+sum(jzldxdt.*(l-jzlwzdt1)))./l;
                    else
                        FB=-(sum(Fn'.*Xxiangdui)+(sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)))./l;
                        FA=-(sum(Fn'.*(l-Xxiangdui))+(sum(jzldxdt.*(l-jzlwzdt))+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt)))./l;
                    end
                else
                    if isempty(jbzhdxdt)
                        FB=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)))./l;
                        FA=-(sum(Fn'.*(l-Xxiangdui))-(sum(jzlodxdt)+sum(jzldxdt.*(l-jzlwzdt1))))./l;
                    else
                        FB=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)))./l;
                        FA=-(sum(Fn'.*(l-Xxiangdui))-(sum(jzlodxdt)+sum(jzldxdt.*(l-jzlwzdt1)+sum((l-(jbzhqdwzdt1+jbzhzdwzdt1)/2).*jbzhdxdt.*jbzhcddt))))./l;
                    end
                end
            end
        end
        
        
        zongwzdt1=[yuanjianwzstdt(1:ksum) jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt];  %均布载荷有起点和终点
        zongdxdt1=[FA Fn' FB jzldxdt jzlodxdt jbzhdxdt];  %zongdxdt 和 zongwzdt1的下角标一一对应
        zongzydxdt1=[Fn' jzldxdt jzlodxdt jbzhdxdt];
        zongzywzdt =[yuanjianwzstdt(2:ksum-1) jzlwzdt jzlowzdt jbzhqdwzdt];
        zongzydxdt=size(zongzydxdt1);
        kzongzydxdt=zongzydxdt(2);
        cc=size(Fn);
        c4=cc(1);
        
        
        [zongwzdt,zongst]=sort(zongwzdt1);
        kzongsum1=size(zongwzdt);
        kzongsum=kzongsum1(2);    %简化为静定问题的总的作用个数
        a=zongzywzdt-yuanjianwzstdt(1);
        b=l-a;
        %判断每一个作用的种类
        
        %% 计算剪力   不要去判断载荷中间的支座，可以约束为不能那样输入
        v=zeros(m+1,1);
        theta=zeros(m+1,1);
        for kX=1:kzongsum-1
            x=linspace(zongwzdt(kX),zongwzdt(kX+1),m+1);  %分别计算每一个小段
            h=(zongwzdt(kX+1)-zongwzdt(kX))./m;
            s0=0;  %剪力初值
            wanju0=0;  %弯矩初值
            for t=1:kX  %计算该小段前面的力之和
                if zongst(t)<=(ksum+c1)   %判断第t个作用的种类  即为集中力
                    s0=s0+zongdxdt1(zongst(t));
                    wanju0=wanju0+zongdxdt1(zongst(t)).*(x-zongwzdt1(zongst(t)));
                elseif zongst(t)<=(ksum+c1+c2)&&zongst(t)>(ksum+c1)  %此时为集中力偶
                    wanju0=wanju0-zongdxdt1(zongst(t));
                    %力偶不改变剪力的大小
                else     %此时为均布载荷
                    if zongst(t)>(ksum+c1+c2+c3)  %该点为均布载荷的终点
                        %也就是，对于均布载荷只计算一次  省略s0=s0,wanju0=wanju0
                    else
                        if t==kX
                            %省略s0=s0 wanju0=wanju0
                        else
                            s0=s0+zongdxdt1(zongst(t)).*jbzhcddt(zongst(t)-ksum-c1-c2);
                            wanju0=wanju0+(zongdxdt1(zongst(t)).*(jbzhcddt(zongst(t)-ksum-c1-c2)).*(x-(zongwzdt1(zongst(t))+jbzhcddt(zongst(t)-ksum-c1-c2)/2)));
                        end
                        
                    end
                    
                end
            end
            
            %该段的剪力弯矩
            if zongst(kX)>(ksum+c1+c2)&&zongst(kX)<=(ksum+c1+c2+c3)  %判断是不是均布载荷
                jianli=(zongdxdt1(zongst(kX)).*(x-zongwzdt(kX))+s0).*ones(size(x));
                wanju=-wanju0-(zongdxdt1(zongst(kX))*((x-zongwzdt(kX)).^2)/2);
            elseif zongst(kX)>(ksum+c1+c2+c3)
                jianli=s0.*ones(size(x));
                wanju=-wanju0;
            else
                a0=size(x);
                jianli=s0.*ones(1,a0(2));
                wanju=-wanju0;
            end
            a0=size(x);
            jianli=s0.*ones(1,a0(2));
            wanju=-wanju0;
            jianliopt(kX,:)=jianli;
            jianliwzopt(kX,:)=x;
            wanjuopt(kX,:)=wanju;
            wanjuwzopt(kX,:)=x;
            %% 下面使计算挠度
            kk=size(x);
            theta=zeros(1,kk(2));
            vsum=zeros(1,kk(2));
            %%
            for t=1:kzongzydxdt
                if t<=c4+c1  %c1为集中力的个数 c4为支座反力的个数
                    if x<=zongzywzdt(t)  %t处为集中力
                        vsum=vsum-zongzydxdt1(t).*b(t).*x./(6*E*Iz.*l).*...
                            (l.^2-(x).^2-(b(t)).^2);
                        theta=theta-zongzydxdt1(t).*b(t)./(6*E*Iz.*l).*...
                            (l.^2-3.*(x).^2-(b(t)).^2);
                    else
                        vsum=vsum-zongzydxdt1(t).*b(t)./(6.*E.*Iz.*l).*(l./b(t).*...
                            (x-a(t)).^3+(l.^2 -(b(t)).^2).*x-x.^3);
                        theta=theta-zongzydxdt1(t).*b(t)./(6.*E.*Iz.*l).*(l./b(t).*...
                            3.*(x-a(t)).^2+(l.^2 -(b(t)).^2)-3.*x.^2);
                    end
                elseif t>c4+c1&&t<=c4+c1+c2  %t为集中力偶
                    if x<=zongzywzdt(t)
                        vsum=vsum+zongzydxdt1(t).*x./(6*E.*Iz.*l).*...
                            (l.^2-3*(b(t)).^2-(x).^2);
                        theta=theta+zongzydxdt1(t)./(6*E.*Iz.*l).*(l.^2-3*b(t).^2-3.*(x).^2);
                    else
                        vsum=vsum+zongzydxdt1(t)./(6*E.*Iz.*l).*...
                            (-(x).^3+3.*l.*(x-a(t)).^2+(l^2-3.*(b(t)).^2).*x);
                        theta=theta+zongzydxdt1(t)./(6*E.*Iz.*l).*...
                            (-3.*(x).^2+6*l.*(x-a(t))+(l^2-3*b(t)^2));
                    end
                elseif t>c4+c1+c2&&t<=c4+c1+c2+c3%此处为均布载荷
                    tt=zongst(t)-c4-c1-c2;
                    q=zongzydxdt1(t);
                    d=jbzhcddt(t-c4-c1-c2);
                    fa=q.*d.*(b(t)-d/2)./l;
                    fb=q.*d.*(a(t)+d/2)./l;
                    xsc=[(a(t)+d) -b(t)+d;1 1];
                    bb=[fb./6.*(b(t)-d).^3+q/24.*d.^4-fa/6.*(a(t)+d).^3 q/6.*d.^3-fa/2.*(a(t)+d).^2-fb/2.*(b(t)-d).^2]';
                    cc=inv(xsc)*bb;
                    if x<=zongzywzdt(t)  %即该支座在均布载荷的左边
                        vsum=vsum+(1/6.*fa.*x.^3+cc(1).*x)./(E.*Iz);
                        theta=theta+(1./2.*fa.*x.^2+cc(1))./(E.*Iz);
                    elseif x(1)>=zongzywzdt(t)&&x(m+1)<=(zongzywzdt(t)+jbzhcddt(t-c4-c1-c2))&&x(1)~=x(m+1)  %该支座在均布载荷之间
                        vsum=vsum+(1/6.*fa.*x.^3+cc(1).*x-q./24.*(x-a(t)).^4)./(E.*Iz);
                        theta=theta+(1./2.*fa.*x.^2+cc(1)-q./6.*(x-a(t)).^3)./(E.*Iz);
                    else   %该支座在均布载荷的右边
                        vsum=vsum+(1/6.*fb.*(l-x).^3+cc(2).*(l-x))./(E.*Iz);
                        theta=theta-(1/2.*fb.*(l-x).^2+cc(2))./(E.*Iz);
                    end
                else
                end
                
            end
            vsumopt(kX,:)=vsum;
            vsumwzopt(kX,:)=x;
            thetaopt(kX,:)=theta;
            thetawzopt(kX,:)=x;
            
        end
        
        
    else
        
        %% 下面是基本结构为固定端的时候计算单位力在各个支座的位置产生的挠度
        zgzdwzdt=zgqdwzdt+zgcddt;
        l=zgcddt;
        if gddwzdt==yuanjianwzstdt(1)  %有固定端且在最左端的时候执行
            Xxiangdui=yuanjianwzstdt(2:ksum)-yuanjianwzstdt(1);
        else  %有固定端且在最右端的时候执行
            Xxiangdui=yuanjianwzstdt(ksum)-yuanjianwzstdt(1:ksum-1);
        end%有固定端的时候执行（即采用固定端作为基本结构）
        ZYxiangdui=abs(gddwzdt-zuoyongwzdt(1:kzysum));
        
        for kX=1:ksum-1  %第kX个单位力
            a=Xxiangdui(kX);
            for t=1:ksum-1  %在第t个力处产生的挠度
                if t<=kX
                    danweilind(kX,t)=-(Xxiangdui(t)).^2./(6*E.*Iz).*(3*a-Xxiangdui(t));
                else
                    danweilind(kX,t)=-a.^2./(6*E*Iz).*(3*Xxiangdui(t)-a);
                end
            end
        end
        
        %% 以下是基本结构为固定端的时候计算各个作用在各个支座处产生的挠度
        zuoyongndsum=zeros(1,ksum-1);
        zuoyongnd=zeros(kzysum,ksum-1);
        for kX=1:kzysum  %第kX个作用
            a=ZYxiangdui(kX);
            b=l-a;
            for t=1:(ksum-1)  %在第t个力处产生的挠度
                if kX<=c1  %即该作用为集中力
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*(Xxiangdui(t)).^2./(6*E.*Iz).*(3*a-Xxiangdui(t));
                    else
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*a.^2./(6*E*Iz).*(3*Xxiangdui(t)-a);
                    end
                elseif kX>c1&&kX<=c1+c2  %即该作用为集中力偶
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*(Xxiangdui(t)).^2./(2*E.*Iz);
                    else
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*a./(E.*Iz).*((Xxiangdui(t)-a)+a/2);
                    end
                    
                    
                else  %即该作用为均布载荷
                    
                    tt=kX-c1-c2;
                    q=jbzhdxdt(tt);
                    d=jbzhcddt(tt);
                    ma=q.*d.*(a);
                    fa=q.*d;
                    if Xxiangdui(t)<=a
                        zuoyongnd(kX,t)=-((1/2.*ma.*Xxiangdui(t).^2-1/6.*fa.*Xxiangdui(t).^3))./(E.*Iz);
                    else
                        zuoyongnd(kX,t)=-(((1/2.*ma.*(a+d/2).^2-1/6.*fa.*(a+d/2).^3+q./24.*(d).^4))./(E.*Iz)+...
                            (ma*(a+d/2)-1/2*fa*(a+d/2).^2+q/6*d.^3)*(Xxiangdui(t)-(a+d/2))./(E.*Iz));
                    end
                    
                end
            end
            zuoyongndsum=zuoyongnd(kX,:)+zuoyongndsum;
        end
        %% 下面是解线性方程组来解出各个支座的作用反力
        danweilindinv=inv(danweilind);   %求单位力在各个支座产生的挠度的系数矩阵danweilind的逆
        Fn=-danweilindinv*(zuoyongndsum');  %求出各个支座的支座反力即Fn 对应的角标为元件的从小到大排序
        
        %% 下面开始计算各个要求的量 剪力（jianli），弯矩（wanju），挠度（naodu），转角（zhuanjiao）等
        jzlwzdt1=jzlwzdt-yuanjianwzstdt(1);
        jzlowzdt1=jzlowzdt-yuanjianwzstdt(1);
        jbzhqdwzdt1=jbzhqdwzdt-yuanjianwzstdt(1);
        jbzhzdwzdt1=jbzhzdwzdt-yuanjianwzstdt(1);
        
        % 下面计算两端两个支座的支座反力
        %FA是左端的支座反力,FB是右端的支座反力
        if isempty(Fn)   %判断是否是静不定问题
            if isempty(jzldxdt)  %判断是否有集中力
                if isempty(jzlodxdt)  %判断时候有集中力偶
                    if isempty(jbzhdxdt)  %判断是否有均布载荷
                    else
                        MA=-sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt);
                        FA=-sum(jbzhdxdt.*jbzhcddt);
                    end
                else
                    if isempty(jbzhdxdt)
                        MA=-sum(jzlodxdt);
                        FA=0;
                    else
                        MA=-(sum(jzlodxdt)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt));
                        FA=-(sum(jbzhdxdt.*jbzhcddt));
                    end
                end
            else
                if isempty(jzlodxdt)
                    if isempty(jbzhdxdt)
                        MA=-sum(jzldxdt.*jzlwzdt1);
                        FA=-sum(jzldxdt);
                    else
                        MA=-(sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt));
                        FA=-(sum(jzldxdt)+sum(jbzhdxdt.*jbzhcddt));
                    end
                else
                    if isempty(jbzhdxdt)
                        MA=-(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1));
                        FA=-(sum(jzldxdt));
                    else
                        MA=-(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt));
                        FA=-(sum(jzldxdt+sum(jbzhdxdt.*jbzhcddt)));
                    end
                end
            end
        else
            if isempty(jzldxdt)
                if isempty(jzlodxdt)
                    if isempty(jbzhdxdt)
                        MA=-sum(Fn'.*Xxiangdui);
                        FA=-sum(Fn);
                    else
                        MA=-(sum(Fn'.*Xxiangdui)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt));
                        FA=-(sum(Fn)+sum(jbzhdxdt.*jbzhcddt));
                    end
                else
                    if isempty(jbzhdxdt)
                        MA=-(sum(Fn'.*Xxiangdui)+sum(jzlodxdt));
                        FA=-(sum(Fn));
                    else
                        MA=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)));
                        FA=-(sum(Fn)+sum(jbzhdxdt.*jbzhcddt));
                    end
                end
            else
                if isempty(jzlodxdt)
                    if isempty(jbzhdxdt)
                        MA=-(sum(Fn'.*Xxiangdui)+sum(jzldxdt.*jzlwzdt1));
                        FA=-(sum(Fn)+sum(jzldxdt));
                    else
                        MA=-(sum(Fn'.*Xxiangdui)+(sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)));
                        FA=-(sum(Fn)+(sum(jzldxdt)+sum(jbzhdxdt.*jbzhcddt)));
                    end
                else
                    if isempty(jbzhdxdt)
                        MA=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)));
                        FA=-(sum(Fn)+(sum(jzldxdt)));
                    else
                        MA=-(sum(Fn'.*Xxiangdui)+(sum(jzlodxdt)+sum(jzldxdt.*jzlwzdt1)+sum((jbzhqdwzdt1+jbzhzdwzdt1)/2.*jbzhdxdt.*jbzhcddt)));
                        FA=-(sum(Fn)+(sum(jzldxdt+sum(jbzhdxdt.*jbzhcddt))));
                    end
                end
            end
        end
        
        zongwzdt1=[yuanjianwzstdt(1:ksum) jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt];  %均布载荷有起点和终点
        zongdxdt1=[FA Fn' jzldxdt jzlodxdt jbzhdxdt];  %zongdxdt 和 zongwzdt1的下角标一一对应
        zongzydxdt1=[Fn' jzldxdt jzlodxdt jbzhdxdt];
        zongzywzdt =[yuanjianwzstdt(2:ksum) jzlwzdt jzlowzdt jbzhqdwzdt];
        zongzydxdt=size(zongzydxdt1);
        kzongzydxdt=zongzydxdt(2);
        cc=size(Fn);
        c4=cc(1);
        cc2=size(jbzhdxdt);
        c6=cc2(2);
        
        [zongwzdt,zongst]=sort(zongwzdt1);
        kzongsum1=size(zongwzdt);
        kzongsum=kzongsum1(2);    %简化为静定问题的总的作用个数
        Zxiangdui=zongwzdt-yuanjianwzstdt(1); %各个作用相对简支梁的第一个支座的距离
        a=zongzywzdt-yuanjianwzstdt(1);
        b=l-a;
        %判断每一个作用的种类
        
        %% 计算剪力   不要去判断载荷中间的支座，可以约束为不能那样输入
        
        for kX=1:kzongsum-1
            x=linspace(zongwzdt(kX),zongwzdt(kX+1),m+1);  %分别计算每一个小段
            s0=0;
            wanju0=MA;
            for t=1:kX  %计算该小段前面的力之和
                if zongst(t)<=(ksum+c1)   %判断第t个作用的种类  即为集中力
                    s0=s0+zongdxdt1(zongst(t));
                    wanju0=wanju0-zongdxdt1(zongst(t)).*(x-zongwzdt1(zongst(t)));
                elseif zongst(t)<=(ksum+c1+c2)&&zongst(t)>(ksum+c1)  %此时为集中力偶
                    wanju0=wanju0+zongdxdt1(zongst(t));
                    %力偶不改变剪力的大小
                else  %此时为均布载荷
                    if zongst(t)>(ksum+c1+c2+c3)  %该点为均布载荷的终点
                        %也就是，对于均布载荷只计算一次  省略s0=s0,wanju0=wanju0
                    else
                        if t==kX
                            %省略s0=s0 wanju0=wanju0
                        else
                            s0=s0+zongdxdt1(zongst(t)).*jbzhcddt(zongst(t)-ksum-c1-c2);
                            wanju0=wanju0-zongdxdt1(zongst(t)).*(jbzhcddt(zongst(t)-ksum-c1-c2)).*(x-(zongwzdt1(zongst(t))+jbzhcddt(zongst(t)-ksum-c1-c2)/2));
                        end
                    end
                end
            end
            if zongst(kX)>(ksum+c1+c2)&&zongst(kX)<=(ksum+c1+c2+c3)  %判断是不是均布载荷
                jianli=(zongdxdt1(zongst(kX)).*(x-zongwzdt(kX))+s0).*ones(size(x));
                wanju=-(wanju0-zongdxdt1(zongst(kX))*((x-zongwzdt(kX)).^2)/2);
            elseif zongst(kX)>(ksum+c1+c2+c3)
                jianli=s0.*ones(size(x));
                wanju=-wanju0;
            else
                jianli=s0.*ones(size(x));
                wanju=-wanju0;
            end
            jianliopt(kX,:)=jianli;
            jianliwzopt(kX,:)=x;
            wanjuopt(kX,:)=wanju;
            wanjuwzopt(kX,:)=x;
            
            
            %% 下面是计算挠度
            kk=size(x);
            theta=zeros(1,kk(2));
            vsum=zeros(1,kk(2));
            vsumopt=zeros(kzongsum,m+1);
            vsumwzopt=zeros(kzongsum,m+1);
            thetaopt=zeros(kzongsum,m+1);
            thetawzopt=zeros(kzongsum,m+1);
            
            for t=1:kzongzydxdt
                if t<=c4  %c4为支座反力的个数
                    if x<=zongzywzdt(t)  %t处为集中力
                        vsum=vsum-zongzydxdt1(t).*(x).^2./(6*E.*Iz).*(3*a(t)-x);
                        theta=theta-zongzydxdt1(t)./(6*E.*Iz).*(6*a(t).*x-3*x.^2);
                    else
                        vsum=vsum-zongzydxdt1(t).*a(t).^2./(6*E*Iz).*(3*x-a(t));
                        theta=theta-zongzydxdt1(t).*a(t).^2./(2*E*Iz);
                    end
                elseif t<=c4+c1&&t>c4  %集中力
                    if x<=zongzywzdt(t)  %t处为集中力
                        vsum=vsum-zongzydxdt1(t).*(x).^2./(6*E.*Iz).*(3*a(t)-x);
                        theta=theta-zongzydxdt1(t)./(6*E.*Iz).*(6*a(t).*x-3*x.^2);
                    else
                        vsum=vsum-zongzydxdt1(t).*a(t).^2./(6*E*Iz).*(3*x-a(t));
                        theta=theta-zongzydxdt1(t).*a(t).^2./(2*E*Iz);
                    end
                elseif t>c4+c1&&t<=c4+c1+c2  %t为集中力偶
                    if x<=zongzywzdt(t)
                        vsum=vsum-zongzydxdt1(t).*(x).^2./(2.*E.*Iz);
                        theta=theta-zongzydxdt1(t).*(x)./(E.*Iz);
                    else
                        vsum=vsum-zongzydxdt1(t).*a(t)./(E.*Iz).*((x-a(t))+a(t)/2);
                        theta=theta-zongzydxdt1(t).*a(t)./(E.*Iz);
                    end
                else
                    
                    tt=t-c1-c2-c4;
                    q=jbzhdxdt(tt);
                    d=jbzhzdwzdt(tt)-jbzhqdwzdt(tt);
                    ma=q.*d.*(a(t)+d./2);
                    fa=q.*d;
                    if x<=zongzywzdt(t);
                        vsum=vsum-((1/2.*ma.*x.^2-1/6.*fa.*x.^3))./(E.*Iz);
                        theta = theta-((ma.*x-1/2.*fa.*x.^2))./(E.*Iz);
                    elseif x(1)>=zongzywzdt(t)&&x(m+1)<=(zongzywzdt(t)+jbzhcddt(t-c4-c1-c2))&&x(1)~=x(m+1)  %x>=a(tt)&&x<=a(tt)+d;
                        vsum=vsum-((1/2.*ma.*x.^2-1/6.*fa.*x.^3+q./24.*(x-a(t)).^4))./(E.*Iz);
                        theta = theta-((ma.*x-1/2.*fa.*x.^2+q./6.*(x-a(t)).^3))./(E.*Iz);
                    else
                        vsum=vsum-((1/2.*ma.*(a(t)+d).^2-1/6.*fa.*(a(t)+d).^3+q./24.*(d).^4))./(E.*Iz)-...
                            (((ma.*(a(t)+d)-1/2.*fa.*(a(t)+d).^2+q./6.*(d).^3))./(E.*Iz)).*(x-a(t)-d);
                        theta=theta-(((ma.*(a(t)+d)-1/2.*fa.*(a(t)+d).^2+q./6.*(d).^3))./(E.*Iz));
                    end
                end
                
            end
            thetamo=theta(kk(2));
            vsummo=vsum(kk(2));
            vsumopt(kX,:)=vsum;
            vsumwzopt(kX,:)=x;
            thetaopt(kX,:)=theta;
            thetawzopt(kX,:)=x;
            
        end
        
        if zongwzdt(kzongsum)<zgzdwzdt   %绘制最后一个位置到直杆端点的图
            x=linspace(zongwzdt(kzongsum),zgzdwzdt,m+1);
            a11=size(x);
            jianli=zeros(1,a11(2));
            wanju=zeros(1,a11(2));
            wanjuopt(kzongsum,:)=wanju;
            jianliopt(kzongsum,:)=jianli;
            jianliwzopt(kzongsum,:)=x;
            wanjuwzopt(kzongsum,:)=x;
            theta=thetamo.*ones(1,a11(2));
            vsum=vsummo+tan(thetamo).*(x-zongwzdt(kzongsum));
        end
        vsumopt(kzongsum,:)=vsum;
        vsumwzopt(kzongsum,:)=x;
        thetaopt(kzongsum,:)=theta;
        thetawzopt(kzongsum,:)=x;
        
    end
            vsumopt

    
    
       %%
    
    %大小的reshape
    jianlirsp=reshape(jianliopt',1,[]);
    wanjursp=reshape(wanjuopt',1,[]);
    thetarsp=reshape(thetaopt',1,[]);
    vsumrsp=reshape(vsumopt',1,[]);
    
    
    jianlimax2=max(abs(jianlirsp));
    wanjumax2=max(abs(wanjursp));
    thetamax2 =max(abs(thetarsp));
    vsummax2  =max(abs(vsumrsp));
    
    jianliy(n0)=jianlimax2;
    wanjuy(n0)=wanjumax2;
    thetay(n0)=thetamax2;
    vsumy(n0)=vsummax2;
    
    %%
    
    
end
kyhzyx=zgqdwzdt:0.01:(zgqdwzdt+zgcddt);
hf5=figure(5);
set(hf5,'NumberTitle','off','Name','作用位置优化','Menu','none','ToolBar','figure');
% line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2);
plot(kyhzyx,vsumy);


if kst(youhualn)<=c42
        gdjzzwzdt(kst(youhualn))=yuanjianwzhy;
    elseif kst(youhualn)>c42&&kst(youhualn)<=(c42+c52)
        gdzzwzdt(kst(youhualn)-c42)=yuanjianwzhy;
    else
        gddwzdt(kst(youhualn)-c42-c52)=yuanjianwzhy;
end



% --------------------------------------------------------------------
function chushishezhi_Callback(hObject, eventdata, handles)
% hObject    handle to chushishezhi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function kuaijiecandanm_Callback(hObject, eventdata, handles)  %快捷菜单
% hObject    handle to kuaijiecandanm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ht
global hk0
if mod(hk0,2)==0
ht=uitoolbar;
set(ht,'Visible','on');
ht11=uipushtool(ht);
ht12=uipushtool(ht);
ht13=uipushtool(ht);
ht15=uipushtool(ht);

ht31=uipushtool(ht);
ht32=uipushtool(ht);
ht34=uipushtool(ht);

ht21=uipushtool(ht);
ht22=uipushtool(ht);
ht23=uipushtool(ht);
ht24=uipushtool(ht);

ht11t=imread('固定支座.bmp');
ht12t=imread('滚动支座.bmp');
ht13t=imread('固定端.bmp');
ht15t=imread('直杆.bmp');

ht31t=imread('集中力.bmp');
ht32t=imread('均布载荷.bmp');
ht34t=imread('集中力偶.bmp');

ht21t=imread('矩形.bmp');
ht22t=imread('圆形.bmp');
ht23t=imread('环形.bmp');
ht24t=imread('工字型.bmp');

set(ht11,'CData',ht11t,'Separator','on','TooltipString','固定铰支座','Tag','ht11tg','ClickedCallBack',@gudingjiaozhizuom_Callback);
set(ht12,'CData',ht12t,'Separator','on','TooltipString','滚动支座','Tag','ht12tg','ClickedCallBack',@gundongzhizuom_Callback);
set(ht13,'CData',ht13t,'Separator','on','TooltipString','固定端','Tag','ht13tg','ClickedCallBack',@gudingduanm_Callback);
set(ht15,'CData',ht15t,'Separator','on','TooltipString','直杆','Tag','ht15tg','ClickedCallBack',@zhiganm_Callback);

set(ht31,'CData',ht31t,'Separator','on','TooltipString','集中力','Tag','ht11tg','ClickedCallBack',@jizhonglim_Callback);
set(ht32,'CData',ht32t,'Separator','on','TooltipString','均布载荷','Tag','ht12tg','ClickedCallBack',@junbuzaihem_Callback);
set(ht34,'CData',ht34t,'Separator','on','TooltipString','集中力偶','Tag','ht14tg','ClickedCallBack',@jizhonglioum_Callback);

set(ht21,'CData',ht21t,'Separator','on','TooltipString','矩形','Tag','ht21tg','ClickedCallBack',@juxingm_Callback);
set(ht22,'CData',ht22t,'Separator','on','TooltipString','圆形','Tag','ht22tg','ClickedCallBack',@yuanxingm_Callback);
set(ht23,'CData',ht23t,'Separator','on','TooltipString','环形','Tag','ht23tg','ClickedCallBack',@huanxingm_Callback);
set(ht24,'CData',ht24t,'Separator','on','TooltipString','工字型','Tag','ht24tg','ClickedCallBack',@gongzixingm_Callback);
else 
    set(ht,'Visible','off');
end
hk0=hk0+1;


% --------------------------------------------------------------------
function uipushtool7_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
dakaim_Callback;


% --------------------------------------------------------------------
function uipushtool8_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
baocunm_Callback;


% --------------------------------------------------------------------
function uipushtool9_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
kuaijiecandanm_Callback;
