function varargout = cspread(varargin)
% CSPREAD M-file for cspread.fig
%      CSPREAD, by itself, creates a new CSPREAD or raises the existing
%      singleton*.
%
%      H = CSPREAD returns the handle to a new CSPREAD or the handle to
%      the existing singleton*.
%
%      CSPREAD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CSPREAD.M with the given input arguments.
%
%      CSPREAD('Property','Value',...) creates a new CSPREAD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cspread_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cspread_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cspread

% Last Modified by GUIDE v2.5 09-Dec-2012 23:05:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cspread_OpeningFcn, ...
                   'gui_OutputFcn',  @cspread_OutputFcn, ...
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


% --- Executes just before cspread is made visible.
function cspread_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cspread (see VARARGIN)

% Choose default command line output for cspread
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cspread wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cspread_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in type.
function type_Callback(hObject, eventdata, handles)
% hObject    handle to type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
flag = get(hObject,'Value');
switch flag
    case 1
        set(handles.text3,'String','离子碳浓度');
    case 2
        set(handles.text3,'String','气氛碳浓度');
    otherwise
end

% Hints: contents = cellstr(get(hObject,'String')) returns type contents as cell array
%        contents{get(hObject,'Value')} returns selected item from type


% --- Executes during object creation, after setting all properties.
function type_CreateFcn(hObject, eventdata, handles)
% hObject    handle to type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c0_Callback(hObject, eventdata, handles)
% hObject    handle to c0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c0 as text
%        str2double(get(hObject,'String')) returns contents of c0 as a double


% --- Executes during object creation, after setting all properties.
function c0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cp_Callback(hObject, eventdata, handles)
% hObject    handle to cp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cp as text
%        str2double(get(hObject,'String')) returns contents of cp as a double


% --- Executes during object creation, after setting all properties.
function cp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t_Callback(hObject, eventdata, handles)
% hObject    handle to t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t as text
%        str2double(get(hObject,'String')) returns contents of t as a double


% --- Executes during object creation, after setting all properties.
function t_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function beta_Callback(hObject, eventdata, handles)
% hObject    handle to beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of beta as text
%        str2double(get(hObject,'String')) returns contents of beta as a double


% --- Executes during object creation, after setting all properties.
function beta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double


% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in mslct.
function mslct_Callback(hObject, eventdata, handles)
% hObject    handle to mslct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flag_mode
flag_mode = get(handles.mslct,'Value');
switch flag_mode
    case 1
        set(handles.taosure,'Enable','on');
        set(handles.tsure,'Enable','off');
    case 2
        set(handles.taosure,'Enable','off');
        set(handles.tsure,'Enable','on');
    otherwise
end

% Hints: contents = cellstr(get(hObject,'String')) returns mslct contents as cell array
%        contents{get(hObject,'Value')} returns selected item from mslct


% --- Executes during object creation, after setting all properties.
function mslct_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mslct (see GCBO)
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


% --- Executes on button press in sure1.
function sure1_Callback(hObject, eventdata, handles)
% hObject    handle to sure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flag_type
global c0 cp tao wide
flag_type = get(handles.type,'Value');
c0 = str2double(get(handles.c0,'String'));
cp = str2double(get(handles.cp,'String'));
tao = str2double(get(handles.tao,'String'));
wide = str2double(get(handles.wide,'String'));




% --- Executes on button press in sure3.
function sure3_Callback(hObject, eventdata, handles)
% hObject    handle to sure3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global taoinf tinf
taoinf = str2double(get(handles.taoinf,'String'));
tinf = str2double(get(handles.tinf,'String'));


% --- Executes on button press in sure2.
function sure2_Callback(hObject, eventdata, handles)
% hObject    handle to sure2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t R c0
global beta d beta0 d0 tinf e0 q0
t = str2double(get(handles.t,'String'));
beta0 = str2double(get(handles.beta,'String'));
e0 = str2double(get(handles.e,'String'));
d0 = str2double(get(handles.d,'String'));
q0 = str2double(get(handles.q,'String'));
beta = beta0.*exp(-e0./(R.*(t+273)));
d = d0.*exp(-q0./(R.*(t+273)));
tinf = 727+c0*85/0.77;
set(handles.tinf,'String',tinf);



% --- Executes on button press in paint.
function paint_Callback(hObject, eventdata, handles)
% hObject    handle to paint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flag_type flag_mode hf2
global c0 cp tao wide
global t beta d
global tinf taoinf beta0 d0 e0 q0 R
% sure1_Callback(hObject, eventdata, handles);
% sure2_Callback(hObject, eventdata, handles);
% sure3_Callback(hObject, eventdata, handles);
% handles = guidata(hObject);
%处理cp（和相图比较）
cp1 = 0.77+(t-727)*1.34/421;
if cp>cp1
   cp = cp1;
else
end

flag_mslct = get(handles.mslct,'Value');
switch flag_mslct
    case 1   %温度一定
        x = linspace(0,wide,1000); %宽度，也就是板的宽度
        [l1 l2] = size(x);
        y = zeros(1,l2);
        for k1 = 1:l2
            
            if flag_type == 1
                y(k1) = c0+(cp-c0).*erfc(x(k1)./sqrt(d.*tao)./2);
            elseif flag_type == 2
                y(k1) = c0+(cp-c0).*(erfc(x(k1)./sqrt(d.*tao)./2)-...
                    exp((beta.*x(k1)+tao.*beta.^2)./d).*erfc(x(k1)./sqrt(d.*tao)./2+beta.*sqrt(tao./d)));
            else
            end  
        end
        
    case 2  %时间一定
        t0 = linspace(tinf,t,1000);
        [l1 l2] = size(t0);
        y = zeros(1,l2);
        for k1 = 1:l2
            x = wide;
            beta = beta0.*exp(-e0./(R.*(t0(k1)+273)));
            d = d0.*exp(-q0./(R.*(t0(k1)+273)));
            if flag_type == 1
                y(k1) = c0+(cp-c0).*erfc(x./sqrt(d.*tao)./2);
            elseif flag_type == 2
                y(k1) = c0+(cp-c0).*(erfc(x./sqrt(d.*tao)./2)-...
                    exp((beta.*x+tao.*beta.^2)./d).*erfc(x./sqrt(d.*tao)./2+beta.*sqrt(tao./d)));
            else
            end  
        end
    otherwise
end

% sure4_Callback(hObject, eventdata, handles);
flag_pmslct = get(handles.pmslct,'Value');
if flag_pmslct == 3
    hf2 = figure(2);
    set(hf2,'MenuBar','none','ToolBar','figure','NumberTitle','off'...,
        ,'Name','碳钢渗碳时碳浓度分布');
    flag_pmslct_t = get(handles.pmslct_t,'Value');
    switch flag_pmslct_t
        case 1
            hold off;
        case 2
            hold on;
%             set(hf2,'Nextplot','add');
        otherwise
    end
%     sure5_Callback(hObject, eventdata, handles)
elseif flag_pmslct == 4
    sure5_Callback(hObject, eventdata, handles)
else
end


switch flag_mslct
    case 1
        hp = plot(x,y,'Linewidth',2,'Color',rand(1,3));
        xlabel('板厚/cm');
%         legend(hp,['温度=' num2str(t) '时']);
    case 2
        hp = plot(t0,y,'Linewidth',2,'Color',rand(1,3));
        xlabel('温度/℃');
    otherwise
end
ylabel('碳浓度/%');
legend(hp,['x=' num2str(wide) ' tao=' num2str(tao) ' t=' num2str(t)]);
grid on;
% legend(tao);



% --- Executes on selection change in pmslct.
function pmslct_Callback(hObject, eventdata, handles)
% hObject    handle to pmslct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmslct contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmslct


% --- Executes during object creation, after setting all properties.
function pmslct_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmslct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sure4.
function sure4_Callback(hObject, eventdata, handles)
% hObject    handle to sure4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global hf2
flag_pmslct = get(handles.pmslct,'Value');
switch flag_pmslct
    case 1
        set(handles.plotarea,'Nextplot','replace');
        set(handles.pmslct_t,'Enable','off');
        set(handles.sure5,'Enable','off');
        set(handles.m,'Enable','off');
        set(handles.n,'Enable','off');
    case 2
        set(handles.pmslct_t,'Enable','off');
        set(handles.sure5,'Enable','off');
        set(handles.m,'Enable','off');
        set(handles.n,'Enable','off');
        set(handles.plotarea,'Nextplot','add');
    case 3
        set(handles.pmslct_t,'Enable','on');
        set(handles.sure5,'Enable','on');
        set(handles.m,'Enable','off');
        set(handles.n,'Enable','off');
    case 4
        set(handles.pmslct_t,'Enable','off');
        set(handles.sure5,'Enable','on');
        set(handles.m,'Enable','on');
        set(handles.n,'Enable','on');
    otherwise
    
end


% --- Executes on selection change in pmslct_t.
function pmslct_t_Callback(hObject, eventdata, handles)
% hObject    handle to pmslct_t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pmslct_t contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pmslct_t


% --- Executes during object creation, after setting all properties.
function pmslct_t_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pmslct_t (see GCBO)
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


% --- Executes on button press in sure5.
function sure5_Callback(hObject, eventdata, handles)
% hObject    handle to sure5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global hf2
global kmn
flag_pmslct = get(handles.pmslct,'Value');
flag_pmslct_t = get(handles.pmslct_t,'Value');
m = str2double(get(handles.m,'String'));
n = str2double(get(handles.n,'String'));
switch flag_pmslct
    case 3
        switch flag_pmslct_t
            case 1
                set(hf2,'Nextplot','replace');
            case 2
                set(hf2,'Nextplot','add');
            otherwise
        end
    case 4
        kmn = kmn+1;
        subplot(m,n,kmn);
    otherwise
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



function e_Callback(hObject, eventdata, handles)
% hObject    handle to e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e as text
%        str2double(get(hObject,'String')) returns contents of e as a double


% --- Executes during object creation, after setting all properties.
function e_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q_Callback(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q as text
%        str2double(get(hObject,'String')) returns contents of q as a double


% --- Executes during object creation, after setting all properties.
function q_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global R
R = 8.314;


% --- Executes during object creation, after setting all properties.
function plotarea_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plotarea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
xlabel('板厚/cm');
ylabel('碳浓度/%');

% Hint: place code in OpeningFcn to populate plotarea


% --- Executes during object creation, after setting all properties.
function sure5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sure5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global kmn
kmn =0;



function taoinf_Callback(hObject, eventdata, handles)
% hObject    handle to taoinf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of taoinf as text
%        str2double(get(hObject,'String')) returns contents of taoinf as a double


% --- Executes during object creation, after setting all properties.
function taoinf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to taoinf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tinf_Callback(hObject, eventdata, handles)
% hObject    handle to tinf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tinf as text
%        str2double(get(hObject,'String')) returns contents of tinf as a double


% --- Executes during object creation, after setting all properties.
function tinf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tinf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in paint3.
function paint3_Callback(hObject, eventdata, handles)
% hObject    handle to paint3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flag_type flag_mode hf2
global c0 cp tao wide
global t beta d
global tinf taoinf beta0 d0 e0 q0 R y
global hs
% sure1_Callback(hObject, eventdata, handles);
% sure2_Callback(hObject, eventdata, handles);
sure3_Callback(hObject, eventdata, handles);
% handles = guidata(hObject);
%处理cp（和相图比较）
cp1 = 0.77+(t-727)*1.34/421;
if cp>cp1
   cp = cp1;
else
end

flag_mslct = get(handles.mslct,'Value');
x = linspace(0,wide,1000); %宽度，也就是板的宽度
[l1 l2] = size(x);
switch flag_mslct
    case 1   %温度一定
        tao0 = linspace(taoinf,tao,100);
        [l3 l4] = size(tao0);
        y = zeros(l2,l4);
        for k1 = 1:l2
            for k2 = 1:l4
                if flag_type == 1
                    y(k1,k2) = c0+(cp-c0).*erfc(x(k1)./sqrt(d.*tao0(k2))./2);
                elseif flag_type == 2
                    y(k1,k2) = c0+(cp-c0).*(erfc(x(k1)./sqrt(d.*tao0(k2))./2)-...
                        exp((beta.*x(k1)+tao0(k2).*beta.^2)./d).*erfc(x(k1)./...
                        sqrt(d.*tao0(k2))./2+beta.*sqrt(tao0(k2)./d)));
                else
                end
            end
        end
        
    case 2  %时间一定
        t0 = linspace(tinf,t,100);
        [l3 l4] = size(t0);
        y = zeros(l2,l4);
        for k1 = 1:l4
            beta = beta0.*exp(-e0./(R.*(t0(k1)+273)));
            d = d0.*exp(-q0./(R.*(t0(k1)+273)));
            for k2 = 1:l2
                if flag_type == 1
                    y(k2,k1) = c0+(cp-c0).*erfc(x(k2)./sqrt(d.*tao)./2);
                elseif flag_type == 2
                    y(k2,k1) = c0+(cp-c0).*(erfc(x(k2)./sqrt(d.*tao)./2)-...
                        exp((beta.*x(k2)+tao.*beta.^2)./d).*erfc(x(k2)./...
                        sqrt(d.*tao)./2+beta.*sqrt(tao./d)));
                else
                end
            end
        end
    otherwise
end
% 
sure4_Callback(hObject, eventdata, handles);
handles=guidata(hObject);
flag_pmslct = get(handles.pmslct,'Value');
if flag_pmslct == 3
    hf2 = figure(2);
    set(hf2,'MenuBar','figure','ToolBar','figure','NumberTitle','off'...,
        ,'Name','碳钢渗碳时碳浓度分布');
    flag_pmslct_t = get(handles.pmslct_t,'Value');
    switch flag_pmslct_t
        case 1
            hold off;
        case 2
            hold on;
        otherwise
    end
elseif flag_pmslct == 4
    sure5_Callback(hObject, eventdata, handles)
else
end

switch flag_mslct
    case 1 %温度一定
        [X Y] = meshgrid(x,tao0');
        meshc(X,Y,y');
        xlabel('板厚/cm');
        ylabel('时间/s');
    case 2  %时间一定
        [X Y] = meshgrid(x,t0');
        meshc(X,Y,y');
        xlabel('板厚/cm');
        ylabel('温度/℃');
    otherwise
end
zlabel('碳浓度/%');
box on;
hold on;
hs = surf(X,Y,0.38*ones(100,1000),'EdgeColor',[1 1 1],'Visible','off');
% hold off



% --- Executes when selected object is changed in select.
function select_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in select 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
flag_sure = get(handles.sure3,'Enable');
switch flag_sure
    case 'off'
    set(handles.sure3,'Enable','on');
    set(handles.tinf,'Enable','on');
    set(handles.taoinf,'Enable','on');
%     set(handles.mslct,'Enable','on');
    set(handles.paint3,'Enable','on');
    set(handles.paint,'Enable','off');
    set(handles.analys,'Visible','on');
    case 'on'
    set(handles.sure3,'Enable','off');
    set(handles.tinf,'Enable','off');
    set(handles.taoinf,'Enable','off');
%     set(handles.mslct,'Enable','off');
    set(handles.paint3,'Enable','off');
    set(handles.paint,'Enable','on');
    set(handles.analys,'Visible','off');
end


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
clear global;
delete(hObject);


% --- Executes during object creation, after setting all properties.
function select_CreateFcn(hObject, eventdata, handles)
% hObject    handle to select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in tsure.
function tsure_Callback(hObject, eventdata, handles)
% hObject    handle to tsure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y wide tinf t
global judge
cs = inputdlg({'输入温度/℃'},'输入温度',1,{'900'});
xt = str2double(cell2mat(cs));
kt = linspace(tinf,t,100);
[k1 k2] = min(abs(xt-kt));
kx = linspace(0,wide,1000);
ky = y(:,k2);
hf5 = figure(5);
set(hf5,'MenuBar','figure','ToolBar','figure','NumberTitle','off'...,
        ,'Name','碳钢渗碳时碳浓度分布');
    hl5 = line(kx,ky','LineWidth',2,'Color',rand(1,3));
    hold on;
    xlabel('板厚/cm');
    ylabel('碳浓度/%');
    legend(hl5,['温度=' cell2mat(cs) '℃']);
    grid on;
    if judge == 2
        assignin('base','tx',kx);
        assignin('base','ty',ky);
    end


% --- Executes on button press in widesure.
function widesure_Callback(hObject, eventdata, handles)
% hObject    handle to widesure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y wide taoinf tinf tao t judge
cs = inputdlg({'输入板厚位置/cm'},'输入板厚',1,{'0.02'});
xcs = str2double(cell2mat(cs));
flag_mslct = get(handles.mslct,'Value');
x = linspace(0,wide,1000);
[k1 k2] = min(abs(x-xcs));
switch flag_mslct
    case 1
        kx = linspace(taoinf,tao,100);
    case 2
        kx = linspace(tinf,t,100);
end
ky = y(k2,:);
hf3 = figure(3);
set(hf3,'MenuBar','figure','ToolBar','figure','NumberTitle','off'...,
        ,'Name','碳钢渗碳时碳浓度分布');
    hl1 = line(kx,ky,'LineWidth',2,'Color',rand(1,3));
    hold on;
    switch flag_mslct
        case 1
            xlabel('时间/s');
        case 2
            xlabel('温度/℃');
    end
    ylabel('碳浓度/%');
    legend(hl1,['板厚=' cell2mat(cs) 'cm']);
    grid on;
    if judge == 2
        assignin('base','bx',kx);
        assignin('base','by',ky);
    end



% --- Executes on button press in taosure.
function taosure_Callback(hObject, eventdata, handles)
% hObject    handle to taosure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y wide taoinf tao judge
cs = inputdlg({'输入时间/s'},'输入时间',1,{'1200'});
xtao = str2double(cell2mat(cs));
ktao = linspace(taoinf,tao,100);
[k1 k2] = min(abs(xtao-ktao));
kx = linspace(0,wide,1000);
ky = y(:,k2);
hf4 = figure(4);
set(hf4,'MenuBar','figure','ToolBar','figure','NumberTitle','off'...,
        ,'Name','碳钢渗碳时碳浓度分布');
    hl2 = line(kx,ky','LineWidth',2,'Color',rand(1,3));
    hold on;
    xlabel('板厚/cm');
    ylabel('碳浓度/%');
    legend(hl2,['时间=' cell2mat(cs) 's']);
    grid on;
    if judge == 2
        assignin('base','taox',kx);
        assignin('base','taoy',ky);
    end




% --- Executes on button press in showcs.
function showcs_Callback(hObject, eventdata, handles)
% hObject    handle to showcs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% global y wide taoinf tinf tao t
% hold on
% [k1 k2] = size(y);
% kx = linspace(0,wide,1000);
% for ks = 1:k1
%     [l1 l2] = min(abs(y(ks,:)-0.38));
%     flag_mslct = get(handles.mslct,'Value');
%     switch flag_mslct
%         case 1
%             ky1 = linspace(taoinf,tao,100);
%         case 2
%             ky1 = linspace(tinf,t,100);
%     end
%     ky(ks) = ky1(l2);
% end
% kz = 0.38*ones(1,k1);
% plot3(kx,ky,kz,'Color','k','LineWidth',3);
% [X Y] = meshgrid(kx,ky1);
% hs = surf(X,Y,0.38*ones(100,1000),'EdgeColor',[1 1 1]);
global hs
flag_v = get(hs,'Visible');
switch flag_v
    case 'on'
        set(hs,'Visible','off');
    case 'off'
        set(hs,'Visible','on');
end


% --- Executes on button press in view001.
function view001_Callback(hObject, eventdata, handles)
% hObject    handle to view001 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global kv1
if mod(kv1,2)==0
    view([0 0 1]);
else
    view([0 0 -1]);
end
kv1 = kv1+1;


% --- Executes on button press in view010.
function view010_Callback(hObject, eventdata, handles)
% hObject    handle to view010 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global kv2
if mod(kv2,2)==0
    view([0 1 0]);
else
    view([0 -1 0]);
end
kv2 = kv2+1;


% --- Executes on button press in view100.
function view100_Callback(hObject, eventdata, handles)
% hObject    handle to view100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global kv3
if mod(kv3,2)==0
view([1 0 0]);
else
    view([-1 0 0]);
end
kv3 = kv3+1;


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


% --- Executes on button press in view011.
function view011_Callback(hObject, eventdata, handles)
% hObject    handle to view011 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view([0 1 1]);


% --- Executes on button press in view111.
function view111_Callback(hObject, eventdata, handles)
% hObject    handle to view111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view([1 1 1]);


% --- Executes on button press in hy.
function hy_Callback(hObject, eventdata, handles)
% hObject    handle to hy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view(3);


% --- Executes on button press in csure.
function csure_Callback(hObject, eventdata, handles)
% hObject    handle to csure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global y wide taoinf tinf tao t
global judge
[k1 k2] = size(y);
ky1 = linspace(0,wide,1000);
cs = inputdlg({'输入浓度/%'},'输入浓度',1,{'0.38'});
xc = str2double(cell2mat(cs));
flag_mslct = get(handles.mslct,'Value');
switch flag_mslct
    case 1
        kx = linspace(taoinf,tao,100);
    case 2
        kx = linspace(tinf,t,100);
end
for ks = 1:k2
    [l1 l2] = min(abs(y(:,ks)-xc));

    ky(ks) = ky1(l2);
end
hf6 = figure(6);
set(hf6,'MenuBar','figure','ToolBar','figure','NumberTitle','off'...,
        ,'Name','碳浓度一定时温度或者时间随板厚的关系');
    hl6 = line(kx,ky','LineWidth',2,'Color',rand(1,3));
    hold on;
    ylabel('板厚/cm');
    switch flag_mslct
        case 1
            xlabel('时间/s');
        case 2
            xlabel('温度');
    end
    legend(hl6,['碳浓度=' cell2mat(cs) '%']);
    grid on;
    if judge == 2
        assignin('base','cx',kx);
        assignin('base','cy',ky);
    end


% --- Executes during object creation, after setting all properties.
function view001_CreateFcn(hObject, eventdata, handles)
% hObject    handle to view001 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global kv1
kv1 = 0;


% --- Executes during object creation, after setting all properties.
function view010_CreateFcn(hObject, eventdata, handles)
% hObject    handle to view010 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global kv2
kv2 = 0;


% --- Executes during object creation, after setting all properties.
function view100_CreateFcn(hObject, eventdata, handles)
% hObject    handle to view100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

global kv3
kv3 = 0;


% --- Executes on button press in saveanx.
function saveanx_Callback(hObject, eventdata, handles)
% hObject    handle to saveanx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% [FileName,PathName] = uiputfile;
% hgsave(handles.plotarea,[PathName,FileName,'.bmp']);
newFig = figure(7);
newAxes = copyobj(handles.plotarea,newFig);
set(newAxes,'Units','default','Position','default');    % 设置图显示的位置


% --- Executes during object creation, after setting all properties.
function uipanel11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global judge
judge = 1;


% --- Executes when selected object is changed in uipanel11.
function uipanel11_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel11 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
global judge
if judge == 1
    judge =2;
elseif judge==2
    judge =1;
else
end


% --- Executes on button press in cprt.
function cprt_Callback(hObject, eventdata, handles)
% hObject    handle to cprt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hm = msgbox({'版权属于:HIT/廖名情','指导老师：闫牧夫','作者联系方式：',...
    'QQ：643894883','邮箱：liaomq1900127@163.com',...
    '编写时间紧急，如有不完善处，敬请原谅!','如有修改意见，请联系作者，谢谢！！！'},'版权说明');


% --- Executes during object creation, after setting all properties.
function paint3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to paint3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global ksc   calomap
ksc = 1;
calomap = ['Jet','HSV','Hot','Cool','Spring','Summer','Autumn',...
    'Winter','Gray','Bone','Copper','Pink','Lines'];
