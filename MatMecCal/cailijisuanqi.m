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
[fengmian,map]=imread('����.bmp');
fm=figure;
set(fm,'Menu','none','Name','','NumberTitle','off','Resize','off');
ha=axes('Position',[0 0 1 1]);
image(fengmian)
axis off
pause(2);
close;








global buttondown zuobiaodt %�������е�ȫ�ֱ��� buttondown�������ƣ�zuobiaodt�ǿ��ƽ����С�ı���
global gdjzzwzdt gdzzwzdt gddwzdt zgqdwzdt zgcddt jlwzdt %��Ԫ����λ�þ�����ƴ������ĸ+wzdt��ɣ�ֻ��ֱ�˻��и�����λ����
global   jxk jxg yxb jizhonglidt junbuzaihedt xianxingzaihedt %���õ�λ����������ƴ������ĸ+wzdt���
%global  %���õĴ�С��������ƴ��+dxdt���
global zuoyongzl %��������
global  E u G %һЩ��������
global k k1 %��������,kΪԪ������������� ��k1Ϊ���ü�������

global m  %nΪ���þ���mΪÿһ�����õ����ø���
%n1Ϊ��������n2Ϊ�����غɣ�n3Ϊ�����غɣ�n4Ϊ�����غɣ�n5Ϊ������ż��n6Ϊ������ż��n7Ϊ������ż
global Iy Iz Wz Wy  Ip%����ȫ�ֱ���
global yuanjianzl  %Ԫ������
global hk0
hk0=0;
buttondown=0;
zuobiaodt=1;%�����ʼ����Ĵ�С 
%��ʼ��ȫ�ֱ����������ʼֵ��
E=200*10^9;
u=0.3;
G=E/2*(1+u);
m=100;
Iz=1.0417e-006;
yuanjianzl=5;
zuoyongzl=7;
%% ��������
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
function guanyum_Callback(hObject, eventdata, handles)  %���� ��Ȩ����
% hObject    handle to guanyum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% open('����.txt');
[guanyu,map]=imread('����.bmp');
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
open('����.doc');



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
function gudingjiaozhizuom_Callback(hObject, eventdata, handles)  %�̶���֧������
% hObject    handle to gudingjiaozhizuom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt hg %�ṹ�壬ͼ��
global gdjzzwzdt %�̶���֧����λ�þ���
global k %��������
gudingjiaozhizuo=inputdlg('������̶���֧����λ�ã�����m��','�̶���֧��',1,{'0'});
if isempty(gudingjiaozhizuo)
    close(figure,'gudingjiaozhizuom');
else
    hg(1)=hggroup;
    gdjzzwzdt(k(1))=str2double(gudingjiaozhizuo{1});
    if gdjzzwzdt(k(1))>zuobiaodt
        warndlg('�����ó�ʼ�����еĽ����С','����');
    else
        r=0.03;
        s=0.03;
        %�����ǻ��ƹ̶���֧��ͼ
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
function gundongzhizuom_Callback(hObject, eventdata, handles)  %����֧������
% hObject    handle to gundongzhizuom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt
global k  %��������
global gdzzwzdt  hg%����֧��λ�þ���gundongzhizuost Ϊͼ�Ľṹ��
gundongzhizuo=inputdlg('���������֧����λ�ã�����m��','����֧��',1,{'0'});
kong=cell2mat(gundongzhizuo);
if isempty(kong)
    close(figure,'gundongzhizuom');
else
    %     gundongzhizuo1=gundongzhizuo{1};
    % if abs(gundongzhizuo1)<abs('0')||abs(gundongzhizuo1)>abs('9')
    %    errordlg('����������','����');
    gdzzwzdt(k(2))=str2double(gundongzhizuo{1});
    if gdzzwzdt(k(2))>zuobiaodt
        warndlg('�����ó�ʼ�����еĽ����С','����');
    else
        zhizuobianchang=0.03;
        s=0.03;
        %���ƹ���֧����ͼ
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
function gudingduanm_Callback(hObject, eventdata, handles)  %�̶��˺���
% hObject    handle to gudingduanm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt 
global gddwzdt  hg %�̶���λ�þ���
global k  %��������
gudingduan=inputdlg('������̶��˵�λ�ã�����m��','�̶���',1,{'0'});
kong=cell2mat(gudingduan);
if isempty(kong)
    close(figure,'gudingduanm');
else
    gddwzdt(k(3)) = str2double(gudingduan{1});
    if gddwzdt(k(3))>zuobiaodt
        warndlg('�����ó�ʼ�����еĽ����С','����');
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
function zhiganm_Callback(hObject, eventdata, handles)   %ֱ�˺���
% hObject    handle to zhiganm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%����ֱ��
global zuobiaodt
global zgqdwzdt zgcddt hg%λ�ñ�������
global k  %��������
zhigan =inputdlg({'������ֱ�˵ĳ���(m)','�����������(m)'},'ֱ��',1,{'1','0'});%������㣬����
%kong=cell2mat(zhigan);
if isempty(zhigan)
    close(figure,'zhiganm');
else
    hg(4)=hggroup;
    zgqdwzdt(k(4)) = str2double(zhigan{2});
    zgcddt(k(4)) =str2double(zhigan{1});
    if zgcddt(k(4))>zuobiaodt
        warndlg('�����ó�ʼ�����еĽ����С','����');
    else
        zhiganst=line([zgqdwzdt(k(4)),zgqdwzdt(k(4))+zgcddt(k(4))],[zuobiaodt./2,zuobiaodt./2],...
            'Color','black','LineWidth',2,'Parent',hg(4));
        k(4)=k(4)+1;
    end

end




% --------------------------------------------------------------------
function jiaolianm_Callback(hObject, eventdata, handles)  %��������
% hObject    handle to jiaolianm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%���ƽ���ͼ
global zuobiaodt
global jlwzdt  hg %����λ�þ���
global k %��������
jiaolian=inputdlg('�����������λ��(����m)','����',1,{'0'});
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
global E Iz   %����
global gdjzzwzdt gdzzwzdt gddwzdt zgqdwzdt zgcddt%����Ԫ����λ�þ���
global jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt  %�������õ�λ�þ���
global jzldxdt jzlodxdt jbzhdxdt  %�������õĴ�С 
global data

[filename1, pathname1] = uigetfile( '*.fig','��ѡ��Ҫ�򿪵�fig�ļ�');
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
global E Iz   %����
global k k1
global gdjzzwzdt gdzzwzdt gddwzdt zgqdwzdt zgcddt%����Ԫ����λ�þ���
global jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt  %�������õ�λ�þ���
global jzldxdt jzlodxdt jbzhdxdt  %�������õĴ�С
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
function juxingm_Callback(hObject, eventdata, handles)   %������κ���
% hObject    handle to juxingm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)   
global jxk jxg Iz Iy Wy Wz
juxing=inputdlg({'��������εĿ�(mm)','��������εĸ�(mm)'},...
    '����',1,{'100','50'});
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
function yuanxingm_Callback(hObject, eventdata, handles)  %����Բ�κ���
% hObject    handle to yuanxingm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global yxz Iz Iy Wy Wz Ip
yuanxing=inputdlg('������Բ��ֱ��(mm)','Բ��',1,{'50'});
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
function gongzixingm_Callback(hObject, eventdata, handles)  %���湤���ͺ��� ����δ����
% hObject    handle to gongzixingm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA) 
%������ȡexcel�е�����
global Iz Iy Wy Wz
gzx=inputdlg({'�����빤���͸��ͺ�(����ͺ�����a��b��c��ֱ���1��2,3����)'},...
    '������',1,{'10'});
if isempty(gzx)
    close(figure,'gzx');
else
    gzxxh=str2double(gzx{1});
    set(handles.juxingm,'Checked','off');
    set(handles.yuanxingm,'Checked','off');
    set(handles.gongzixingm,'Checked','on');
    set(handles.huanxingm,'Checked','off');
    suohao=xlsread('�����͸ֲ�����.xls','sheet2');
    kkk=find(suohao(:,1)==gzxxh);
    Iz=suohao(kkk,3);
    Wz=suohao(kkk,4);
    Iy=suohao(kkk,5);
    Wy=suohao(kkk,6); 
    
   
end

% --------------------------------------------------------------------
function huanxingm_Callback(hObject, eventdata, handles)  %���滷�κ���
% hObject    handle to huanxingm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Iz Iy Wy Wz Ip
huanxing=inputdlg({'�����뻷���⾶(mm)','�����뻷���ھ�(mm)'},'Բ��',1,{'100','50'});
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
function jizhonglim_Callback(hObject, eventdata, handles)  %����������
% hObject    handle to jizhonglim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt   hg1
global jzlwzdt jzldxdt %������λ�úʹ�С���ݾ���
global k1  %��������
F='F=';
danwei='kN';
jizhongli=inputdlg({'�����뼯������λ��(����m)','�����뼯�����Ĵ�С(kN)'},...
    '������',1,{'0','1'});
if isempty(jizhongli)
    close(figure,'jizhongli');
else
    hg1(1)=hggroup('ButtonDownFcn',@liBDF);
    jzlwzdt(k1(1))=str2double(jizhongli{1});
    jzldxdt(k1(1))=1000.*str2double(jizhongli{2});
    %�����ǻ��ƾ����غ�ͼ����line���Ƽ�ͷ
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
function junbuzaihem_Callback(hObject, eventdata, handles)   %�����غɺ���
% hObject    handle to junbuzaihem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt  hg1
global jbzhqdwzdt jbzhzdwzdt jbzhdxdt %�����غ����þ��������С����㣬�յ�
global k1 %��������
q='q=';
danwei='kN/m';
junbuzaihe=inputdlg({'����������غ����õ����(����m)','����������غ����õ��յ�(����m)','����������غɵĴ�С(kN/m)'},...
    '�����غ�',1,{'0','1','1'});
if isempty(junbuzaihe)
    close(figure,'junbuzaihe');
else
    hg1(2)=hggroup;
    jbzhqdwzdt(k1(2))=str2double(junbuzaihe{1});
    jbzhzdwzdt(k1(2))=str2double(junbuzaihe{2});
    jbzhdxdt(k1(2))  =1000.*str2double(junbuzaihe{3});
    %�����ǻ��ƾ����غ�ͼ��
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
function xianxingzaihem_Callback(hObject, eventdata, handles)  %�����غɺ���
% hObject    handle to xianxingzaihem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt  hg1
global xxzhqdwzdt xxzhzdwzdt xxzhqddxdt xxzhzddxdt  %�����غɵ�����
global k1  %��������
xianxingzaihe=inputdlg({'�����������غ����õ����(����m)','�����������غ����õ��յ�(����m)',...
    '�����������غ����Ĵ�С(kN/m)','�����������غ��յ�Ĵ�С(kN/m)'},...
    '�����غ�',1,{'0','1','0','1'});
if isempty(xianxingzaihe)
    close(figure,'xianxingzaihe');
else
    hg1(3)=hggroup;
    xxzhqdwzdt(k1(3))=str2double(xianxingzaihe{1});
    xxzhzdwzdt(k1(3))=str2double(xianxingzaihe{2});
    xxzhqddxdt(k1(3))=str2double(xianxingzaihe{3});
    xxzhzddxdt(k1(3))=str2double(xianxingzaihe{4});
    %�����ǻ��������غɵ�ͼ��
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
function jizhonglioum_Callback(hObject, eventdata, handles)  %������ż����
% hObject    handle to jizhonglioum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt hg1
global jzlowzdt jzlodxdt  %������ż��������������С��λ��
global k1 %��������
M='M=';
danwei='kN/m';
jizhongliou=inputdlg({'�����뼯����ż��λ��(����m)','�����뼯����ż�Ĵ�С(kN.m)'},...
    '������ż',1,{'0','1'});%˳ʱ��Ϊ��
if isempty(jizhongliou)
    close(figure,'jizhongliou');
else
    hg1(4)=hggroup;
    jzlowzdt(k1(4))=str2double(jizhongliou{1});
    jzlodxdt(k1(4))=1000.*str2double(jizhongliou{2});
    %�����ǻ��ƾ����غ�ͼ����line���Ƽ�ͷ
    hold on;
    arrow.l1=line([1,1].*jzlowzdt(k1(4)),...
        [0.55,0.45].*zuobiaodt,...
        'Color','black','LineWidth',1.5,'Parent',hg1(4));%��ͷ����
    arrow.l2=line([jzlowzdt(k1(4)),jzlowzdt(k1(4))+0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))],[0.55,0.55].*zuobiaodt,...
        'Color','black','LineWidth',1.5,'Parent',hg1(4));
    arrow.l3=line([jzlowzdt(k1(4)),jzlowzdt(k1(4))-0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))],[0.45,0.45].*zuobiaodt,...
        'Color','black','LineWidth',1.5,'Parent',hg1(4));%��ͷ����
    %���»��Ƽ�ͷ
    r=0.01*zuobiaodt;
    a=pi/6;
    %�ϰ벿�ֵļ�ͷ
    arrow.a=line([jzlowzdt(k1(4))+0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4)))),...
        jzlowzdt(k1(4))+0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))-r.*cos(a).*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))],...
        [0.55*zuobiaodt,0.55*zuobiaodt+r*sin(a)],...
        'Color','black','LineWidth',1.5,'Parent',hg1(4));
    arrow.a=line([jzlowzdt(k1(4))+0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4)))),...
        jzlowzdt(k1(4))+0.05*zuobiaodt.*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))-r.*cos(a).*(jzlodxdt(k1(4))./abs(jzlodxdt(k1(4))))],...
        [0.55*zuobiaodt,0.55*zuobiaodt-r*sin(a)],...
        'Color','black','LineWidth',1.5,'Parent',hg1(4));
    %�°벿�ֵļ�ͷ
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
function plotarea1_CreateFcn(hObject, eventdata, handles)   %�����Ҽ��������
% hObject    handle to plotarea1 (see GCBO) 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
xlabel('��������/m');
hyjcd=uicontextmenu;
uimenu(hyjcd,'Label','���ȫ��','CallBack',@qingchu_CallBack);
uimenu(hyjcd,'Label','�������','CallBack',@qingchu_CallBack1);
uimenu(hyjcd,'Label','����ı�','CallBack',@qingchu_CallBack2);


set(gca,'uicontextmenu',hyjcd);




function qingchu_CallBack(hObject, eventdata, handles)
qingchu_CallBack1
qingchu_CallBack2


function qingchu_CallBack1(hObject, eventdata, handles)
%�Ҽ���������Ļص�����
global zuobiaodt
qcdx=findall(gca,'Type','line');
qcbz=findall(gca,'Type','text');
delete(qcdx);
delete(qcbz);
zuobiao2=zuobiaodt;
clear global;

global buttondown zuobiaodt %�������е�ȫ�ֱ��� buttondown�������ƣ�zuobiaodt�ǿ��ƽ����С�ı���
global gdjzzwzdt gdzzwzdt gddwzdt zgqdwzdt zgcddt jlwzdt %��Ԫ����λ�þ�����ƴ������ĸ+wzdt��ɣ�ֻ��ֱ�˻��и�����λ����
global   jxk jxg yxb jizhonglidt junbuzaihedt xianxingzaihedt %���õ�λ����������ƴ������ĸ+wzdt���
%global  %���õĴ�С��������ƴ��+dxdt���
global zuoyongzl %��������
global  E u G %һЩ��������
global k k1 %��������,kΪԪ������������� ��k1Ϊ���ü�������

global m  %nΪ���þ���mΪÿһ�����õ����ø���
%n1Ϊ��������n2Ϊ�����غɣ�n3Ϊ�����غɣ�n4Ϊ�����غɣ�n5Ϊ������ż��n6Ϊ������ż��n7Ϊ������ż
global Iy Iz Wz Wy  Ip%����ȫ�ֱ���
global yuanjianzl  %Ԫ������
global hk0
hk0=0;
buttondown=0;
zuobiaodt=zuobiao2;%�����ʼ����Ĵ�С
%��ʼ��ȫ�ֱ����������ʼֵ��
E=200*10^9;
u=0.3;
G=E/2*(1+u);
m=100;
Iz=1.0417e-006;
yuanjianzl=5;
zuoyongzl=7;
%% ��������
k=ones(1,yuanjianzl);
k1=ones(1,zuoyongzl);
@cailijisuanqi_OpeningFcn;

function qingchu_CallBack2(hObject, eventdata, handles)
qbtxt=findobj('Style','text');
set(qbtxt,'Visible','off');





% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function zhujiemian_WindowButtonDownFcn(hObject, eventdata, handles)  %�ж�������İ�������
% hObject    handle to zhujiemian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%�����Ӧ
global buttondown pos
if strcmp(get(gcf,'SelectionType'),'normal')  %�ж��Ƿ��ǰ������
    buttondown =1;
     pos=get(handles.plotarea1,'Currentpoint');%��ô�ʱ������
elseif strcmp(get(gcf,'SelectionType'),'alt')%�ж��Ƿ��ǰ����Ҽ�
    buttondown=2;
elseif strcmp(get(gcf,'SelectionType'),'open')%�ж��Ƿ���˫�����
    buttondown=3;
else strcmp(get(gcf,'SelectionType'),'extend')%�ж��Ƿ��ǰ����м�
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
function plotarea1_ButtonDownFcn(hObject, eventdata, handles)  %�����С���ú���
% hObject    handle to plotarea1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global buttondown zuobiaodt
switch buttondown
    case 3
        zuobiao=inputdlg('���������ͼ�δ�С������������Ŀ��(m)','������(m)',1,{'2'});
        kong=cell2mat(zuobiao);
        if isempty(kong)
            close(figure);
        else
            zuobiaodt=str2double(zuobiao{1});
            set(handles.plotarea1,'XLim',[-0.1.*zuobiaodt,1.1.*zuobiaodt],'YLim',[0,zuobiaodt]);
        end
end


% --- Executes during object creation, after setting all properties.
function zhujiemian_CreateFcn(hObject, eventdata, handles)  %���溯��
% hObject    handle to zhujiemian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called






% --- Executes on mouse press over figure background.
function zhujiemian_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to zhujiemian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





% --------------------------------------------------------------------
function chushijiemian_Callback(hObject, eventdata, handles)  %�����С����
% hObject    handle to chushijiemian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global zuobiaodt
zuobiao=inputdlg('���������ͼ�δ�С������������Ŀ��(m)','������(m)',1,{'2'});
%kong=cell2mat(zuobiao);
if isempty(zuobiao)
    close(figure);
else
    zuobiao1=zuobiao{1};
    % if abs(zuobiao1)<abs('0')||abs(zuobiao1)>abs('9')
    %    errordlg('����������','����');
    %  else
    zuobiaodt=str2double(zuobiao1);
    set(handles.plotarea1,'XLim',[-0.1.*zuobiaodt,1.1.*zuobiaodt],'YLim',[0,zuobiaodt]);
    % end
end



% --------------------------------------------------------------------
function E_Callback(hObject, eventdata, handles)  %����ģ������
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global E
txml=inputdlg({'�����뵯��ģ��ֵ(GPa)'},...
    '����ģ��ֵE',1,{'200'});
if isempty(txml)
    close(figure,'txml');
else
   E=str2double(txml{1}).*10.^9;

end


% --------------------------------------------------------------------
function u_Callback(hObject, eventdata, handles)  %���ɱ�
% hObject    handle to u (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global u
bsb=inputdlg({'�����벴�ɱ�'},...
    '���ɱ�u',1,{'0.3'});
if isempty(bsb)
    close(figure,'bsb');
else
   u=str2double(bsb{1});
end


% --- Executes on button press in jisuanpb.
function jisuanpb_Callback(hObject, eventdata, handles)   %���㺯��
% hObject    handle to jisuanpb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%% ���㵥λ���������Ӷ����õ���ȫ�ֱ���
% close all;
global m
global E Iz   %����
global yuanjianwzdt  %λ�þ���
global gdjzzwzdt gdzzwzdt gddwzdt jlwzdt zgqdwzdt zgcddt%����Ԫ����λ�þ���
global Xxiangdui danweilind

%% �ڼ���������õ�ʱ����Ҫ��ȫ�ֱ���
global zuoyongwzdt  %����λ�þ���
global jzlwzdt jbzhqdwzdt jbzhzdwzdt  jzlowzdt %�������õ�λ�þ���
global zuoyongnd
global jzldxdt jzlodxdt jbzhdxdt  %�������õĴ�С
global zuoyongndsum
global Fn
global zuobiaodt

fn='FN=';
MM='M=';
N='N';
M='N.m';

try 
    close ����ͼ ���ͼ ת��ͼ �Ӷ�ͼ
end


%% ��λ���ڸ���֧��λ�ò������Ӷ�
yuanjianwzdt=[gdjzzwzdt gdzzwzdt gddwzdt];
ksum1=size(yuanjianwzdt);  %�����ܵ�֧����
ksum=ksum1(2);
[yuanjianwzstdt kst]=sort(yuanjianwzdt);  %kstΪ������ԭ��Ԫ�ص�����



%% ����ÿ��������ÿ��֧�����������Ӷ�
zuoyongndsum=0;
jbzhcddt=jbzhzdwzdt-jbzhqdwzdt;
zuoyongwzdt=[jzlwzdt jzlowzdt (jbzhqdwzdt+jbzhcddt./2)]; %ע������غɵ�λ��ʹ�������е������
zuoyongdxdt=[jzldxdt jzlodxdt jbzhdxdt];
ksum2=size(zuoyongwzdt);
kzysum=ksum2(2);
c11=size(jzlwzdt);
c12=size(jzlowzdt);
c13=size(jbzhqdwzdt);
c1=c11(2);  %�������ĸ���
c2=c12(2);   %������ż����
c3=c13(2);   %�����غɸ���
n0=0;  %����ͳ�ƾ����غɵĸ���


if isempty(gddwzdt)    %û�й̶���ʱ��ִ�е���䣨�����ü�֧����Ϊ�����ṹ��
    Xxiangdui=yuanjianwzstdt(2:(ksum-1))-yuanjianwzstdt(1);  %�����ÿһ��֧������ڵ�һ��֧���ľ���
    ZYxiangdui=zuoyongwzdt(1:kzysum)-yuanjianwzstdt(1);  %����������Լ�֧���ĵ�һ��֧����λ��
    l=zgcddt;
%     l=yuanjianwzstdt(ksum)-yuanjianwzstdt(1);
    
    %% �ڻ����ṹΪ��֧����ʱ����㵥λ���ڸ���֧�����������Ӷ�
    for kX=1:(ksum-2)  %��kX����λ��
        a=Xxiangdui(kX);
        b=l-a;
        for t=1:(ksum-2)   %�ڵ�t��֧���������Ӷ�
            if t<=kX
                danweilind(kX,t)=-b.*Xxiangdui(t)./(6*E*Iz.*l)*...
                    (l.^2-(Xxiangdui(t)).^2-b.^2);
                
            else
                danweilind(kX,t)=-b./(6.*E.*Iz.*l).*(l./b.*...
                    (Xxiangdui(t)-a).^3+(l.^2 -b.^2).*Xxiangdui(t)-Xxiangdui(t).^3);
            end
        end
    end
    
    %% �����ṹΪ��֧����ʱ�������������ڸ���֧�����������Ӷ�
    zuoyongndsum=zeros(1,ksum-2);
    zuoyongnd=zeros(kzysum,ksum-2);
    for kX=1:kzysum  %��kX������
        a=ZYxiangdui(kX);
        b=l-a;
        for t=1:(ksum-2)  %�ڵ�t��֧�����������Ӷ�
            if kX<=c1  %��������Ϊ������
                if Xxiangdui(t)<=ZYxiangdui(kX)
                    zuoyongnd(kX,t)=-zuoyongdxdt(kX).*b.*Xxiangdui(t)./(6*E*Iz.*l)*...
                        (l.^2-(Xxiangdui(t)).^2-b.^2);
                else
                    zuoyongnd(kX,t)=-zuoyongdxdt(kX).*b./(6.*E.*Iz.*l).*(l./b.*...
                        (Xxiangdui(t)-a).^3+(l.^2 -b.^2).*Xxiangdui(t)-Xxiangdui(t).^3);
                end
            elseif kX>c1&&kX<=c1+c2  %��������Ϊ������ż
                if Xxiangdui(t)<=ZYxiangdui(kX)
                    zuoyongnd(kX,t)=zuoyongdxdt(kX).*Xxiangdui(t)./(6*E.*Iz.*l).*...
                        (l.^2-3*b.^2-(Xxiangdui(t)).^2);
                else
                    zuoyongnd(kX,t)=zuoyongdxdt(kX)./(6*E.*Iz.*l).*...
                        (-(Xxiangdui(t)).^3+3*l.*(Xxiangdui(t)-a).^2+Xxiangdui(t).*(l^2-3*b^2));
                end
                
              
            else  %��������Ϊ�����غ�   dΪ����ϵ��
                %Լ��Ϊ�����غ��м䲻����֧��
                tt=kX-c1-c2;
                q=jbzhdxdt(tt);
                d=jbzhcddt(tt);
                fa=q.*d.*(b)./l;
                fb=q.*d.*a./l;
                xsc=[(a+d/2) -b+d/2;1 1];
                bb=[fb./6.*(b-d/2).^3+q/24.*d.^4-fa/6.*(a+d/2).^3 q/6.*d.^3-fa/2.*(a+d/2).^2-fb/2.*(b-d/2).^2]';
                cc=inv(xsc)*bb;
                if Xxiangdui(t)<=a %����֧���ھ����غɵ����
                    zuoyongnd(kX,t)=(1/6.*fa.*Xxiangdui(t).^3+cc(1).*Xxiangdui(t))./(E.*Iz);     
                else   %��֧���ھ����غɵ��ұ�
                   zuoyongnd(kX,t)=(1/6.*fb.*(l-Xxiangdui(t)).^3+cc(2).*(l-Xxiangdui(t)))./(E.*Iz); 
                end

            end
        end
        zuoyongndsum=zuoyongnd(kX,:)+zuoyongndsum;   %��ÿ�������ڸ���֧�����������ӶȺͣ����õ������һ������
    end
    
    %% �����ǽ����Է��������������֧�������÷��� 
    danweilindinv=inv(danweilind);   %��λ���ڸ���֧���������Ӷȵ�ϵ������danweilind����
    Fn=-danweilindinv*(zuoyongndsum');  %�������֧����֧��������Fn ��Ӧ�ĽǱ�ΪԪ���Ĵ�С��������
    
    %% ���濪ʼ�������Ҫ����� ������jianli������أ�wanju�����Ӷȣ�naodu����ת�ǣ�zhuanjiao����
    jzlwzdt1=jzlwzdt-yuanjianwzstdt(1);   %����������Լ�֧����һ��֧����λ��
    jzlowzdt1=jzlowzdt-yuanjianwzstdt(1);
    jbzhqdwzdt1=jbzhqdwzdt-yuanjianwzstdt(1);
    jbzhzdwzdt1=jbzhzdwzdt-yuanjianwzstdt(1);
    
    % ���������������֧����֧������ 
    %FA����˵�֧������,FB���Ҷ˵�֧������
    if isempty(Fn)   %�ж��Ƿ��Ǿ���������
        if isempty(jzldxdt)  %�ж��Ƿ��м�����
            if isempty(jzlodxdt)  %�ж�ʱ���м�����ż
                if isempty(jbzhdxdt)  %�ж��Ƿ��о����غ�
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

    
    
    zongwzdt1=[yuanjianwzstdt(1:ksum) jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt];  %�����غ��������յ�
    zongdxdt1=[FA Fn' FB jzldxdt jzlodxdt jbzhdxdt];  %zongdxdt �� zongwzdt1���½Ǳ�һһ��Ӧ
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
    kzongsum=kzongsum1(2);    %��Ϊ����������ܵ����ø���
    a=zongzywzdt-yuanjianwzstdt(1);
    b=l-a;
    %�ж�ÿһ�����õ����� 
    
    %% �������   ��Ҫȥ�ж��غ��м��֧��������Լ��Ϊ������������
     v=zeros(m+1,1);
     theta=zeros(m+1,1);
    for kX=1:kzongsum-1
        x=linspace(zongwzdt(kX),zongwzdt(kX+1),m+1);  %�ֱ����ÿһ��С��
        h=(zongwzdt(kX+1)-zongwzdt(kX))./m;
        s0=0;  %������ֵ
        wanju0=0;  %��س�ֵ
        for t=1:kX  %�����С��ǰ�����֮�� 
            if zongst(t)<=(ksum+c1)   %�жϵ�t�����õ�����  ��Ϊ������
                s0=s0+zongdxdt1(zongst(t));
                wanju0=wanju0+zongdxdt1(zongst(t)).*(x-zongwzdt1(zongst(t)));
            elseif zongst(t)<=(ksum+c1+c2)&&zongst(t)>(ksum+c1)  %��ʱΪ������ż
                wanju0=wanju0-zongdxdt1(zongst(t));
                %��ż���ı�����Ĵ�С
            else     %��ʱΪ�����غ� 
                if zongst(t)>(ksum+c1+c2+c3)  %�õ�Ϊ�����غɵ��յ�
                    %Ҳ���ǣ����ھ����غ�ֻ����һ��  ʡ��s0=s0,wanju0=wanju0
                else
                    if t==kX
                        %ʡ��s0=s0 wanju0=wanju0
                    else
                        s0=s0+zongdxdt1(zongst(t)).*jbzhcddt(zongst(t)-ksum-c1-c2);
                        wanju0=wanju0+(zongdxdt1(zongst(t)).*(jbzhcddt(zongst(t)-ksum-c1-c2)).*(x-(zongwzdt1(zongst(t))+jbzhcddt(zongst(t)-ksum-c1-c2)/2)));
                    end
            
                end

            end
        end
        
        %�öεļ������
        if zongst(kX)>(ksum+c1+c2)&&zongst(kX)<=(ksum+c1+c2+c3)  %�ж��ǲ��Ǿ����غ�
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
        %% ����ʹ�����Ӷ�
        kk=size(x);
        theta=zeros(1,kk(2)); 
        vsum=zeros(1,kk(2));
        %%
        for t=1:kzongzydxdt
            if t<=c4+c1  %c1Ϊ�������ĸ��� c4Ϊ֧�������ĸ���
                if x<=zongzywzdt(t)  %t��Ϊ������
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
            elseif t>c4+c1&&t<=c4+c1+c2  %tΪ������ż  
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
            elseif t>c4+c1+c2&&t<=c4+c1+c2+c3%�˴�Ϊ�����غ�  
                tt=zongst(t)-c4-c1-c2;
                q=zongzydxdt1(t);
                d=jbzhcddt(t-c4-c1-c2);
                fa=q.*d.*(b(t)-d/2)./l;
                fb=q.*d.*(a(t)+d/2)./l;
                xsc=[(a(t)+d) -b(t)+d;1 1];
                bb=[fb./6.*(b(t)-d).^3+q/24.*d.^4-fa/6.*(a(t)+d).^3 q/6.*d.^3-fa/2.*(a(t)+d).^2-fb/2.*(b(t)-d).^2]';
                cc=inv(xsc)*bb;
                if x<=zongzywzdt(t)  %����֧���ھ����غɵ����
                    vsum=vsum+(1/6.*fa.*x.^3+cc(1).*x)./(E.*Iz);     
                    theta=theta+(1./2.*fa.*x.^2+cc(1))./(E.*Iz);
                elseif x(1)>=zongzywzdt(t)&&x(m+1)<=(zongzywzdt(t)+jbzhcddt(t-c4-c1-c2))&&x(1)~=x(m+1)  %��֧���ھ����غ�֮��
                    vsum=vsum+(1/6.*fa.*x.^3+cc(1).*x-q./24.*(x-a(t)).^4)./(E.*Iz);
                    theta=theta+(1./2.*fa.*x.^2+cc(1)-q./6.*(x-a(t)).^3)./(E.*Iz);
                else   %��֧���ھ����غɵ��ұ�
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
        
        
        
        %% �����ǻ�ͼ
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
        set(hf1,'NumberTitle','off','Name','����ͼ','Menu','none','ToolBar','figure');
        set(hf2,'NumberTitle','off','Name','���ͼ','Menu','none','ToolBar','figure');
        set(hf3,'NumberTitle','off','Name','ת��ͼ','Menu','none','ToolBar','figure');
        set(hf4,'NumberTitle','off','Name','�Ӷ�ͼ','Menu','none','ToolBar','figure');
        hf1=figure(1);    %������ͼ
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2);
        plot(x,jianli);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 jianli(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
        hf2=figure(2);    %�����ͼ
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2);
        plot(x,wanju);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 wanju(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
        hf3=figure(3);   %��ת��ͼ
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2); 
        plot(x,theta);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 theta(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
        hf4=figure(4);   %���Ӷ�ͼ
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2); 
        plot(x,vsum);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 vsum(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
    end
    
    
    
else
    
    %% �����ǻ����ṹΪ�̶��˵�ʱ����㵥λ���ڸ���֧����λ�ò������Ӷ�
    zgzdwzdt=zgqdwzdt+zgcddt;
    l=zgcddt;
    if gddwzdt==yuanjianwzstdt(1)  %�й̶�����������˵�ʱ��ִ��
        Xxiangdui=yuanjianwzstdt(2:ksum)-yuanjianwzstdt(1);
    else  %�й̶����������Ҷ˵�ʱ��ִ��
        Xxiangdui=yuanjianwzstdt(ksum)-yuanjianwzstdt(1:ksum-1);
    end%�й̶��˵�ʱ��ִ�У������ù̶�����Ϊ�����ṹ��
    ZYxiangdui=abs(gddwzdt-zuoyongwzdt(1:kzysum));
    
    for kX=1:ksum-1  %��kX����λ��
        a=Xxiangdui(kX);
        for t=1:ksum-1  %�ڵ�t�������������Ӷ�
            if t<=kX
                danweilind(kX,t)=-(Xxiangdui(t)).^2./(6*E.*Iz).*(3*a-Xxiangdui(t));
            else
                danweilind(kX,t)=-a.^2./(6*E*Iz).*(3*Xxiangdui(t)-a);
            end
        end
    end
    
    %% �����ǻ����ṹΪ�̶��˵�ʱ�������������ڸ���֧�����������Ӷ�
    zuoyongndsum=zeros(1,ksum-1);
    zuoyongnd=zeros(kzysum,ksum-1);
    for kX=1:kzysum  %��kX������
        a=ZYxiangdui(kX);
        b=l-a;
        for t=1:(ksum-1)  %�ڵ�t�������������Ӷ�
            if kX<=c1  %��������Ϊ������
                if Xxiangdui(t)<=ZYxiangdui(kX)
                    zuoyongnd(kX,t)=-zuoyongdxdt(kX).*(Xxiangdui(t)).^2./(6*E.*Iz).*(3*a-Xxiangdui(t));
                else
                    zuoyongnd(kX,t)=-zuoyongdxdt(kX).*a.^2./(6*E*Iz).*(3*Xxiangdui(t)-a);
                end
            elseif kX>c1&&kX<=c1+c2  %��������Ϊ������ż
                if Xxiangdui(t)<=ZYxiangdui(kX)
                    zuoyongnd(kX,t)=-zuoyongdxdt(kX).*(Xxiangdui(t)).^2./(2*E.*Iz);
                else
                    zuoyongnd(kX,t)=-zuoyongdxdt(kX).*a./(E.*Iz).*((Xxiangdui(t)-a)+a/2);
                end
                
                
            else  %��������Ϊ�����غ�
                
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
    %% �����ǽ����Է��������������֧�������÷��� 
    danweilindinv=inv(danweilind);   %��λ���ڸ���֧���������Ӷȵ�ϵ������danweilind����
    Fn=-danweilindinv*(zuoyongndsum');  %�������֧����֧��������Fn ��Ӧ�ĽǱ�ΪԪ���Ĵ�С��������
    
    %% ���濪ʼ�������Ҫ����� ������jianli������أ�wanju�����Ӷȣ�naodu����ת�ǣ�zhuanjiao����
    jzlwzdt1=jzlwzdt-yuanjianwzstdt(1);
    jzlowzdt1=jzlowzdt-yuanjianwzstdt(1);
    jbzhqdwzdt1=jbzhqdwzdt-yuanjianwzstdt(1);
    jbzhzdwzdt1=jbzhzdwzdt-yuanjianwzstdt(1);
    
    % ���������������֧����֧������
    %FA����˵�֧������,FB���Ҷ˵�֧������
    if isempty(Fn)   %�ж��Ƿ��Ǿ���������
        if isempty(jzldxdt)  %�ж��Ƿ��м�����
            if isempty(jzlodxdt)  %�ж�ʱ���м�����ż
                if isempty(jbzhdxdt)  %�ж��Ƿ��о����غ�
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
    
    zongwzdt1=[yuanjianwzstdt(1:ksum) jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt];  %�����غ��������յ�
    zongdxdt1=[FA Fn' jzldxdt jzlodxdt jbzhdxdt];  %zongdxdt �� zongwzdt1���½Ǳ�һһ��Ӧ
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
    kzongsum=kzongsum1(2);    %��Ϊ����������ܵ����ø���
    Zxiangdui=zongwzdt-yuanjianwzstdt(1); %����������Լ�֧���ĵ�һ��֧���ľ���
    a=zongzywzdt-yuanjianwzstdt(1);
    b=l-a;
    %�ж�ÿһ�����õ�����
    
    %% �������   ��Ҫȥ�ж��غ��м��֧��������Լ��Ϊ������������

    for kX=1:kzongsum-1
        x=linspace(zongwzdt(kX),zongwzdt(kX+1),m+1);  %�ֱ����ÿһ��С��
        s0=0;
        wanju0=MA;
        for t=1:kX  %�����С��ǰ�����֮��
            if zongst(t)<=(ksum+c1)   %�жϵ�t�����õ�����  ��Ϊ������
                s0=s0+zongdxdt1(zongst(t));
                wanju0=wanju0-zongdxdt1(zongst(t)).*(x-zongwzdt1(zongst(t)));
            elseif zongst(t)<=(ksum+c1+c2)&&zongst(t)>(ksum+c1)  %��ʱΪ������ż
                wanju0=wanju0+zongdxdt1(zongst(t));
                %��ż���ı�����Ĵ�С
            else  %��ʱΪ�����غ�
                if zongst(t)>(ksum+c1+c2+c3)  %�õ�Ϊ�����غɵ��յ�
                    %Ҳ���ǣ����ھ����غ�ֻ����һ��  ʡ��s0=s0,wanju0=wanju0
                else
                    if t==kX
                        %ʡ��s0=s0 wanju0=wanju0
                    else
                        s0=s0+zongdxdt1(zongst(t)).*jbzhcddt(zongst(t)-ksum-c1-c2);
                        wanju0=wanju0-zongdxdt1(zongst(t)).*(jbzhcddt(zongst(t)-ksum-c1-c2)).*(x-(zongwzdt1(zongst(t))+jbzhcddt(zongst(t)-ksum-c1-c2)/2));
                    end
                end
            end
        end
        if zongst(kX)>(ksum+c1+c2)&&zongst(kX)<=(ksum+c1+c2+c3)  %�ж��ǲ��Ǿ����غ� 
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
        
        
           %% �����Ǽ����Ӷ�
        kk=size(x);
        theta=zeros(1,kk(2));
        vsum=zeros(1,kk(2));

        for t=1:kzongzydxdt
            if t<=c4  %c4Ϊ֧�������ĸ���
                if x<=zongzywzdt(t)  %t��Ϊ������
                    vsum=vsum-zongzydxdt1(t).*(x).^2./(6*E.*Iz).*(3*a(t)-x);
                    theta=theta-zongzydxdt1(t)./(6*E.*Iz).*(6*a(t).*x-3*x.^2);
                else
                    vsum=vsum-zongzydxdt1(t).*a(t).^2./(6*E*Iz).*(3*x-a(t));  
                    theta=theta-zongzydxdt1(t).*a(t).^2./(2*E*Iz); 
                end
            elseif t<=c4+c1&&t>c4  %������
                if x<=zongzywzdt(t)  %t��Ϊ������
                    vsum=vsum-zongzydxdt1(t).*(x).^2./(6*E.*Iz).*(3*a(t)-x);
                    theta=theta-zongzydxdt1(t)./(6*E.*Iz).*(6*a(t).*x-3*x.^2);
                else
                    vsum=vsum-zongzydxdt1(t).*a(t).^2./(6*E*Iz).*(3*x-a(t));  
                    theta=theta-zongzydxdt1(t).*a(t).^2./(2*E*Iz); 
                end
            elseif t>c4+c1&&t<=c4+c1+c2  %tΪ������ż
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
        
               %% �����ǻ�ͼ
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
        set(hf1,'NumberTitle','off','Name','����ͼ','Menu','none','ToolBar','figure');
        set(hf2,'NumberTitle','off','Name','���ͼ','Menu','none','ToolBar','figure');
        set(hf3,'NumberTitle','off','Name','ת��ͼ','Menu','none','ToolBar','figure');
        set(hf4,'NumberTitle','off','Name','�Ӷ�ͼ','Menu','none','ToolBar','figure');
        hf1=figure(1);    %������ͼ
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2);
        plot(x,jianli);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 jianli(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
        hf2=figure(2);    %�����ͼ
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2);
        plot(x,wanju);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 wanju(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
        hf3=figure(3);   %��ת��ͼ
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2); 
        plot(x,theta);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 theta(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
        hf4=figure(4);   %���Ӷ�ͼ
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2); 
        plot(x,vsum);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 vsum(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on; 
        hold on;
    end
    
    if zongwzdt(kzongsum)<zgzdwzdt   %�������һ��λ�õ�ֱ�˶˵��ͼ
        
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
        hf3=figure(3);   %��ת��ͼ
        line([zgqdwzdt zgqdwzdt+zgcddt],[0 0],'Color','black','LineWidth',2); 
        theta=thetamo.*ones(1,a11(2));
        plot(x,theta);
        for kkk=1:kl1
            line([x(kl(kkk)) x(kl(kkk))],[0 theta(kl(kkk))],'Color','black','LineWidth',1);
        end
        datacursormode on;
        hold on;
        hf4=figure(4);   %���Ӷ�ͼ
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

%��С��reshape
jianlirsp=reshape(jianliopt',1,[]);
wanjursp=reshape(wanjuopt',1,[]);
thetarsp=reshape(thetaopt',1,[]);
vsumrsp=reshape(vsumopt',1,[]);

%λ��reshape
jianliwzrsp=reshape(jianliwzopt',1,[]);
wanjuwzrsp=reshape(wanjuwzopt',1,[]);
thetawzrsp=reshape(thetawzopt',1,[]);
vsumwzrsp=reshape(vsumwzopt',1,[]);

%�õ�����λ������  
[jianlimax1 kjianli]=max(abs(jianlirsp));
[wanjumax1 kwanju]=max(abs(wanjursp));
[thetamax1 ktheta]=max(abs(thetarsp));
[vsummax1 kvsum]=max(abs(vsumrsp));

%
jianliwzmax=num2str(jianliwzrsp(kjianli));
wanjuwzmax=num2str(wanjuwzrsp(kwanju));
thetawzmax=num2str(thetawzrsp(ktheta));
vsumwzmax=num2str(vsumwzrsp(kvsum));

%�õ����ģ��ַ��ͣ�
jianlimax0=num2str(jianlimax1);
wanjumax0=num2str(wanjumax1);
thetamax0=num2str(thetamax1);
vsummax0=num2str(1000.*vsummax1);

%�õ���С
jianlimin=min([jianlirsp 0]);
wanjumin=min([wanjursp 0]);
thetamin=min([thetarsp 0]);
vsummin=min([vsumrsp 0]);

%�õ����
jianlimax=max([jianlirsp 0]);
wanjumax=max([wanjursp 0]);
thetamax=max([thetarsp 0]);
vsummax=max([vsumrsp 0]);

%�õ�������С֮��Ĵ�С
jianlikd=jianlimax-jianlimin;
wanjukd=wanjumax-wanjumin;
thetakd=thetamax-thetamin;
vsumkd=vsummax-vsummin;

%�õ�ÿ��ͼ�е������ܵ�����
ho1=findobj(hf1,'Type','axes');
ho2=findobj(hf2,'Type','axes');
ho3=findobj(hf3,'Type','axes');
ho4=findobj(hf4,'Type','axes');

%����������������ͼ�εĴ�С�Ա�۲� 
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

%������text����
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


%��������С��ʾ���� 
set(handles.jianlixstxt,'String',jianlimax0);
set(handles.wanjuxstxt,'String',wanjumax0);
set(handles.zhuanjiaoxstxt,'String',thetamax0);
set(handles.naoduxstxt,'String',vsummax0);

%������λ����ʾ����
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
choise=questdlg('�Ƿ񱣴�','�Ƿ񱣴�','��','��','ȡ��','ȡ��');
switch choise
    case '��'
        baocunm_Callback;
        clear global;
        delete(hObject);
    case '��'
        clear global;
        delete(hObject);
    case 'ȡ��'
end



% --------------------------------------------------------------------
function youhuashejim_Callback(hObject, eventdata, handles)
% hObject    handle to youhuashejim (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function yhzywzm_Callback(hObject, eventdata, handles)   %�Ż���ƺ������Ż�����λ�ã�
% hObject    handle to yhzywzm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global m
global E Iz   %����
global yuanjianwzdt  %λ�þ���
global gdjzzwzdt gdzzwzdt gddwzdt zgqdwzdt zgcddt%����Ԫ����λ�þ���
global Xxiangdui danweilind

%% �ڼ���������õ�ʱ����Ҫ��ȫ�ֱ���
global zuoyongwzdt  %����λ�þ���
global jzlwzdt jbzhqdwzdt jbzhzdwzdt  jzlowzdt %�������õ�λ�þ���
global zuoyongnd
global jzldxdt jzlodxdt jbzhdxdt  %�������õĴ�С
global zuoyongndsum
global Fn
global zuobiaodt


youhual=inputdlg('�������Ż�����n(������������n��)', '�����Ż�',1,{'1'});
if isempty(youhual)
    close(figure,'youhual');
else
    youhualn=str2double(youhual{1});
end

%% ��λ���ڸ���֧��λ�ò������Ӷ�
yuanjianwzdt=[gdjzzwzdt gdzzwzdt gddwzdt];
ksum1=size(yuanjianwzdt);  %�����ܵ�֧����
ksum=ksum1(2);
[yuanjianwzstdt kst]=sort(yuanjianwzdt);  %kstΪ������ԭ��Ԫ�ص�����



%% ����ÿ��������ÿ��֧�����������Ӷ�
zuoyongndsum=0;
jbzhcddt=jbzhzdwzdt-jbzhqdwzdt;
zuoyongwzdt=[jzlwzdt jzlowzdt (jbzhqdwzdt+jbzhcddt./2)]; %ע������غɵ�λ��ʹ�������е������
zuoyongdxdt=[jzldxdt jzlodxdt jbzhdxdt];
ksum2=size(zuoyongwzdt);
kzysum=ksum2(2);
[zuoyongwzstdt,kst2]=sort(zuoyongwzdt);
c11=size(jzlwzdt);
c12=size(jzlowzdt);
c13=size(jbzhqdwzdt);
c1=c11(2);  %�������ĸ���
c2=c12(2);   %������ż����
c3=c13(2);   %�����غɸ���
n0=0;  %����ͳ�ƾ����غɵĸ���

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

    if isempty(gddwzdt)    %û�й̶���ʱ��ִ�е���䣨�����ü�֧����Ϊ�����ṹ��
        Xxiangdui=yuanjianwzstdt(2:(ksum-1))-yuanjianwzstdt(1);  %�����ÿһ��֧������ڵ�һ��֧���ľ���
        ZYxiangdui=zuoyongwzdt(1:kzysum)-yuanjianwzstdt(1);  %����������Լ�֧���ĵ�һ��֧����λ��
        l=zgcddt;
        %     l=yuanjianwzstdt(ksum)-yuanjianwzstdt(1);
        
        %% �ڻ����ṹΪ��֧����ʱ����㵥λ���ڸ���֧�����������Ӷ�
        for kX=1:(ksum-2)  %��kX����λ��
            a=Xxiangdui(kX);
            b=l-a;
            for t=1:(ksum-2)   %�ڵ�t��֧���������Ӷ�
                if t<=kX
                    danweilind(kX,t)=-b.*Xxiangdui(t)./(6*E*Iz.*l)*...
                        (l.^2-(Xxiangdui(t)).^2-b.^2);
                    
                else
                    danweilind(kX,t)=-b./(6.*E.*Iz.*l).*(l./b.*...
                        (Xxiangdui(t)-a).^3+(l.^2 -b.^2).*Xxiangdui(t)-Xxiangdui(t).^3);
                end
            end
        end
        
        %% �����ṹΪ��֧����ʱ�������������ڸ���֧�����������Ӷ�
        zuoyongndsum=zeros(1,ksum-2);
        zuoyongnd=zeros(kzysum,ksum-2);
        for kX=1:kzysum  %��kX������
            a=ZYxiangdui(kX);
            b=l-a;
            for t=1:(ksum-2)  %�ڵ�t��֧�����������Ӷ�
                if kX<=c1  %��������Ϊ������
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*b.*Xxiangdui(t)./(6*E*Iz.*l)*...
                            (l.^2-(Xxiangdui(t)).^2-b.^2);
                    else
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*b./(6.*E.*Iz.*l).*(l./b.*...
                            (Xxiangdui(t)-a).^3+(l.^2 -b.^2).*Xxiangdui(t)-Xxiangdui(t).^3);
                    end
                elseif kX>c1&&kX<=c1+c2  %��������Ϊ������ż
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=zuoyongdxdt(kX).*Xxiangdui(t)./(6*E.*Iz.*l).*...
                            (l.^2-3*b.^2-(Xxiangdui(t)).^2);
                    else
                        zuoyongnd(kX,t)=zuoyongdxdt(kX)./(6*E.*Iz.*l).*...
                            (-(Xxiangdui(t)).^3+3*l.*(Xxiangdui(t)-a).^2+Xxiangdui(t).*(l^2-3*b^2));
                    end
                    
                    
                else  %��������Ϊ�����غ�   dΪ����ϵ��
                    %Լ��Ϊ�����غ��м䲻����֧��
                    tt=kX-c1-c2;
                    q=jbzhdxdt(tt);
                    d=jbzhcddt(tt);
                    fa=q.*d.*(b)./l;
                    fb=q.*d.*a./l;
                    xsc=[(a+d/2) -b+d/2;1 1];
                    bb=[fb./6.*(b-d/2).^3+q/24.*d.^4-fa/6.*(a+d/2).^3 q/6.*d.^3-fa/2.*(a+d/2).^2-fb/2.*(b-d/2).^2]';
                    cc=inv(xsc)*bb;
                    if Xxiangdui(t)<=a %����֧���ھ����غɵ����
                        zuoyongnd(kX,t)=(1/6.*fa.*Xxiangdui(t).^3+cc(1).*Xxiangdui(t))./(E.*Iz);
                    else   %��֧���ھ����غɵ��ұ�
                        zuoyongnd(kX,t)=(1/6.*fb.*(l-Xxiangdui(t)).^3+cc(2).*(l-Xxiangdui(t)))./(E.*Iz);
                    end
                    
                end
            end
            zuoyongndsum=zuoyongnd(kX,:)+zuoyongndsum;   %��ÿ�������ڸ���֧�����������ӶȺͣ����õ������һ������
        end
        
        %% �����ǽ����Է��������������֧�������÷���
        danweilindinv=inv(danweilind);   %��λ���ڸ���֧���������Ӷȵ�ϵ������danweilind����
        Fn=-danweilindinv*(zuoyongndsum');  %�������֧����֧��������Fn ��Ӧ�ĽǱ�ΪԪ���Ĵ�С��������
        
        %% ���濪ʼ�������Ҫ����� ������jianli������أ�wanju�����Ӷȣ�naodu����ת�ǣ�zhuanjiao����
        jzlwzdt1=jzlwzdt-yuanjianwzstdt(1);   %����������Լ�֧����һ��֧����λ��
        jzlowzdt1=jzlowzdt-yuanjianwzstdt(1);
        jbzhqdwzdt1=jbzhqdwzdt-yuanjianwzstdt(1);
        jbzhzdwzdt1=jbzhzdwzdt-yuanjianwzstdt(1);
        
        % ���������������֧����֧������
        %FA����˵�֧������,FB���Ҷ˵�֧������
        if isempty(Fn)   %�ж��Ƿ��Ǿ���������
            if isempty(jzldxdt)  %�ж��Ƿ��м�����
                if isempty(jzlodxdt)  %�ж�ʱ���м�����ż
                    if isempty(jbzhdxdt)  %�ж��Ƿ��о����غ�
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
      
        
        
        zongwzdt1=[yuanjianwzstdt(1:ksum) jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt];  %�����غ��������յ�
        zongdxdt1=[FA Fn' FB jzldxdt jzlodxdt jbzhdxdt];  %zongdxdt �� zongwzdt1���½Ǳ�һһ��Ӧ
        zongzydxdt1=[Fn' jzldxdt jzlodxdt jbzhdxdt];
        zongzywzdt =[yuanjianwzstdt(2:ksum-1) jzlwzdt jzlowzdt jbzhqdwzdt];
        zongzydxdt=size(zongzydxdt1);
        kzongzydxdt=zongzydxdt(2);
        cc=size(Fn);
        c4=cc(1);
        
 
        [zongwzdt,zongst]=sort(zongwzdt1);
        kzongsum1=size(zongwzdt);
        kzongsum=kzongsum1(2);    %��Ϊ����������ܵ����ø���
        a=zongzywzdt-yuanjianwzstdt(1);
        b=l-a;
        %�ж�ÿһ�����õ�����
        
        %% �������   ��Ҫȥ�ж��غ��м��֧��������Լ��Ϊ������������
        v=zeros(m+1,1);
        theta=zeros(m+1,1);
        for kX=1:kzongsum-1
            x=linspace(zongwzdt(kX),zongwzdt(kX+1),m+1);  %�ֱ����ÿһ��С��
            h=(zongwzdt(kX+1)-zongwzdt(kX))./m;
            s0=0;  %������ֵ
            wanju0=0;  %��س�ֵ
            for t=1:kX  %�����С��ǰ�����֮��
                if zongst(t)<=(ksum+c1)   %�жϵ�t�����õ�����  ��Ϊ������
                    s0=s0+zongdxdt1(zongst(t));
                    wanju0=wanju0+zongdxdt1(zongst(t)).*(x-zongwzdt1(zongst(t)));
                elseif zongst(t)<=(ksum+c1+c2)&&zongst(t)>(ksum+c1)  %��ʱΪ������ż
                    wanju0=wanju0-zongdxdt1(zongst(t));
                    %��ż���ı�����Ĵ�С
                else     %��ʱΪ�����غ�
                    if zongst(t)>(ksum+c1+c2+c3)  %�õ�Ϊ�����غɵ��յ�
                        %Ҳ���ǣ����ھ����غ�ֻ����һ��  ʡ��s0=s0,wanju0=wanju0
                    else
                        if t==kX
                            %ʡ��s0=s0 wanju0=wanju0
                        else
                            s0=s0+zongdxdt1(zongst(t)).*jbzhcddt(zongst(t)-ksum-c1-c2);
                            wanju0=wanju0+(zongdxdt1(zongst(t)).*(jbzhcddt(zongst(t)-ksum-c1-c2)).*(x-(zongwzdt1(zongst(t))+jbzhcddt(zongst(t)-ksum-c1-c2)/2)));
                        end
                        
                    end
                    
                end
            end
            
            %�öεļ������
            if zongst(kX)>(ksum+c1+c2)&&zongst(kX)<=(ksum+c1+c2+c3)  %�ж��ǲ��Ǿ����غ�
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
            %% ����ʹ�����Ӷ�
            kk=size(x);
            theta=zeros(1,kk(2));
            vsum=zeros(1,kk(2));
            %%
            for t=1:kzongzydxdt
                if t<=c4+c1  %c1Ϊ�������ĸ��� c4Ϊ֧�������ĸ���
                    if x<=zongzywzdt(t)  %t��Ϊ������
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
                elseif t>c4+c1&&t<=c4+c1+c2  %tΪ������ż
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
                elseif t>c4+c1+c2&&t<=c4+c1+c2+c3%�˴�Ϊ�����غ�
                    tt=zongst(t)-c4-c1-c2;
                    q=zongzydxdt1(t);
                    d=jbzhcddt(t-c4-c1-c2);
                    fa=q.*d.*(b(t)-d/2)./l;
                    fb=q.*d.*(a(t)+d/2)./l;
                    xsc=[(a(t)+d) -b(t)+d;1 1];
                    bb=[fb./6.*(b(t)-d).^3+q/24.*d.^4-fa/6.*(a(t)+d).^3 q/6.*d.^3-fa/2.*(a(t)+d).^2-fb/2.*(b(t)-d).^2]';
                    cc=inv(xsc)*bb;
                    if x<=zongzywzdt(t)  %����֧���ھ����غɵ����
                        vsum=vsum+(1/6.*fa.*x.^3+cc(1).*x)./(E.*Iz);
                        theta=theta+(1./2.*fa.*x.^2+cc(1))./(E.*Iz);
                    elseif x(1)>=zongzywzdt(t)&&x(m+1)<=(zongzywzdt(t)+jbzhcddt(t-c4-c1-c2))&&x(1)~=x(m+1)  %��֧���ھ����غ�֮��
                        vsum=vsum+(1/6.*fa.*x.^3+cc(1).*x-q./24.*(x-a(t)).^4)./(E.*Iz);
                        theta=theta+(1./2.*fa.*x.^2+cc(1)-q./6.*(x-a(t)).^3)./(E.*Iz);
                    else   %��֧���ھ����غɵ��ұ�
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
            
            
            
            %% �����ǻ�ͼ
            kl1=fix(51./l.*(zongwzdt(kX+1)-zongwzdt(kX)));
            kl2=linspace(zongwzdt(kX),zongwzdt(kX+1),kl1);
            kl=zeros(1,kl1);
            for kl3=1:kl1
                [xsort2 kl4]=sort(abs(x(:)-kl2(kl3)));
                kl(kl3)=kl4(1);
            end
           
        end
        
        
        
    else
        
        %% �����ǻ����ṹΪ�̶��˵�ʱ����㵥λ���ڸ���֧����λ�ò������Ӷ�
        zgzdwzdt=zgqdwzdt+zgcddt;
        l=zgcddt;
        if gddwzdt==yuanjianwzstdt(1)  %�й̶�����������˵�ʱ��ִ��
            Xxiangdui=yuanjianwzstdt(2:ksum)-yuanjianwzstdt(1);
        else  %�й̶����������Ҷ˵�ʱ��ִ��
            Xxiangdui=yuanjianwzstdt(ksum)-yuanjianwzstdt(1:ksum-1);
        end%�й̶��˵�ʱ��ִ�У������ù̶�����Ϊ�����ṹ��
        ZYxiangdui=abs(gddwzdt-zuoyongwzdt(1:kzysum));
        
        for kX=1:ksum-1  %��kX����λ��
            a=Xxiangdui(kX);
            for t=1:ksum-1  %�ڵ�t�������������Ӷ�
                if t<=kX
                    danweilind(kX,t)=-(Xxiangdui(t)).^2./(6*E.*Iz).*(3*a-Xxiangdui(t));
                else
                    danweilind(kX,t)=-a.^2./(6*E*Iz).*(3*Xxiangdui(t)-a);
                end
            end
        end
        
        %% �����ǻ����ṹΪ�̶��˵�ʱ�������������ڸ���֧�����������Ӷ�
        zuoyongndsum=zeros(1,ksum-1);
        zuoyongnd=zeros(kzysum,ksum-1);
        for kX=1:kzysum  %��kX������
            a=ZYxiangdui(kX);
            b=l-a;
            for t=1:(ksum-1)  %�ڵ�t�������������Ӷ�
                if kX<=c1  %��������Ϊ������
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*(Xxiangdui(t)).^2./(6*E.*Iz).*(3*a-Xxiangdui(t));
                    else
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*a.^2./(6*E*Iz).*(3*Xxiangdui(t)-a);
                    end
                elseif kX>c1&&kX<=c1+c2  %��������Ϊ������ż
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*(Xxiangdui(t)).^2./(2*E.*Iz);
                    else
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*a./(E.*Iz).*((Xxiangdui(t)-a)+a/2);
                    end
                    
                    
                else  %��������Ϊ�����غ�
                    
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
        %% �����ǽ����Է��������������֧�������÷���
        danweilindinv=inv(danweilind);   %��λ���ڸ���֧���������Ӷȵ�ϵ������danweilind����
        Fn=-danweilindinv*(zuoyongndsum');  %�������֧����֧��������Fn ��Ӧ�ĽǱ�ΪԪ���Ĵ�С��������
        
        %% ���濪ʼ�������Ҫ����� ������jianli������أ�wanju�����Ӷȣ�naodu����ת�ǣ�zhuanjiao����
        jzlwzdt1=jzlwzdt-yuanjianwzstdt(1);
        jzlowzdt1=jzlowzdt-yuanjianwzstdt(1);
        jbzhqdwzdt1=jbzhqdwzdt-yuanjianwzstdt(1);
        jbzhzdwzdt1=jbzhzdwzdt-yuanjianwzstdt(1);
        
        % ���������������֧����֧������
        %FA����˵�֧������,FB���Ҷ˵�֧������
        if isempty(Fn)   %�ж��Ƿ��Ǿ���������
            if isempty(jzldxdt)  %�ж��Ƿ��м�����
                if isempty(jzlodxdt)  %�ж�ʱ���м�����ż
                    if isempty(jbzhdxdt)  %�ж��Ƿ��о����غ�
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
        
        zongwzdt1=[yuanjianwzstdt(1:ksum) jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt];  %�����غ��������յ�
        zongdxdt1=[FA Fn' jzldxdt jzlodxdt jbzhdxdt];  %zongdxdt �� zongwzdt1���½Ǳ�һһ��Ӧ
        zongzydxdt1=[Fn' jzldxdt jzlodxdt jbzhdxdt];
        zongzywzdt =[yuanjianwzstdt(2:ksum) jzlwzdt jzlowzdt jbzhqdwzdt];
        zongzydxdt=size(zongzydxdt1);
        kzongzydxdt=zongzydxdt(2);
        cc=size(Fn);
        c4=cc(1);
        

        [zongwzdt,zongst]=sort(zongwzdt1);
        kzongsum1=size(zongwzdt);
        kzongsum=kzongsum1(2);    %��Ϊ����������ܵ����ø���
        Zxiangdui=zongwzdt-yuanjianwzstdt(1); %����������Լ�֧���ĵ�һ��֧���ľ���
        a=zongzywzdt-yuanjianwzstdt(1);
        b=l-a;
        %�ж�ÿһ�����õ�����
        
        %% �������   ��Ҫȥ�ж��غ��м��֧��������Լ��Ϊ������������
        
        for kX=1:kzongsum-1
            x=linspace(zongwzdt(kX),zongwzdt(kX+1),m+1);  %�ֱ����ÿһ��С��
            s0=0;
            wanju0=MA;
            for t=1:kX  %�����С��ǰ�����֮��
                if zongst(t)<=(ksum+c1)   %�жϵ�t�����õ�����  ��Ϊ������
                    s0=s0+zongdxdt1(zongst(t));
                    wanju0=wanju0-zongdxdt1(zongst(t)).*(x-zongwzdt1(zongst(t)));
                elseif zongst(t)<=(ksum+c1+c2)&&zongst(t)>(ksum+c1)  %��ʱΪ������ż
                    wanju0=wanju0+zongdxdt1(zongst(t));
                    %��ż���ı�����Ĵ�С
                else  %��ʱΪ�����غ�
                    if zongst(t)>(ksum+c1+c2+c3)  %�õ�Ϊ�����غɵ��յ�
                        %Ҳ���ǣ����ھ����غ�ֻ����һ��  ʡ��s0=s0,wanju0=wanju0
                    else
                        if t==kX
                            %ʡ��s0=s0 wanju0=wanju0
                        else
                            s0=s0+zongdxdt1(zongst(t)).*jbzhcddt(zongst(t)-ksum-c1-c2);
                            wanju0=wanju0-zongdxdt1(zongst(t)).*(jbzhcddt(zongst(t)-ksum-c1-c2)).*(x-(zongwzdt1(zongst(t))+jbzhcddt(zongst(t)-ksum-c1-c2)/2));
                        end
                    end
                end
            end
            if zongst(kX)>(ksum+c1+c2)&&zongst(kX)<=(ksum+c1+c2+c3)  %�ж��ǲ��Ǿ����غ�
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
            
            
            %% �����Ǽ����Ӷ�
            kk=size(x);
            theta=zeros(1,kk(2));
            vsum=zeros(1,kk(2));
            
            for t=1:kzongzydxdt
                if t<=c4  %c4Ϊ֧�������ĸ���
                    if x<=zongzywzdt(t)  %t��Ϊ������
                        vsum=vsum-zongzydxdt1(t).*(x).^2./(6*E.*Iz).*(3*a(t)-x);
                        theta=theta-zongzydxdt1(t)./(6*E.*Iz).*(6*a(t).*x-3*x.^2);
                    else
                        vsum=vsum-zongzydxdt1(t).*a(t).^2./(6*E*Iz).*(3*x-a(t));
                        theta=theta-zongzydxdt1(t).*a(t).^2./(2*E*Iz);
                    end
                elseif t<=c4+c1&&t>c4  %������
                    if x<=zongzywzdt(t)  %t��Ϊ������
                        vsum=vsum-zongzydxdt1(t).*(x).^2./(6*E.*Iz).*(3*a(t)-x);
                        theta=theta-zongzydxdt1(t)./(6*E.*Iz).*(6*a(t).*x-3*x.^2);
                    else
                        vsum=vsum-zongzydxdt1(t).*a(t).^2./(6*E*Iz).*(3*x-a(t));
                        theta=theta-zongzydxdt1(t).*a(t).^2./(2*E*Iz);
                    end
                elseif t>c4+c1&&t<=c4+c1+c2  %tΪ������ż
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
            
            %% �����ǻ�ͼ
            kl1=fix(51./l.*(zongwzdt(kX+1)-zongwzdt(kX)));
            kl2=linspace(zongwzdt(kX),zongwzdt(kX+1),kl1);
            kl=zeros(1,kl1);
            for kl3=1:kl1
                [xsort2 kl4]=sort(abs(x(:)-kl2(kl3)));
                kl(kl3)=kl4(1);
            end
           
           
        end
        
       if zongwzdt(kzongsum)<zgzdwzdt   %�������һ��λ�õ�ֱ�˶˵��ͼ
            
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
    
    %��С��reshape
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
set(hf5,'NumberTitle','off','Name','����λ���Ż�','Menu','none','ToolBar','figure');
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
global E Iz   %����
global yuanjianwzdt  %λ�þ���
global gdjzzwzdt gdzzwzdt gddwzdt  zgqdwzdt zgcddt%����Ԫ����λ�þ���
global Xxiangdui danweilind

%% �ڼ���������õ�ʱ����Ҫ��ȫ�ֱ���
global zuoyongwzdt  %����λ�þ���
global jzlwzdt jbzhqdwzdt jbzhzdwzdt jzlowzdt %�������õ�λ�þ���
global zuoyongnd
global jzldxdt jzlodxdt jbzhdxdt  %�������õĴ�С
global zuoyongndsum
global Fn



youhual=inputdlg('�������Ż�����n(������������n��)', '�����Ż�',1,{'2'});
if isempty(youhual)
    close(figure,'youhual');
else
    youhualn=str2double(youhual{1});
end

c14=size(gdjzzwzdt);
c15=size(gdzzwzdt);
c42=c14(2);
c52=c15(2);
n0=0;  %����ͳ�ƾ����غɵĸ���
yuanjianwzdt=[gdjzzwzdt gdzzwzdt gddwzdt];
[yuanjianwzstdt kst]=sort(yuanjianwzdt);  %kstΪ������ԭ��Ԫ�ص�����


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
    
    
    %% ��λ���ڸ���֧��λ�ò������Ӷ�
    yuanjianwzdt=[gdjzzwzdt gdzzwzdt gddwzdt];
    ksum1=size(yuanjianwzdt);  %�����ܵ�֧����
    ksum=ksum1(2);
    [yuanjianwzstdt kst]=sort(yuanjianwzdt);  %kstΪ������ԭ��Ԫ�ص�����
    
    
    
    %% ����ÿ��������ÿ��֧�����������Ӷ�
%     zuoyongndsum=0;
    jbzhcddt=jbzhzdwzdt-jbzhqdwzdt;
    zuoyongwzdt=[jzlwzdt jzlowzdt (jbzhqdwzdt+jbzhcddt)./2]; %ע������غɵ�λ��ʹ�������е������
    zuoyongdxdt=[jzldxdt jzlodxdt jbzhdxdt];
    ksum2=size(zuoyongwzdt);
    kzysum=ksum2(2);
    [zuoyongwzstdt,kst2]=sort(zuoyongwzdt);
    c11=size(jzlwzdt);
    c12=size(jzlowzdt);
    c13=size(jbzhqdwzdt);
    c1=c11(2);  %�������ĸ���
    c2=c12(2);   %������ż����
    c3=c13(2);   %�����غɸ���
    
    if isempty(gddwzdt)    %û�й̶���ʱ��ִ�е���䣨�����ü�֧����Ϊ�����ṹ��
        Xxiangdui=yuanjianwzstdt(2:(ksum-1))-yuanjianwzstdt(1);  %�����ÿһ��֧������ڵ�һ��֧���ľ���
        ZYxiangdui=zuoyongwzdt(1:kzysum)-yuanjianwzstdt(1);  %����������Լ�֧���ĵ�һ��֧����λ��
        l=zgcddt;
        %     l=yuanjianwzstdt(ksum)-yuanjianwzstdt(1);
        
        %% �ڻ����ṹΪ��֧����ʱ����㵥λ���ڸ���֧�����������Ӷ�
        for kX=1:(ksum-2)  %��kX����λ��
            a=Xxiangdui(kX);
            b=l-a;
            for t=1:(ksum-2)   %�ڵ�t��֧���������Ӷ�
                if t<=kX
                    danweilind(kX,t)=-b.*Xxiangdui(t)./(6*E*Iz.*l)*...
                        (l.^2-(Xxiangdui(t)).^2-b.^2);
                    
                else
                    danweilind(kX,t)=-b./(6.*E.*Iz.*l).*(l./b.*...
                        (Xxiangdui(t)-a).^3+(l.^2 -b.^2).*Xxiangdui(t)-Xxiangdui(t).^3);
                end
            end
        end
        
        %% �����ṹΪ��֧����ʱ�������������ڸ���֧�����������Ӷ�
        zuoyongndsum=zeros(1,ksum-2);
        zuoyongnd=zeros(kzysum,ksum-2);
        for kX=1:kzysum  %��kX������
            a=ZYxiangdui(kX);
            b=l-a;
            for t=1:(ksum-2)  %�ڵ�t��֧�����������Ӷ�
                if kX<=c1  %��������Ϊ������
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*b.*Xxiangdui(t)./(6*E*Iz.*l)*...
                            (l.^2-(Xxiangdui(t)).^2-b.^2);
                    else
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*b./(6.*E.*Iz.*l).*(l./b.*...
                            (Xxiangdui(t)-a).^3+(l.^2 -b.^2).*Xxiangdui(t)-Xxiangdui(t).^3);
                    end
                elseif kX>c1&&kX<=c1+c2  %��������Ϊ������ż
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=zuoyongdxdt(kX).*Xxiangdui(t)./(6*E.*Iz.*l).*...
                            (l.^2-3*b.^2-(Xxiangdui(t)).^2);
                    else
                        zuoyongnd(kX,t)=zuoyongdxdt(kX)./(6*E.*Iz.*l).*...
                            (-(Xxiangdui(t)).^3+3*l.*(Xxiangdui(t)-a).^2+Xxiangdui(t).*(l^2-3*b^2));
                    end
                    
                    
                else  %��������Ϊ�����غ�   dΪ����ϵ��
                    %Լ��Ϊ�����غ��м䲻����֧��
                    tt=kX-c1-c2;
                    q=jbzhdxdt(tt);
                    d=jbzhcddt(tt);
                    fa=q.*d.*(b)./l;
                    fb=q.*d.*a./l;
                    xsc=[(a+d/2) -b+d/2;1 1];
                    bb=[fb./6.*(b-d/2).^3+q/24.*d.^4-fa/6.*(a+d/2).^3 q/6.*d.^3-fa/2.*(a+d/2).^2-fb/2.*(b-d/2).^2]';
                    cc=inv(xsc)*bb;
                    if Xxiangdui(t)<=a %����֧���ھ����غɵ����
                        zuoyongnd(kX,t)=(1/6.*fa.*Xxiangdui(t).^3+cc(1).*Xxiangdui(t))./(E.*Iz);
                    else   %��֧���ھ����غɵ��ұ�
                        zuoyongnd(kX,t)=(1/6.*fb.*(l-Xxiangdui(t)).^3+cc(2).*(l-Xxiangdui(t)))./(E.*Iz);
                    end
                    
                end
            end
            zuoyongndsum=zuoyongnd(kX,:)+zuoyongndsum;   %��ÿ�������ڸ���֧�����������ӶȺͣ����õ������һ������
        end
        
        %% �����ǽ����Է��������������֧�������÷���
        danweilindinv=inv(danweilind);   %��λ���ڸ���֧���������Ӷȵ�ϵ������danweilind����
        Fn=-danweilindinv*(zuoyongndsum');  %�������֧����֧��������Fn ��Ӧ�ĽǱ�ΪԪ���Ĵ�С��������
        
        %% ���濪ʼ�������Ҫ����� ������jianli������أ�wanju�����Ӷȣ�naodu����ת�ǣ�zhuanjiao����
        jzlwzdt1=jzlwzdt-yuanjianwzstdt(1);   %����������Լ�֧����һ��֧����λ��
        jbzhqdwzdt1=jbzhqdwzdt-yuanjianwzstdt(1);
        jbzhzdwzdt1=jbzhzdwzdt-yuanjianwzstdt(1);
        
        % ���������������֧����֧������
        %FA����˵�֧������,FB���Ҷ˵�֧������
        if isempty(Fn)   %�ж��Ƿ��Ǿ���������
            if isempty(jzldxdt)  %�ж��Ƿ��м�����
                if isempty(jzlodxdt)  %�ж�ʱ���м�����ż
                    if isempty(jbzhdxdt)  %�ж��Ƿ��о����غ�
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
        
        
        zongwzdt1=[yuanjianwzstdt(1:ksum) jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt];  %�����غ��������յ�
        zongdxdt1=[FA Fn' FB jzldxdt jzlodxdt jbzhdxdt];  %zongdxdt �� zongwzdt1���½Ǳ�һһ��Ӧ
        zongzydxdt1=[Fn' jzldxdt jzlodxdt jbzhdxdt];
        zongzywzdt =[yuanjianwzstdt(2:ksum-1) jzlwzdt jzlowzdt jbzhqdwzdt];
        zongzydxdt=size(zongzydxdt1);
        kzongzydxdt=zongzydxdt(2);
        cc=size(Fn);
        c4=cc(1);
        
        
        [zongwzdt,zongst]=sort(zongwzdt1);
        kzongsum1=size(zongwzdt);
        kzongsum=kzongsum1(2);    %��Ϊ����������ܵ����ø���
        a=zongzywzdt-yuanjianwzstdt(1);
        b=l-a;
        %�ж�ÿһ�����õ�����
        
        %% �������   ��Ҫȥ�ж��غ��м��֧��������Լ��Ϊ������������
        v=zeros(m+1,1);
        theta=zeros(m+1,1);
        for kX=1:kzongsum-1
            x=linspace(zongwzdt(kX),zongwzdt(kX+1),m+1);  %�ֱ����ÿһ��С��
            h=(zongwzdt(kX+1)-zongwzdt(kX))./m;
            s0=0;  %������ֵ
            wanju0=0;  %��س�ֵ
            for t=1:kX  %�����С��ǰ�����֮��
                if zongst(t)<=(ksum+c1)   %�жϵ�t�����õ�����  ��Ϊ������
                    s0=s0+zongdxdt1(zongst(t));
                    wanju0=wanju0+zongdxdt1(zongst(t)).*(x-zongwzdt1(zongst(t)));
                elseif zongst(t)<=(ksum+c1+c2)&&zongst(t)>(ksum+c1)  %��ʱΪ������ż
                    wanju0=wanju0-zongdxdt1(zongst(t));
                    %��ż���ı�����Ĵ�С
                else     %��ʱΪ�����غ�
                    if zongst(t)>(ksum+c1+c2+c3)  %�õ�Ϊ�����غɵ��յ�
                        %Ҳ���ǣ����ھ����غ�ֻ����һ��  ʡ��s0=s0,wanju0=wanju0
                    else
                        if t==kX
                            %ʡ��s0=s0 wanju0=wanju0
                        else
                            s0=s0+zongdxdt1(zongst(t)).*jbzhcddt(zongst(t)-ksum-c1-c2);
                            wanju0=wanju0+(zongdxdt1(zongst(t)).*(jbzhcddt(zongst(t)-ksum-c1-c2)).*(x-(zongwzdt1(zongst(t))+jbzhcddt(zongst(t)-ksum-c1-c2)/2)));
                        end
                        
                    end
                    
                end
            end
            
            %�öεļ������
            if zongst(kX)>(ksum+c1+c2)&&zongst(kX)<=(ksum+c1+c2+c3)  %�ж��ǲ��Ǿ����غ�
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
            %% ����ʹ�����Ӷ�
            kk=size(x);
            theta=zeros(1,kk(2));
            vsum=zeros(1,kk(2));
            %%
            for t=1:kzongzydxdt
                if t<=c4+c1  %c1Ϊ�������ĸ��� c4Ϊ֧�������ĸ���
                    if x<=zongzywzdt(t)  %t��Ϊ������
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
                elseif t>c4+c1&&t<=c4+c1+c2  %tΪ������ż
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
                elseif t>c4+c1+c2&&t<=c4+c1+c2+c3%�˴�Ϊ�����غ�
                    tt=zongst(t)-c4-c1-c2;
                    q=zongzydxdt1(t);
                    d=jbzhcddt(t-c4-c1-c2);
                    fa=q.*d.*(b(t)-d/2)./l;
                    fb=q.*d.*(a(t)+d/2)./l;
                    xsc=[(a(t)+d) -b(t)+d;1 1];
                    bb=[fb./6.*(b(t)-d).^3+q/24.*d.^4-fa/6.*(a(t)+d).^3 q/6.*d.^3-fa/2.*(a(t)+d).^2-fb/2.*(b(t)-d).^2]';
                    cc=inv(xsc)*bb;
                    if x<=zongzywzdt(t)  %����֧���ھ����غɵ����
                        vsum=vsum+(1/6.*fa.*x.^3+cc(1).*x)./(E.*Iz);
                        theta=theta+(1./2.*fa.*x.^2+cc(1))./(E.*Iz);
                    elseif x(1)>=zongzywzdt(t)&&x(m+1)<=(zongzywzdt(t)+jbzhcddt(t-c4-c1-c2))&&x(1)~=x(m+1)  %��֧���ھ����غ�֮��
                        vsum=vsum+(1/6.*fa.*x.^3+cc(1).*x-q./24.*(x-a(t)).^4)./(E.*Iz);
                        theta=theta+(1./2.*fa.*x.^2+cc(1)-q./6.*(x-a(t)).^3)./(E.*Iz);
                    else   %��֧���ھ����غɵ��ұ�
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
        
        %% �����ǻ����ṹΪ�̶��˵�ʱ����㵥λ���ڸ���֧����λ�ò������Ӷ�
        zgzdwzdt=zgqdwzdt+zgcddt;
        l=zgcddt;
        if gddwzdt==yuanjianwzstdt(1)  %�й̶�����������˵�ʱ��ִ��
            Xxiangdui=yuanjianwzstdt(2:ksum)-yuanjianwzstdt(1);
        else  %�й̶����������Ҷ˵�ʱ��ִ��
            Xxiangdui=yuanjianwzstdt(ksum)-yuanjianwzstdt(1:ksum-1);
        end%�й̶��˵�ʱ��ִ�У������ù̶�����Ϊ�����ṹ��
        ZYxiangdui=abs(gddwzdt-zuoyongwzdt(1:kzysum));
        
        for kX=1:ksum-1  %��kX����λ��
            a=Xxiangdui(kX);
            for t=1:ksum-1  %�ڵ�t�������������Ӷ�
                if t<=kX
                    danweilind(kX,t)=-(Xxiangdui(t)).^2./(6*E.*Iz).*(3*a-Xxiangdui(t));
                else
                    danweilind(kX,t)=-a.^2./(6*E*Iz).*(3*Xxiangdui(t)-a);
                end
            end
        end
        
        %% �����ǻ����ṹΪ�̶��˵�ʱ�������������ڸ���֧�����������Ӷ�
        zuoyongndsum=zeros(1,ksum-1);
        zuoyongnd=zeros(kzysum,ksum-1);
        for kX=1:kzysum  %��kX������
            a=ZYxiangdui(kX);
            b=l-a;
            for t=1:(ksum-1)  %�ڵ�t�������������Ӷ�
                if kX<=c1  %��������Ϊ������
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*(Xxiangdui(t)).^2./(6*E.*Iz).*(3*a-Xxiangdui(t));
                    else
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*a.^2./(6*E*Iz).*(3*Xxiangdui(t)-a);
                    end
                elseif kX>c1&&kX<=c1+c2  %��������Ϊ������ż
                    if Xxiangdui(t)<=ZYxiangdui(kX)
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*(Xxiangdui(t)).^2./(2*E.*Iz);
                    else
                        zuoyongnd(kX,t)=-zuoyongdxdt(kX).*a./(E.*Iz).*((Xxiangdui(t)-a)+a/2);
                    end
                    
                    
                else  %��������Ϊ�����غ�
                    
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
        %% �����ǽ����Է��������������֧�������÷���
        danweilindinv=inv(danweilind);   %��λ���ڸ���֧���������Ӷȵ�ϵ������danweilind����
        Fn=-danweilindinv*(zuoyongndsum');  %�������֧����֧��������Fn ��Ӧ�ĽǱ�ΪԪ���Ĵ�С��������
        
        %% ���濪ʼ�������Ҫ����� ������jianli������أ�wanju�����Ӷȣ�naodu����ת�ǣ�zhuanjiao����
        jzlwzdt1=jzlwzdt-yuanjianwzstdt(1);
        jzlowzdt1=jzlowzdt-yuanjianwzstdt(1);
        jbzhqdwzdt1=jbzhqdwzdt-yuanjianwzstdt(1);
        jbzhzdwzdt1=jbzhzdwzdt-yuanjianwzstdt(1);
        
        % ���������������֧����֧������
        %FA����˵�֧������,FB���Ҷ˵�֧������
        if isempty(Fn)   %�ж��Ƿ��Ǿ���������
            if isempty(jzldxdt)  %�ж��Ƿ��м�����
                if isempty(jzlodxdt)  %�ж�ʱ���м�����ż
                    if isempty(jbzhdxdt)  %�ж��Ƿ��о����غ�
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
        
        zongwzdt1=[yuanjianwzstdt(1:ksum) jzlwzdt jzlowzdt jbzhqdwzdt jbzhzdwzdt];  %�����غ��������յ�
        zongdxdt1=[FA Fn' jzldxdt jzlodxdt jbzhdxdt];  %zongdxdt �� zongwzdt1���½Ǳ�һһ��Ӧ
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
        kzongsum=kzongsum1(2);    %��Ϊ����������ܵ����ø���
        Zxiangdui=zongwzdt-yuanjianwzstdt(1); %����������Լ�֧���ĵ�һ��֧���ľ���
        a=zongzywzdt-yuanjianwzstdt(1);
        b=l-a;
        %�ж�ÿһ�����õ�����
        
        %% �������   ��Ҫȥ�ж��غ��м��֧��������Լ��Ϊ������������
        
        for kX=1:kzongsum-1
            x=linspace(zongwzdt(kX),zongwzdt(kX+1),m+1);  %�ֱ����ÿһ��С��
            s0=0;
            wanju0=MA;
            for t=1:kX  %�����С��ǰ�����֮��
                if zongst(t)<=(ksum+c1)   %�жϵ�t�����õ�����  ��Ϊ������
                    s0=s0+zongdxdt1(zongst(t));
                    wanju0=wanju0-zongdxdt1(zongst(t)).*(x-zongwzdt1(zongst(t)));
                elseif zongst(t)<=(ksum+c1+c2)&&zongst(t)>(ksum+c1)  %��ʱΪ������ż
                    wanju0=wanju0+zongdxdt1(zongst(t));
                    %��ż���ı�����Ĵ�С
                else  %��ʱΪ�����غ�
                    if zongst(t)>(ksum+c1+c2+c3)  %�õ�Ϊ�����غɵ��յ�
                        %Ҳ���ǣ����ھ����غ�ֻ����һ��  ʡ��s0=s0,wanju0=wanju0
                    else
                        if t==kX
                            %ʡ��s0=s0 wanju0=wanju0
                        else
                            s0=s0+zongdxdt1(zongst(t)).*jbzhcddt(zongst(t)-ksum-c1-c2);
                            wanju0=wanju0-zongdxdt1(zongst(t)).*(jbzhcddt(zongst(t)-ksum-c1-c2)).*(x-(zongwzdt1(zongst(t))+jbzhcddt(zongst(t)-ksum-c1-c2)/2));
                        end
                    end
                end
            end
            if zongst(kX)>(ksum+c1+c2)&&zongst(kX)<=(ksum+c1+c2+c3)  %�ж��ǲ��Ǿ����غ�
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
            
            
            %% �����Ǽ����Ӷ�
            kk=size(x);
            theta=zeros(1,kk(2));
            vsum=zeros(1,kk(2));
            vsumopt=zeros(kzongsum,m+1);
            vsumwzopt=zeros(kzongsum,m+1);
            thetaopt=zeros(kzongsum,m+1);
            thetawzopt=zeros(kzongsum,m+1);
            
            for t=1:kzongzydxdt
                if t<=c4  %c4Ϊ֧�������ĸ���
                    if x<=zongzywzdt(t)  %t��Ϊ������
                        vsum=vsum-zongzydxdt1(t).*(x).^2./(6*E.*Iz).*(3*a(t)-x);
                        theta=theta-zongzydxdt1(t)./(6*E.*Iz).*(6*a(t).*x-3*x.^2);
                    else
                        vsum=vsum-zongzydxdt1(t).*a(t).^2./(6*E*Iz).*(3*x-a(t));
                        theta=theta-zongzydxdt1(t).*a(t).^2./(2*E*Iz);
                    end
                elseif t<=c4+c1&&t>c4  %������
                    if x<=zongzywzdt(t)  %t��Ϊ������
                        vsum=vsum-zongzydxdt1(t).*(x).^2./(6*E.*Iz).*(3*a(t)-x);
                        theta=theta-zongzydxdt1(t)./(6*E.*Iz).*(6*a(t).*x-3*x.^2);
                    else
                        vsum=vsum-zongzydxdt1(t).*a(t).^2./(6*E*Iz).*(3*x-a(t));
                        theta=theta-zongzydxdt1(t).*a(t).^2./(2*E*Iz);
                    end
                elseif t>c4+c1&&t<=c4+c1+c2  %tΪ������ż
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
        
        if zongwzdt(kzongsum)<zgzdwzdt   %�������һ��λ�õ�ֱ�˶˵��ͼ
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
    
    %��С��reshape
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
set(hf5,'NumberTitle','off','Name','����λ���Ż�','Menu','none','ToolBar','figure');
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
function kuaijiecandanm_Callback(hObject, eventdata, handles)  %��ݲ˵�
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

ht11t=imread('�̶�֧��.bmp');
ht12t=imread('����֧��.bmp');
ht13t=imread('�̶���.bmp');
ht15t=imread('ֱ��.bmp');

ht31t=imread('������.bmp');
ht32t=imread('�����غ�.bmp');
ht34t=imread('������ż.bmp');

ht21t=imread('����.bmp');
ht22t=imread('Բ��.bmp');
ht23t=imread('����.bmp');
ht24t=imread('������.bmp');

set(ht11,'CData',ht11t,'Separator','on','TooltipString','�̶���֧��','Tag','ht11tg','ClickedCallBack',@gudingjiaozhizuom_Callback);
set(ht12,'CData',ht12t,'Separator','on','TooltipString','����֧��','Tag','ht12tg','ClickedCallBack',@gundongzhizuom_Callback);
set(ht13,'CData',ht13t,'Separator','on','TooltipString','�̶���','Tag','ht13tg','ClickedCallBack',@gudingduanm_Callback);
set(ht15,'CData',ht15t,'Separator','on','TooltipString','ֱ��','Tag','ht15tg','ClickedCallBack',@zhiganm_Callback);

set(ht31,'CData',ht31t,'Separator','on','TooltipString','������','Tag','ht11tg','ClickedCallBack',@jizhonglim_Callback);
set(ht32,'CData',ht32t,'Separator','on','TooltipString','�����غ�','Tag','ht12tg','ClickedCallBack',@junbuzaihem_Callback);
set(ht34,'CData',ht34t,'Separator','on','TooltipString','������ż','Tag','ht14tg','ClickedCallBack',@jizhonglioum_Callback);

set(ht21,'CData',ht21t,'Separator','on','TooltipString','����','Tag','ht21tg','ClickedCallBack',@juxingm_Callback);
set(ht22,'CData',ht22t,'Separator','on','TooltipString','Բ��','Tag','ht22tg','ClickedCallBack',@yuanxingm_Callback);
set(ht23,'CData',ht23t,'Separator','on','TooltipString','����','Tag','ht23tg','ClickedCallBack',@huanxingm_Callback);
set(ht24,'CData',ht24t,'Separator','on','TooltipString','������','Tag','ht24tg','ClickedCallBack',@gongzixingm_Callback);
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
