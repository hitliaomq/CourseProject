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
%�滻�����ӣ�С���ڣ��ര��
flag = (get(handles.pain_mode,'Value')); %��ͼģʽ
switch flag
    case 1 %�ര��ģʽ
        set(handles.plotarea,'NextPlot','replace');
        set(handles.select_pmode,'Enable','off');
        set(handles.sure4,'Enable','off');
        set(handles.m,'Enable','off');
        set(handles.n,'Enable','off');
    case 2 %������ģʽ
        set(handles.plotarea,'NextPlot','add');
        set(handles.select_pmode,'Enable','off');
        set(handles.sure4,'Enable','off');
        set(handles.m,'Enable','off');
        set(handles.n,'Enable','off');
    case 3 %����ʽ����ģʽ
        set(handles.select_pmode,'Enable','on');
        set(handles.sure4,'Enable','on');
        set(handles.m,'Enable','off');
        set(handles.n,'Enable','off');
    case 4 %�����ڶ�ͼģʽ
        set(handles.select_pmode,'Enable','off');
        set(handles.sure4,'Enable','on');
        set(handles.m,'Enable','on');
        set(handles.n,'Enable','on');
    otherwise
end
set(handles.tip,'String','��ѡ����Ӧ�Ĳ���');


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
flag = get(handles.select_mode,'Value');  %ģʽѡ��

switch flag
    case 1 %��֪��������
        set(handles.cotc,'Enable','off');
        set(handles.cohc,'Enable','off');
        set(handles.ruo,'Enable','off');
        set(handles.c,'Enable','off');
        set(handles.select_m,'Enable','on');
        set(handles.mltpt,'Enable','off');
        set(handles.savedata,'Enable','off');
        set(handles.uipanel7,'Visible','on');
        set(handles.uipanel6,'Visible','on');
    case 2 %��֪����ϵ��
        set(handles.cotc,'Enable','on');
        set(handles.cohc,'Enable','off');
        set(handles.ruo,'Enable','off');
        set(handles.c,'Enable','off');
        set(handles.select_m,'Enable','off');
        set(handles.mltpt,'Enable','on');
        set(handles.uipanel7,'Visible','off');
        set(handles.uipanel6,'Visible','off');
%         set(handles.savedata,'Enable','off');
    case 3 %��֪����ϵ��
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
global data flag4  %falg4�������ͣ�dataΪ����
meltpoint = str2double(get(handles.mltpt,'String'));

if(isempty(data))
    errordlg('����г�ʼ����','����');
else
    flag = get(handles.select_mode,'Value'); %��֪ģʽ
    
    switch flag
        case 2   %��֪����ϵ��ģʽ
            a = 10.^(-6).*str2double(get(handles.cotc,'String'));%����ϵ��
            if(isnan(a))
                errordlg('�����뵼��ϵ��','����');
            end
            if data.tinf > meltpoint
                mltdatacel = inputdlg({'�ۻ���ĵ���ϵ����10^(-6)�O/s'},'�����ۻ��������',1);
                a1 = 10.^(-6).*str2double((mltdatacel)); %�ۻ���ĵ���ϵ��
            end
        case 3  %��֪����ϵ��ģʽ
            lamda = str2double(get(handles.cohc,'String'));%����ϵ��
            ruo = str2double(get(handles.ruo,'String'));%�ܶ�
            c = str2double(get(handles.c,'String'));%����
            a = lamda./(ruo.*c); %����ϵ��
            if(isnan(a))
                errordlg('�����뵼��ϵ�����ܶȼ�����','����');
            end
            if data.tinf > meltpoint
                mltdatacel = inputdlg({'�ۻ���ĵ���ϵ��W/(m.��)','�ۻ�����ܶ�(kg/m?)','�ܻ��������J/(kg.�棩'},'�����ۻ��������',1);
                mltdata = str2double((mltdatacel));
                a1 = mltdata(1)/(mltdata(2)*mltdata(3)); %�ܻ���ĵ���ϵ��
            end
        case 1 %��֪����ģʽ
            flag1 = get(handles.select_m,'Value');  %��Ӧ�Ĳ���
            
            flagdb = get(handles.seldbs,'Value'); %���ݿ��ѡ��
            
            switch flagdb
                case 1
                    metal = load('metaldata');
                    t1 = metal.metaldata.t1
%                     t1 = [-100,0,20,100,200,300,400,600,800,1000,1200];
                    [tsza tszb] = size(t1);
                    lamda1 = metal.metaldata.tc(flag1,:) %����ϵ��
                    %% �ֶ����Բ�ֵ
                    kt0 = 0;
                    for kt = 1:tszb
                        if isnan(lamda1(kt))
                        else
                            kt0 = kt0+1;
                            t2(kt0) = t1(kt);
                            lamda0(kt0) = lamda1(kt);
                        end
                    end
                    
                    t0 = linspace(min(t2),max(t2),1000); %�Ա����¶�
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
                    lamda1 = lamda0*l  %���������ϵ��
%                     h5 = figure(5);
%                     hl5 = plot(t0,lamda1,'linewidth',2);
%                     xlabel('�¶�/��');
%                     ylabel('����ϵ��/(W/(m.��))');
%                     hold on;

%% 
                    ruo = metal.metaldata.density(flag1);%�ܶ�
                    c = metal.metaldata.spheat(flag1);%����
                case 2
                    metal = load('metaldata2');
                    lamda = metal.metaldata2.tc(flag1);%����ϵ��
                    ruo = metal.metaldata2.density(flag1);%�ܶ�
                    c = metal.metaldata2.spheat(flag1);%����
                otherwise
            end
%             a = lamda./(ruo.*c);%����ϵ��
%             set(handles.cohc,'String',lamda);
            set(handles.ruo,'String',ruo);
            set(handles.c,'String',c);
%             set(handles.cotc,'String',a*10.^6);
            %����Ӧ�����ݿ���ѡ��
        otherwise
    end
    if flag == 1
        
        %�ҵ���t��ʼ��ӽ���t
        [kx ky] = min(abs(t0-data.tini));
        lamda = lamda1(ky);
        a = lamda./(ruo.*c);%����ϵ��
        %t(x,y) = t0+(tinf-t0).*erfc(x./2*sqrt(a.*y))
        N = 500;
        x = linspace(eps,data.wide,N);%��ĺ��
        M = 250;
        time = linspace(eps,data.tao,M); %����ʱ��
        %% ����
        if(flag4 == 1)   %flag4����ģʽ
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
                set(h,'Name','���ϼ�������¶ȷֲ�')
                set(h,'NumberTitle','off');
                xlabel('����ʱ��/s');
                ylabel('���/mm');
                zlabel('�¶�/��');
                hold on;
            else
                h = figure;
                set(h,'Name','���ϼ�������¶ȷֲ�');
                set(h,'NumberTitle','off');
                xlabel('����ʱ��/s');
                ylabel('���/mm');
                zlabel('�¶�/��');
                hold on
            end
        end
        
        if((get(handles.pain_mode,'Value'))==4)
            k = k+1;
            if(k>m*n)
                errordlg('��������Ļ�ͼѡ���еĵ����ڶ�ͼ����','����');
            else
                subplot(m,n,k);
            end
        end
        
        %% ��ͼ
        [X,Y] = meshgrid(time,x);
        hm = mesh(handles.plotarea,X,Y,y);
        colormap(jet);
        hr = rotate3d;
        set(hr,'RotateStyle','box','Enable','on');
        grid on
        xlabel('����ʱ��/s');
        ylabel('���/mm');
        zlabel('�¶�/��');
    else
        x = linspace(0,data.wide,1000);%��ĺ��
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
        kk = rand(1,3); %������ɫ
        if((get(handles.pain_mode,'Value'))==3)
            if(flag2 == 2)
                h = figure(2);
                set(h,'Name','���ϼ�������¶ȷֲ�')
                set(h,'NumberTitle','off');
                xlabel('���/mm');
                ylabel('�¶�/��');
                hold on;
            else
                h = figure;
                set(h,'Name','���ϼ�������¶ȷֲ�');
                set(h,'NumberTitle','off');
                xlabel('���/mm');
                ylabel('�¶�/��');
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
% ��ȡ����data����t0Ϊ��ʼ�¶�tinfΪ�����¶ȣ�wideΪ��ȣ�taoΪ����ʱ�䣬flag4Ϊ��������
global data flag4  
data.tini = str2double(get(handles.initem,'String'));%��ʼ�¶�
data.tinf = str2double(get(handles.fintem,'String'));%�����¶�
data.wide = str2double(get(handles.wide,'String'));%���
data.tao = str2double(get(handles.tao,'String'));%����ʱ��
flag4 = get(handles.select_type,'Value');%��������
if(isnan(data.tini))
    errordlg('��������ϵĳ�ʼ�¶�','����');
elseif(isnan(data.tinf))
    errordlg('��������ϵ������¶�','����');
% elseif(isnan(data.t0))
%     errordlg('�������ʼ�¶�','����');%���ø�Ĭ��ֵ
else
end
set(handles.tip,'String','��ѡ���ͼģʽ');


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
flag = (get(handles.pain_mode,'Value'));%��ͼģʽѡ��
if(flag == 3)
    flag2 = get(handles.select_pmode,'Value');%�������ڵĻ�ͼģʽѡ��
elseif(flag == 4)
    m = str2double(get(handles.m,'String'));%�����ڶ�ͼ�ĺ����
    n = str2double(get(handles.n,'String'));%�����ڶ�ͼ���ݸ���
    if(isnan(m))
        errordlg('�������ͼ�Ĳ��ַ�ʽ','����');
    elseif(isnan(n))
        errordlg('�������ͼ�Ĳ��ַ�ʽ','����');
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
namec = inputdlg({'�����������'},'�������������',1);
lamda = str2double(get(handles.cohc,'String'));%����ϵ��
ruo = str2double(get(handles.ruo,'String'));%�ܶ�
c = str2double(get(handles.c,'String'));%����
a = lamda./(ruo.*c); %����ϵ��
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
flagdb = get(handles.seldbs,'Value'); %���ݿ��ѡ��
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
titlet1 = 'ʱ��t=';
titlet2 = get(handles.ttem,'String');
titlet3 = '���¶ȳ��ֲ�';
titlet = [titlet1 titlet2 titlet3];

titlex1 = '���x=';
titlex2 = get(handles.xtem,'String');
titlex = [titlex1 titlex2 titlet3];
x = linspace(eps,data.wide,N);%��ĺ��
[kx ky] = min(abs(xtemp-x));
time = linspace(eps,data.tao,M);
[kx1 ky1] = min(abs(ttemp - time));
if isnan(ttemp)
    if isnan(xtemp)
        
    else
        figure(3); %�¶������ʱ��仯
        hh1 = plot(time,y(ky,:)','Color',rand(1,3),'linewidth',2);
        title(titlex);
        xlabel('����ʱ��t/s');
        ylabel('�¶�/��');
        grid on;
        legend(hh1,['x=' num2str(xtemp) 'mm']);
        if flagt == 2
            hold on
        end
        
    end
else
    if isnan(xtemp)
        figure(4) %�¶�����仯
        hh2 = plot(x,y(:,ky1),'Color',rand(1,3),'linewidth',2);
        title(titlet);
        xlabel('���/mm');
        ylabel('�¶�/��');
        grid on;
        legend(hh2,['t=' num2str(ttemp) 's']);
         if flagt == 2
            hold on
        end
        
    else
        figure(3);
        hh1 = plot(time,y(ky,:)','Color',rand(1,3),'linewidth',2);
        title(titlex);
        xlabel('����ʱ��t/s');
        ylabel('�¶�/��');
        grid on;
        legend(hh1,['x=' num2str(xtemp) 'mm']);
         if flagt == 2
            hold on
        end
        
        figure(4)
        hh2 = plot(x,y(:,ky1),'Color',rand(1,3),'linewidth',2);
        title(titlet);
        xlabel('���/mm');
        ylabel('�¶�/��');
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
