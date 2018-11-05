function varargout = ray_heat(varargin)
% RAY_HEAT M-file for ray_heat.fig
%      RAY_HEAT, by itself, creates a new RAY_HEAT or raises the existing
%      singleton*.
%
%      H = RAY_HEAT returns the handle to a new RAY_HEAT or the handle to
%      the existing singleton*.
%
%      RAY_HEAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RAY_HEAT.M with the given input arguments.
%
%      RAY_HEAT('Property','Value',...) creates a new RAY_HEAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ray_heat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ray_heat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ray_heat

% Last Modified by GUIDE v2.5 19-Nov-2012 21:55:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ray_heat_OpeningFcn, ...
                   'gui_OutputFcn',  @ray_heat_OutputFcn, ...
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


% --- Executes just before ray_heat is made visible.
function ray_heat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ray_heat (see VARARGIN)

% Choose default command line output for ray_heat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ray_heat wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ray_heat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in pain_mode.
function pain_mode_Callback(hObject, eventdata, handles)
% hObject    handle to pain_mode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pain_mode contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pain_mode


% --- Executes during object creation, after setting all properties.
function pain_mode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pain_mode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sure2.
function sure2_Callback(hObject, eventdata, handles)
% hObject    handle to sure2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%替换，增加，小窗口，多窗口
flag = (get(handles.pain_mode,'Value')); %绘图模式
switch flag
    case 1 %多窗口模式
        set(handles.plotarea,'NextPlot','replace');
        set(handles.select_pmode,'Enable','off');
        set(handles.sure4,'Enable','off');
        set(handles.m,'Enable','off');
        set(handles.n,'Enable','off');
    case 2 %单窗口模式
        set(handles.plotarea,'NextPlot','add');
        set(handles.select_pmode,'Enable','off');
        set(handles.sure4,'Enable','off');
        set(handles.m,'Enable','off');
        set(handles.n,'Enable','off');
    case 3 %弹出式窗口模式
        set(handles.select_pmode,'Enable','on');
        set(handles.sure4,'Enable','on');
        set(handles.m,'Enable','off');
        set(handles.n,'Enable','off');
    case 4 %单窗口多图模式
        set(handles.select_pmode,'Enable','off');
        set(handles.sure4,'Enable','on');
        set(handles.m,'Enable','on');
        set(handles.n,'Enable','on');
    otherwise
end
set(handles.tip,'String','请选择相应的材料');


% --- Executes on selection change in select_m.
function select_m_Callback(hObject, eventdata, handles)
% hObject    handle to select_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns select_m contents as cell array
%        contents{get(hObject,'Value')} returns selected item from select_m


% --- Executes during object creation, after setting all properties.
function select_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to select_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
metal = load('metaldata');
set(hObject,'String',metal.metaldata.name);


% --- Executes on selection change in select_mode.
function select_mode_Callback(hObject, eventdata, handles)
% hObject    handle to select_mode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns select_mode contents as cell array
%        contents{get(hObject,'Value')} returns selected item from select_mode
flag = get(handles.select_mode,'Value');  %模式选择

switch flag
    case 1 %已知材料名称
        set(handles.cotc,'Enable','off');
        set(handles.cohc,'Enable','off');
        set(handles.ruo,'Enable','off');
        set(handles.c,'Enable','off');
        set(handles.select_m,'Enable','on');
        set(handles.mltpt,'Enable','off');
        set(handles.savedata,'Enable','off');
        set(handles.uipanel7,'Visible','on');
        set(handles.uipanel6,'Visible','on');
    case 2 %已知导温系数
        set(handles.cotc,'Enable','on');
        set(handles.cohc,'Enable','off');
        set(handles.ruo,'Enable','off');
        set(handles.c,'Enable','off');
        set(handles.select_m,'Enable','off');
        set(handles.mltpt,'Enable','on');
        set(handles.uipanel7,'Visible','off');
        set(handles.uipanel6,'Visible','off');
%         set(handles.savedata,'Enable','off');
    case 3 %已知导热系数
        set(handles.cotc,'Enable','off');
        set(handles.cohc,'Enable','on');
        set(handles.ruo,'Enable','on');
        set(handles.c,'Enable','on');
        set(handles.select_m,'Enable','off');
        set(handles.mltpt,'Enable','on');
        set(handles.uipanel7,'Visible','off');
        set(handles.uipanel6,'Visible','off');
%         set(handles.savedata,'Enable','on');
    
    otherwise
end



% --- Executes during object creation, after setting all properties.
function select_mode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to select_mode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cotc_Callback(hObject, eventdata, handles)
% hObject    handle to cotc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cotc as text
%        str2double(get(hObject,'String')) returns contents of cotc as a double


% --- Executes during object creation, after setting all properties.
function cotc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cotc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cohc_Callback(hObject, eventdata, handles)
% hObject    handle to cohc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cohc as text
%        str2double(get(hObject,'String')) returns contents of cohc as a double


% --- Executes during object creation, after setting all properties.
function cohc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cohc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ruo_Callback(hObject, eventdata, handles)
% hObject    handle to ruo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ruo as text
%        str2double(get(hObject,'String')) returns contents of ruo as a double


% --- Executes during object creation, after setting all properties.
function ruo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ruo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c_Callback(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c as text
%        str2double(get(hObject,'String')) returns contents of c as a double


% --- Executes during object creation, after setting all properties.
function c_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sure3.
function sure3_Callback(hObject, eventdata, handles)
% hObject    handle to sure3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flag2 m n k  y N M
global hm
global data flag4  %falg4计算类型，data为数据
meltpoint = str2double(get(handles.mltpt,'String'));

if(isempty(data))
    errordlg('请进行初始设置','错误');
else
    flag = get(handles.select_mode,'Value'); %已知模式
    
    switch flag
        case 2   %已知导温系数模式
            a = 10.^(-6).*str2double(get(handles.cotc,'String'));%导温系数
            if(isnan(a))
                errordlg('请输入导温系数','错误');
            end
            if data.tinf > meltpoint
                mltdatacel = inputdlg({'熔化后的导温系数×10^(-6)㎡/s'},'输入熔化后的属性',1);
                a1 = 10.^(-6).*str2double((mltdatacel)); %熔化后的导温系数
            end
        case 3  %已知导热系数模式
            lamda = str2double(get(handles.cohc,'String'));%导热系数
            ruo = str2double(get(handles.ruo,'String'));%密度
            c = str2double(get(handles.c,'String'));%热容
            a = lamda./(ruo.*c); %导温系数
            if(isnan(a))
                errordlg('请输入导热系数，密度及热容','错误');
            end
            if data.tinf > meltpoint
                mltdatacel = inputdlg({'熔化后的导热系数W/(m.℃)','熔化后的密度(kg/m?)','溶化后的热容J/(kg.℃）'},'输入熔化后的属性',1);
                mltdata = str2double((mltdatacel));
                a1 = mltdata(1)/(mltdata(2)*mltdata(3)); %溶化后的导温系数
            end
        case 1 %已知材料模式
            flag1 = get(handles.select_m,'Value');  %相应的材料
            
            flagdb = get(handles.seldbs,'Value'); %数据库的选择
            
            switch flagdb
                case 1
                    metal = load('metaldata');
                    t1 = metal.metaldata.t1
%                     t1 = [-100,0,20,100,200,300,400,600,800,1000,1200];
                    [tsza tszb] = size(t1);
                    lamda1 = metal.metaldata.tc(flag1,:) %导热系数
                    %% 分段线性插值
                    kt0 = 0;
                    for kt = 1:tszb
                        if isnan(lamda1(kt))
                        else
                            kt0 = kt0+1;
                            t2(kt0) = t1(kt);
                            lamda0(kt0) = lamda1(kt);
                        end
                    end
                    
                    t0 = linspace(min(t2),max(t2),1000); %自变量温度
                    for kc = 1:kt0
                        if kc == 1
                           l(kc,:) = (t2(1)<=t0).*(t0<=t2(2)).*(t0-t2(2))...
                               ./(t2(1)-t2(2))+(t0>t2(2)).*0;
                        elseif kc == kt0
                            l(kc,:) = (t0>=t2(kt0-1)).*(t0<=t2(kt0))...
                                .*(t0-t2(kt0-1))./(t2(kt0)-t2(kt0-1))+0.*(t0<t2(kt0-1));
                        else
                            l(kc,:) = (t0>=t2(kc-1)).*(t0<=t2(kc)).*(t0-t2(kc-1))./(t2(kc)-t2(kc-1))...
                                +(t0>=t2(kc)).*(t0<=t2(kc+1)).*(t0-t2(kc+1))./(t2(kc)-t2(kc+1))...
                                +0.*(t0<t2(kc-1)).*(t0>t2(kc+1));
                        end
                    end
                    l
                    lamda1 = lamda0*l  %因变量导热系数
%                     h5 = figure(5);
%                     hl5 = plot(t0,lamda1,'linewidth',2);
%                     xlabel('温度/℃');
%                     ylabel('导热系数/(W/(m.℃))');
%                     hold on;

%% 
                    ruo = metal.metaldata.density(flag1);%密度
                    c = metal.metaldata.spheat(flag1);%热容
                case 2
                    metal = load('metaldata2');
                    lamda = metal.metaldata2.tc(flag1);%导热系数
                    ruo = metal.metaldata2.density(flag1);%密度
                    c = metal.metaldata2.spheat(flag1);%热容
                otherwise
            end
%             a = lamda./(ruo.*c);%导温系数
%             set(handles.cohc,'String',lamda);
            set(handles.ruo,'String',ruo);
            set(handles.c,'String',c);
%             set(handles.cotc,'String',a*10.^6);
            %从相应的数据库中选择
        otherwise
    end
    if flag == 1
        
        %找到和t初始最接近的t
        [kx ky] = min(abs(t0-data.tini));
        lamda = lamda1(ky);
        a = lamda./(ruo.*c);%导温系数
        %t(x,y) = t0+(tinf-t0).*erfc(x./2*sqrt(a.*y))
        N = 500;
        x = linspace(eps,data.wide,N);%板的厚度
        M = 250;
        time = linspace(eps,data.tao,M); %加热时间
        %% 计算
        if(flag4 == 1)   %flag4计算模式
            y = zeros(N,M);
            for kh = 1:N
                for ktime = 1:M
                    y(kh,ktime) = data.tini+(data.tinf-data.tini).*erfc(x(kh)./(2000.*sqrt(a.*time(ktime))));
                    [kx ky] = min(abs(t0-y(kh,ktime)));
                    lamda = lamda1(ky);
                    a = lamda./(ruo.*c);
                end
            end
        elseif(flag4 == 2)
            %         y =
        else
        end
        if((get(handles.pain_mode,'Value'))==3)
            if(flag2 == 2)
                h = figure(2);
                set(h,'Name','材料激光加热温度分布')
                set(h,'NumberTitle','off');
                xlabel('加热时间/s');
                ylabel('板厚/mm');
                zlabel('温度/℃');
                hold on;
            else
                h = figure;
                set(h,'Name','材料激光加热温度分布');
                set(h,'NumberTitle','off');
                xlabel('加热时间/s');
                ylabel('板厚/mm');
                zlabel('温度/℃');
                hold on
            end
        end
        
        if((get(handles.pain_mode,'Value'))==4)
            k = k+1;
            if(k>m*n)
                errordlg('错误：请更改绘图选项中的单窗口多图设置','错误');
            else
                subplot(m,n,k);
            end
        end
        
        %% 绘图
        [X,Y] = meshgrid(time,x);
        hm = mesh(handles.plotarea,X,Y,y);
        colormap(jet);
        hr = rotate3d;
        set(hr,'RotateStyle','box','Enable','on');
        grid on
        xlabel('加热时间/s');
        ylabel('板厚/mm');
        zlabel('温度/℃');
    else
        x = linspace(0,data.wide,1000);%板的厚度
        y1 = data.tini+(data.tinf-data.tini).*erfc(x./(2000.*sqrt(a.*data.tao)));
         [kmlt kmlty] = min(abs(y1-meltpoint));
        if data.tinf > meltpoint
            y2 = data.tini+(data.tinf-data.tini).*erfc(x./(2000.*sqrt(a1*data.tao)));
            y = y1.*(x<=x(kmlty))+y2.*(x>x(kmlty));
        else
            y = y1;
        end
%         for kk = 1:1000
%             if y1(kk) <= meltpoint
%                 y(kk) = y1(kk);
%             else
%                 y(kk) = data.tini+(data.tinf-data.tini).*erfc(x(kk)./(2000.*sqrt(a1*data.tao)));
%             end
%         end
        kk = rand(1,3); %控制颜色
        if((get(handles.pain_mode,'Value'))==3)
            if(flag2 == 2)
                h = figure(2);
                set(h,'Name','材料激光加热温度分布')
                set(h,'NumberTitle','off');
                xlabel('板厚/mm');
                ylabel('温度/℃');
                hold on;
            else
                h = figure;
                set(h,'Name','材料激光加热温度分布');
                set(h,'NumberTitle','off');
                xlabel('板厚/mm');
                ylabel('温度/℃');
                hold on
            end
        end
        hl = plot(x,y,'Color',kk.*[1 1 1],'linewidth',2);
        grid on;
        if get(handles.select_mode,'Value') == 1
            if flagdb == 1
                legend(hl,metal.metaldata.name(flag1));
            elseif flagdb == 2
                legend(hl,metal.metaldata2.name(flag1));
            end
        else
            if data.tinf > meltpoint
                legend(hl,num2str(a1));
            else
                legend(hl,num2str(a));
            end
        end
    end
end



function initem_Callback(hObject, eventdata, handles)
% hObject    handle to initem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of initem as text
%        str2double(get(hObject,'String')) returns contents of initem as a double


% --- Executes during object creation, after setting all properties.
function initem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to initem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fintem_Callback(hObject, eventdata, handles)
% hObject    handle to fintem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fintem as text
%        str2double(get(hObject,'String')) returns contents of fintem as a double


% --- Executes during object creation, after setting all properties.
function fintem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fintem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wide_Callback(hObject, eventdata, handles)
% hObject    handle to wide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wide as text
%        str2double(get(hObject,'String')) returns contents of wide as a double


% --- Executes during object creation, after setting all properties.
function wide_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sure1.
function sure1_Callback(hObject, eventdata, handles)
% hObject    handle to sure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 获取数据data其中t0为初始温度tinf为最终温度，wide为宽度，tao为加热时间，flag4为计算类型
global data flag4  
data.tini = str2double(get(handles.initem,'String'));%初始温度
data.tinf = str2double(get(handles.fintem,'String'));%最终温度
data.wide = str2double(get(handles.wide,'String'));%宽度
data.tao = str2double(get(handles.tao,'String'));%加热时间
flag4 = get(handles.select_type,'Value');%计算类型
if(isnan(data.tini))
    errordlg('请输入材料的初始温度','错误');
elseif(isnan(data.tinf))
    errordlg('请输入材料的最终温度','错误');
% elseif(isnan(data.t0))
%     errordlg('请输入初始温度','错误');%设置个默认值
else
end
set(handles.tip,'String','请选择绘图模式');


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global k
k = 0;



% --- Executes during object creation, after setting all properties.
function sure2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sure2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on selection change in select_pmode.
function select_pmode_Callback(hObject, eventdata, handles)
% hObject    handle to select_pmode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns select_pmode contents as cell array
%        contents{get(hObject,'Value')} returns selected item from select_pmode


% --- Executes during object creation, after setting all properties.
function select_pmode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to select_pmode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function m_Callback(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m as text
%        str2double(get(hObject,'String')) returns contents of m as a double


% --- Executes during object creation, after setting all properties.
function m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_Callback(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double


% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sure4.
function sure4_Callback(hObject, eventdata, handles)
% hObject    handle to sure4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flag2 m n
flag = (get(handles.pain_mode,'Value'));%绘图模式选择
if(flag == 3)
    flag2 = get(handles.select_pmode,'Value');%弹出窗口的绘图模式选择
elseif(flag == 4)
    m = str2double(get(handles.m,'String'));%单窗口多图的横个数
    n = str2double(get(handles.n,'String'));%单窗口多图的纵个数
    if(isnan(m))
        errordlg('请输入多图的布局方式','错误');
    elseif(isnan(n))
        errordlg('请输入多图的布局方式','错误');
    end
else
end


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
clear global
delete(hObject);


% --- Executes on selection change in select_type.
function select_type_Callback(hObject, eventdata, handles)
% hObject    handle to select_type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns select_type contents as cell array
%        contents{get(hObject,'Value')} returns selected item from select_type


% --- Executes during object creation, after setting all properties.
function select_type_CreateFcn(hObject, eventdata, handles)
% hObject    handle to select_type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tao_Callback(hObject, eventdata, handles)
% hObject    handle to tao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tao as text
%        str2double(get(hObject,'String')) returns contents of tao as a double


% --- Executes during object creation, after setting all properties.
function tao_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tao (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function plotarea_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plotarea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% Hint: place code in OpeningFcn to populate plotarea


% --- Executes on button press in savedata.
function savedata_Callback(hObject, eventdata, handles)
% hObject    handle to savedata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
namec = inputdlg({'输入材料名称'},'请输入材料名称',1);
lamda = str2double(get(handles.cohc,'String'));%导热系数
ruo = str2double(get(handles.ruo,'String'));%密度
c = str2double(get(handles.c,'String'));%热容
a = lamda./(ruo.*c); %导温系数
if isempty(namec) 
    namec = double2str(a);
end
metal = load('metaldata');
[k1 k2] = size(metal.metaldata.tc);
metal.metaldata.name(k1+1) = namec;
metal.metaldata.tc(k1+1) = lamda;
metal.metaldata.desity(k1+1) = ruo;
metal.metaldata.desity(k1+1) = c;



function mltpt_Callback(hObject, eventdata, handles)
% hObject    handle to mltpt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mltpt as text
%        str2double(get(hObject,'String')) returns contents of mltpt as a double


% --- Executes during object creation, after setting all properties.
function mltpt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mltpt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function baocun_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to baocun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uiputfile('untitled'); 
saveas(gcf,fullfile(pathname, filename),'bmp');


% --- Executes on selection change in seldbs.
function seldbs_Callback(hObject, eventdata, handles)
% hObject    handle to seldbs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
flagdb = get(handles.seldbs,'Value'); %数据库的选择
switch flagdb
    case 1
        metal = load('metaldata');
        set(handles.select_m,'String',metal.metaldata.name);
    case 2
        metal = load('metaldata2');
        set(handles.select_m,'String',metal.metaldata2.name);
    otherwise
end

% Hints: contents = cellstr(get(hObject,'String')) returns seldbs contents as cell array
%        contents{get(hObject,'Value')} returns selected item from seldbs


% --- Executes during object creation, after setting all properties.
function seldbs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to seldbs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function loadm_Callback(hObject, eventdata, handles)
% hObject    handle to loadm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function ldpde_Callback(hObject, eventdata, handles)
% hObject    handle to ldpde (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pdetool;


% --- Executes on mouse press over axes background.
function plotarea_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to plotarea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function ttem_Callback(hObject, eventdata, handles)
% hObject    handle to ttem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ttem as text
%        str2double(get(hObject,'String')) returns contents of ttem as a double


% --- Executes during object creation, after setting all properties.
function ttem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ttem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xtem_Callback(hObject, eventdata, handles)
% hObject    handle to xtem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xtem as text
%        str2double(get(hObject,'String')) returns contents of xtem as a double


% --- Executes during object creation, after setting all properties.
function xtem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xtem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sure5.
function sure5_Callback(hObject, eventdata, handles)
% hObject    handle to sure5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y data N M
flagt = get(handles.outmdl,'Value');
ttemp = str2double(get(handles.ttem,'String'));
xtemp = str2double(get(handles.xtem,'String'));
titlet1 = '时间t=';
titlet2 = get(handles.ttem,'String');
titlet3 = '的温度场分布';
titlet = [titlet1 titlet2 titlet3];

titlex1 = '板厚x=';
titlex2 = get(handles.xtem,'String');
titlex = [titlex1 titlex2 titlet3];
x = linspace(eps,data.wide,N);%板的厚度
[kx ky] = min(abs(xtemp-x));
time = linspace(eps,data.tao,M);
[kx1 ky1] = min(abs(ttemp - time));
if isnan(ttemp)
    if isnan(xtemp)
        
    else
        figure(3); %温度随加热时间变化
        hh1 = plot(time,y(ky,:)','Color',rand(1,3),'linewidth',2);
        title(titlex);
        xlabel('加热时间t/s');
        ylabel('温度/℃');
        grid on;
        legend(hh1,['x=' num2str(xtemp) 'mm']);
        if flagt == 2
            hold on
        end
        
    end
else
    if isnan(xtemp)
        figure(4) %温度随板厚变化
        hh2 = plot(x,y(:,ky1),'Color',rand(1,3),'linewidth',2);
        title(titlet);
        xlabel('板厚/mm');
        ylabel('温度/℃');
        grid on;
        legend(hh2,['t=' num2str(ttemp) 's']);
         if flagt == 2
            hold on
        end
        
    else
        figure(3);
        hh1 = plot(time,y(ky,:)','Color',rand(1,3),'linewidth',2);
        title(titlex);
        xlabel('加热时间t/s');
        ylabel('温度/℃');
        grid on;
        legend(hh1,['x=' num2str(xtemp) 'mm']);
         if flagt == 2
            hold on
        end
        
        figure(4)
        hh2 = plot(x,y(:,ky1),'Color',rand(1,3),'linewidth',2);
        title(titlet);
        xlabel('板厚/mm');
        ylabel('温度/℃');
        grid on;
        legend(hh2,['t=' num2str(ttemp) 's']);
         if flagt == 2
            hold on
        end
        
    end
end



% --- Executes on button press in view001.
function view001_Callback(hObject, eventdata, handles)
% hObject    handle to view001 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view([0 0 1]);


% --- Executes on button press in view010.
function view010_Callback(hObject, eventdata, handles)
% hObject    handle to view010 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view([0 1 0]);


% --- Executes on button press in view100.
function view100_Callback(hObject, eventdata, handles)
% hObject    handle to view100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view([1 0 0 ]);


% --- Executes on button press in view011.
function view011_Callback(hObject, eventdata, handles)
% hObject    handle to view011 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view([0 1 1]);


% --- Executes on button press in view110.
function view110_Callback(hObject, eventdata, handles)
% hObject    handle to view110 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view([1 1 0]);


% --- Executes on button press in view101.
function view101_Callback(hObject, eventdata, handles)
% hObject    handle to view101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view([1 0 1]);


% --- Executes on selection change in outmdl.
function outmdl_Callback(hObject, eventdata, handles)
% hObject    handle to outmdl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns outmdl contents as cell array
%        contents{get(hObject,'Value')} returns selected item from outmdl


% --- Executes during object creation, after setting all properties.
function outmdl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outmdl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in view111.
function view111_Callback(hObject, eventdata, handles)
% hObject    handle to view111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view([1 1 1]);
