function varargout = GUI_Start(varargin)
% GUI_START MATLAB code for GUI_Start.fig
%      GUI_START, by itself, creates a new GUI_START or raises the existing
%      singleton*.
%
%      H = GUI_START returns the handle to a new GUI_START or the handle to
%      the existing singleton*.
%
%      GUI_START('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_START.M with the given input arguments.
%
%      GUI_START('Property','Value',...) creates a new GUI_START or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_Start_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_Start_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_Start

% Last Modified by GUIDE v2.5 25-Nov-2015 08:14:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_Start_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_Start_OutputFcn, ...
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


% --- Executes just before GUI_Start is made visible.
function GUI_Start_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_Start (see VARARGIN)

% Choose default command line output for GUI_Start
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_Start wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_Start_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function et_Epsilon_Callback(hObject, eventdata, handles)
% hObject    handle to et_Epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_Epsilon as text
%        str2double(get(hObject,'String')) returns contents of et_Epsilon as a double


% --- Executes during object creation, after setting all properties.
function et_Epsilon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_Epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_R_AVG_Min_Callback(hObject, eventdata, handles)
% hObject    handle to et_R_AVG_Min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_R_AVG_Min as text
%        str2double(get(hObject,'String')) returns contents of et_R_AVG_Min as a double


% --- Executes during object creation, after setting all properties.
function et_R_AVG_Min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_R_AVG_Min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_Coefficient_1_for_RHO_Callback(hObject, eventdata, handles)
% hObject    handle to et_Coefficient_1_for_RHO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_Coefficient_1_for_RHO as text
%        str2double(get(hObject,'String')) returns contents of et_Coefficient_1_for_RHO as a double


% --- Executes during object creation, after setting all properties.
function et_Coefficient_1_for_RHO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_Coefficient_1_for_RHO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_Power_1_for_RHO_Callback(hObject, eventdata, handles)
% hObject    handle to et_Power_1_for_RHO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_Power_1_for_RHO as text
%        str2double(get(hObject,'String')) returns contents of et_Power_1_for_RHO as a double


% --- Executes during object creation, after setting all properties.
function et_Power_1_for_RHO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_Power_1_for_RHO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_Coefficient_2_for_RHO_Callback(hObject, eventdata, handles)
% hObject    handle to et_Coefficient_2_for_RHO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_Coefficient_2_for_RHO as text
%        str2double(get(hObject,'String')) returns contents of et_Coefficient_2_for_RHO as a double


% --- Executes during object creation, after setting all properties.
function et_Coefficient_2_for_RHO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_Coefficient_2_for_RHO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_Power_2_for_RHO_Callback(hObject, eventdata, handles)
% hObject    handle to et_Power_2_for_RHO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_Power_2_for_RHO as text
%        str2double(get(hObject,'String')) returns contents of et_Power_2_for_RHO as a double


% --- Executes during object creation, after setting all properties.
function et_Power_2_for_RHO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_Power_2_for_RHO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rb_Number_of_Sentences_for_RHO_2.
function rb_Number_of_Sentences_for_RHO_2_Callback(hObject, eventdata, handles)
% hObject    handle to rb_Number_of_Sentences_for_RHO_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_Number_of_Sentences_for_RHO_2


% --- Executes on button press in rb_Number_of_Sentences_for_RHO_1.
function rb_Number_of_Sentences_for_RHO_1_Callback(hObject, eventdata, handles)
% hObject    handle to rb_Number_of_Sentences_for_RHO_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rb_Number_of_Sentences_for_RHO_1



function et_Number_of_Decision_Variables_Callback(hObject, eventdata, handles)
% hObject    handle to et_Number_of_Decision_Variables (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_Number_of_Decision_Variables as text
%        str2double(get(hObject,'String')) returns contents of et_Number_of_Decision_Variables as a double


% --- Executes during object creation, after setting all properties.
function et_Number_of_Decision_Variables_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_Number_of_Decision_Variables (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_VAR_Max_Callback(hObject, eventdata, handles)
% hObject    handle to et_VAR_Max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_VAR_Max as text
%        str2double(get(hObject,'String')) returns contents of et_VAR_Max as a double


% --- Executes during object creation, after setting all properties.
function et_VAR_Max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_VAR_Max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_VAR_Min_Callback(hObject, eventdata, handles)
% hObject    handle to et_VAR_Min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_VAR_Min as text
%        str2double(get(hObject,'String')) returns contents of et_VAR_Min as a double


% --- Executes during object creation, after setting all properties.
function et_VAR_Min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_VAR_Min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_GA_MAximum_Iterations_Callback(hObject, eventdata, handles)
% hObject    handle to et_GA_MAximum_Iterations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_GA_MAximum_Iterations as text
%        str2double(get(hObject,'String')) returns contents of et_GA_MAximum_Iterations as a double


% --- Executes during object creation, after setting all properties.
function et_GA_MAximum_Iterations_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_GA_MAximum_Iterations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_GA_MAximum_Population_Size_Callback(hObject, eventdata, handles)
% hObject    handle to et_GA_MAximum_Population_Size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_GA_MAximum_Population_Size as text
%        str2double(get(hObject,'String')) returns contents of et_GA_MAximum_Population_Size as a double


% --- Executes during object creation, after setting all properties.
function et_GA_MAximum_Population_Size_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_GA_MAximum_Population_Size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_GA_P_Crossover_Callback(hObject, eventdata, handles)
% hObject    handle to et_GA_P_Crossover (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_GA_P_Crossover as text
%        str2double(get(hObject,'String')) returns contents of et_GA_P_Crossover as a double


% --- Executes during object creation, after setting all properties.
function et_GA_P_Crossover_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_GA_P_Crossover (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_GA_P_Mutation_Callback(hObject, eventdata, handles)
% hObject    handle to et_GA_P_Mutation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_GA_P_Mutation as text
%        str2double(get(hObject,'String')) returns contents of et_GA_P_Mutation as a double


% --- Executes during object creation, after setting all properties.
function et_GA_P_Mutation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_GA_P_Mutation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_GA_Deviation_Callback(hObject, eventdata, handles)
% hObject    handle to et_GA_Deviation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_GA_Deviation as text
%        str2double(get(hObject,'String')) returns contents of et_GA_Deviation as a double


% --- Executes during object creation, after setting all properties.
function et_GA_Deviation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_GA_Deviation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_Number_of_Populations_for_Demonstration_Callback(hObject, eventdata, handles)
% hObject    handle to et_Number_of_Populations_for_Demonstration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_Number_of_Populations_for_Demonstration as text
%        str2double(get(hObject,'String')) returns contents of et_Number_of_Populations_for_Demonstration as a double


% --- Executes during object creation, after setting all properties.
function et_Number_of_Populations_for_Demonstration_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_Number_of_Populations_for_Demonstration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb_start.
function pb_start_Callback(hObject, eventdata, handles)

    % Clear all
        clc;
        clear all;
        warning off MATLAB:namelengthmaxexceeded;
        
    % Closing all
        index = 1 ;
        stop = 'false';
        while(strcmp(stop, 'false')==1)
            is_indexTH_Figure_Open = intersect(findall(0,'type','figure'),index);
            if (isempty(is_indexTH_Figure_Open)==0)
                close(is_indexTH_Figure_Open)
            else
                stop = 'true';
            end
            index = index + 1 ;
        end
    
    % Adding the Essential Folders       
        AddPath( 'Functions_Folder' );
        AddPath( 'Ga_Folder' );    

   %% Radio Buttons
    
        % RHO Section
            rb_LP_Selection_hdl   = findobj(gcbf, 'Tag', 'rb_LP_Selection');
            rb_LP_Selection_Value = get ( rb_LP_Selection_hdl, 'Value');  % Later in     

            rb_User_Selection_hdl   = findobj(gcbf, 'Tag', 'rb_User_Selection');
            rb_User_Selection_Value = get ( rb_User_Selection_hdl, 'Value');
                
            % User Selection     
                rb_Number_of_Sentences_for_RHO_1_hdl   = findobj(gcbf, 'Tag', 'rb_Number_of_Sentences_for_RHO_1');
                rb_Number_of_Sentences_for_RHO_1 = get ( rb_Number_of_Sentences_for_RHO_1_hdl, 'Value');

                rb_Number_of_Sentences_for_RHO_2_hdl   = findobj(gcbf, 'Tag', 'rb_Number_of_Sentences_for_RHO_2');
                rb_Number_of_Sentences_for_RHO_2 = get ( rb_Number_of_Sentences_for_RHO_2_hdl, 'Value');
    
        % Essential Parameters Section   
            % Optimization             
                rb_Ascending_Policy_hdl   = findobj(gcbf, 'Tag', 'rb_Ascending_Policy');
                rb_Ascending_Policy = get ( rb_Ascending_Policy_hdl, 'Value');

                rb_Descending_Policy_hdl   = findobj(gcbf, 'Tag', 'rb_Descending_Policy');
                rb_Descending_Policy = get ( rb_Descending_Policy_hdl, 'Value');
                
                if     ( rb_Ascending_Policy == 1 )
                    ranking_Policy = 'Ascend';
                    
                elseif ( rb_Descending_Policy == 1 )
                    ranking_Policy = 'Descend';
                    
                end
    
    
   %% Edit Texts   
    
        % RHO Section        
            % LP Part
                et_R_AVG_Min_hdl   = findobj(gcbf, 'Tag', 'et_R_AVG_Min'); 
                et_R_AVG_Min_Value = str2double ( get ( et_R_AVG_Min_hdl, 'String') );  % Later in r
                
                et_R_AVG_Steps_hdl   = findobj(gcbf, 'Tag', 'et_R_AVG_Steps'); 
                et_R_AVG_Steps_Value = str2double ( get ( et_R_AVG_Steps_hdl, 'String') );  % Later in r
                
                et_R_AVG_Max_hdl   = findobj(gcbf, 'Tag', 'et_R_AVG_Max'); 
                et_R_AVG_Max_Value = str2double ( get ( et_R_AVG_Max_hdl, 'String') );  % Later in r

            % User Selection  
                et_Power_1_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Power_1_for_RHO');
                et_Power_1_for_RHO = str2double ( get ( et_Power_1_for_RHO_hdl, 'String') );
                
                et_Coefficient_1_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Coefficient_1_for_RHO');
                et_Coefficient_1_for_RHO = str2double ( get ( et_Coefficient_1_for_RHO_hdl, 'String') );

                et_Power_2_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Power_2_for_RHO');
                et_Power_2_for_RHO = str2double ( get ( et_Power_2_for_RHO_hdl, 'String') );

                et_Coefficient_2_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Coefficient_2_for_RHO');
                et_Coefficient_2_for_RHO = str2double ( get ( et_Coefficient_2_for_RHO_hdl, 'String') );
         
        % Essential Parameters Section   
            % Optimization                     
                et_Epsilon_hdl   = findobj(gcbf, 'Tag', 'et_Epsilon');
                et_Epsilon = str2double ( get ( et_Epsilon_hdl, 'String') );

                et_Number_of_Decision_Variables_hdl   = findobj(gcbf, 'Tag', 'et_Number_of_Decision_Variables');
                et_Number_of_Decision_Variables = str2double ( get ( et_Number_of_Decision_Variables_hdl, 'String') );

                et_VAR_Max_hdl   = findobj(gcbf, 'Tag', 'et_VAR_Max');
                et_VAR_Max = str2double ( get ( et_VAR_Max_hdl, 'String') );

                et_VAR_Min_hdl   = findobj(gcbf, 'Tag', 'et_VAR_Min');
                et_VAR_Min = str2double ( get  ( et_VAR_Min_hdl, 'String') );

                et_Number_of_Populations_for_Demonstration_hdl   = findobj(gcbf, 'Tag', 'et_Number_of_Populations_for_Demonstration');
                et_Number_of_Populations_for_Demonstration = str2double ( get ( et_Number_of_Populations_for_Demonstration_hdl, 'String') );

                et_CR_Best_hdl   = findobj(gcbf, 'Tag', 'et_CR_Best');
                et_CR_Best = str2double ( get ( et_CR_Best_hdl, 'String') );

                et_CR_Deviation_hdl   = findobj(gcbf, 'Tag', 'et_CR_Deviation');
                et_CR_Deviation = str2double ( get ( et_CR_Deviation_hdl, 'String') );
    
            % GA   
                et_GA_MAximum_Iterations_hdl   = findobj(gcbf, 'Tag', 'et_GA_MAximum_Iterations');
                et_GA_MAximum_Iterations = str2double ( get ( et_GA_MAximum_Iterations_hdl, 'String') );

                et_GA_MAximum_Population_Size_hdl   = findobj(gcbf, 'Tag', 'et_GA_MAximum_Population_Size');
                et_GA_MAximum_Population_Size = str2double ( get ( et_GA_MAximum_Population_Size_hdl, 'String') );

                et_GA_P_Crossover_hdl   = findobj(gcbf, 'Tag', 'et_GA_P_Crossover');
                et_GA_P_Crossover = str2double ( get ( et_GA_P_Crossover_hdl, 'String') );

                et_GA_P_Mutation_hdl   = findobj(gcbf, 'Tag', 'et_GA_P_Mutation');
                et_GA_P_Mutation = str2double ( get ( et_GA_P_Mutation_hdl, 'String') );

                et_GA_Deviation_hdl   = findobj(gcbf, 'Tag', 'et_GA_Deviation');
                et_GA_Deviation = str2double ( get ( et_GA_Deviation_hdl, 'String') );
                    
   %% Making Decision Based on 'Selected Mode for RHO'
        if     ( rb_LP_Selection_Value == 1 )
            RHO_Initial_Parameters = [ et_R_AVG_Min_Value et_R_AVG_Steps_Value et_R_AVG_Max_Value ]; 

        elseif ( rb_User_Selection_Value == 1 )
            if      ( rb_Number_of_Sentences_for_RHO_1 == 1 )
                RHO_Initial_Parameters = [ et_Coefficient_1_for_RHO et_Power_1_for_RHO ];

            elseif  ( rb_Number_of_Sentences_for_RHO_2 == 1 )
                RHO_Initial_Parameters = [ et_Coefficient_1_for_RHO et_Power_1_for_RHO et_Coefficient_2_for_RHO et_Power_2_for_RHO ];

            end

        end                   
    
                
% [ranked_all_Chromosomes_of_all_Iterations all_Chromosomes_of_all_Iterations Bests_of_all_Iterations Global_Best] = Genetic_Algorithm_Manager (      initial_Population, ...                   % A Maxtrix or '' :  Each Column has the results of a Test for All Variables      
%                                                                                                                                                     ...                                      % for ex. :     input_Data = [ Cement       :  1  2  3  4  5 ;
%                                                                                                                                                     ...                                      %                              Lime_Powder  :  6  7  8  9  10;
%                                                                                                                                                     ...                                      %                              Stone_Powder :  11 12 13 14 15;
%                                                                                                                                                     ...                                      %                              ...          :       ...
%                                                                                                                                                     ...                                      %                            ]
%                                                                                                                                                     ...
%                                                                                                                                                     initial_Costs, ...                       % A Vertical Vector or ''
%                                                                                                                                                     ...
%                                                                                                                                                     initial_Parameters, ...                  % Vertical Structure or '' : any Essential parameter for problem (such as u for Cost function)
%                                                                                                                                                     ...
%                                                                                                                                                     number_of_Vars, ...                      % Number of Decision Variables
%                                                                                                                                                     var_Min_Vector, ...                      % Horizontal Vector or '' : Minimum Value of Vars
%                                                                                                                                                     var_Max_Vector, ...                      % Horizontal Vector or '' : Maximum Value of Vars
%                                                                                                                                                     ...
%                                                                                                                                                     draw_the_Convergence_Fig, ...            % 0 or 1 : Draws COnvergence Procedure
%                                                                                                                                                     draw_the_Seperated_Histogram_Figs, ...   % 0 or 1 : Draws Seperated Histogram Figures        
%                                                                                                                                                     draw_the_Integrated_Histogram_Fig, ...   % 0 or 1 : Draws Integrated Histogram Figure       
%                                                                                                                                                     column_Names, ...                        % Column Names for Histogram
%                                                                                                                                                     ...
%                                                                                                                                                     maximum_Iteration, ...
%                                                                                                                                                     population_Size, ...
%                                                                                                                                                     p_CrossOver, ...
%                                                                                                                                                     p_Mutation, ...
%                                                                                                                                                     deviation,...
%                                                                                                                                                     ...
%                                                                                                                                                     the_Num_of_Pops_for_Demonstration, ...   % The Number of populations for Demonstration
%                                                                                                                                                     ...
%                                                                                                                                                     ranking_Policy )                         % 'Descend' or 'Ascend'   : for 'Descend' the 'Global Best' 'increases'
%                                                                                                                                                                                                          %             : for 'Ascend'  the 'Global Best' 'descreases'
%                                                                             
%                                                                             

       
   %% Starting the calculation of Runtime
        tic;
    
   %% Executation of Optimization code
        [ranked_all_Chromosomes_and_Calculations_based_on_SignmaLambda ranked_all_Chromosomes_of_all_Iterations all_Chromosomes_of_all_Iterations Bests_of_all_Iterations Global_Best best_Iterations_Figure all_Iterations_Figure ] = Genetic_Algorithm_Manager (       [], ...                                  % A Maxtrix or '' :  Each Column has the results of a Test for All Variables      
                                                                                                                                                                                                                                                                            ...                                      % for ex. :     input_Data = [ Cement       :  1  2  3  4  5 ;
                                                                                                                                                                                                                                                                            ...                                      %                              Lime_Powder  :  6  7  8  9  10;
                                                                                                                                                                                                                                                                            ...                                      %                              Stone_Powder :  11 12 13 14 15;
                                                                                                                                                                                                                                                                            ...                                      %                              ...          :       ...
                                                                                                                                                                                                                                                                            ...                                      %                            ]
                                                                                                                                                                                                                                                                            ...
                                                                                                                                                                                                                                                                            [], ...                                  % A Vertical Vector or ''
                                                                                                                                                                                                                                                                            ...
                                                                                                                                                                                                                                                                            [ et_Epsilon  RHO_Initial_Parameters ], ...                           % Vertical Structure or '' : any Essential parameter for problem (such as [ epsilon power_of_Row ] for Cost function)
                                                                                                                                                                                                                                                                            ...
                                                                                                                                                                                                                                                                            et_Number_of_Decision_Variables, ...                                 % Number of Decision Variables
                                                                                                                                                                                                                                                                            et_VAR_Min * ones ( 1, et_Number_of_Decision_Variables ), ...       % Horizontal Vector or '' : Minimum Value of Vars
                                                                                                                                                                                                                                                                            et_VAR_Max * ones ( 1, et_Number_of_Decision_Variables ), ...       % Horizontal Vector or '' : Maximum Value of Vars
                                                                                                                                                                                                                                                                            ...
                                                                                                                                                                                                                                                                            1, ...                                   % 0 or 1 : Draws COnvergence Procedure
                                                                                                                                                                                                                                                                            0, ...                                   % 0 or 1 : Draws Seperated Histogram Figures        
                                                                                                                                                                                                                                                                            0, ...                                   % 0 or 1 : Draws Integrated Histogram Figure       
                                                                                                                                                                                                                                                                            [], ...                                  % Column Names for Histogram
                                                                                                                                                                                                                                                                            ...
                                                                                                                                                                                                                                                                            et_GA_MAximum_Iterations, ...
                                                                                                                                                                                                                                                                            et_GA_MAximum_Population_Size, ...
                                                                                                                                                                                                                                                                            et_GA_P_Crossover, ...
                                                                                                                                                                                                                                                                            et_GA_P_Mutation, ...
                                                                                                                                                                                                                                                                            et_GA_Deviation,...
                                                                                                                                                                                                                                                                            ...
                                                                                                                                                                                                                                                                            et_CR_Best, ...                             % Baest Value that is Assigned to 'CodeRate' : No Limitation
                                                                                                                                                                                                                                                                            et_CR_Deviation, ...                             % 0 <= codeRate_Deviation <= codeRate_Best_Value
                                                                                                                                                                                                                                                                            ...
                                                                                                                                                                                                                                                                            et_Number_of_Populations_for_Demonstration, ...                               % The Number of populations for Demonstration
                                                                                                                                                                                                                                                                            ...
                                                                                                                                                                                                                                                                            ranking_Policy )                             % 'Descend' or 'Ascend'   : for 'Descend' the 'Global Best' 'increases'
                                                                                                                                                                                                                                                                                                                         %                         : for 'Ascend'  the 'Global Best' 'descreases'
                                                                                                                                                                                                                                                                         
   %% Terminating the calculation of Runtime        
        end_Time = toc;  
        fprintf ( 'The Total Simulation Time : %d (Seconds) && %d (Minutes) && %d (Hours)', end_Time, end_Time/60, end_Time/3600);

   %% To Do : Correct the Address
        save ( 'ranked_all_Chromosomes_and_Calculations_based_on_SignmaLambda.mat', 'ranked_all_Chromosomes_and_Calculations_based_on_SignmaLambda');                                                                                                                                                    
                                                                                                                                                                                                       

                 



function et_CR_Best_Callback(hObject, eventdata, handles)
% hObject    handle to et_CR_Best (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_CR_Best as text
%        str2double(get(hObject,'String')) returns contents of et_CR_Best as a double


% --- Executes during object creation, after setting all properties.
function et_CR_Best_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_CR_Best (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_CR_Deviation_Callback(hObject, eventdata, handles)
% hObject    handle to et_CR_Deviation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_CR_Deviation as text
%        str2double(get(hObject,'String')) returns contents of et_CR_Deviation as a double


% --- Executes during object creation, after setting all properties.
function et_CR_Deviation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_CR_Deviation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_R_AVG_Steps_Callback(hObject, eventdata, handles)
% hObject    handle to et_R_AVG_Steps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_R_AVG_Steps as text
%        str2double(get(hObject,'String')) returns contents of et_R_AVG_Steps as a double


% --- Executes during object creation, after setting all properties.
function et_R_AVG_Steps_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_R_AVG_Steps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function et_R_AVG_Max_Callback(hObject, eventdata, handles)
% hObject    handle to et_R_AVG_Max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of et_R_AVG_Max as text
%        str2double(get(hObject,'String')) returns contents of et_R_AVG_Max as a double


% --- Executes during object creation, after setting all properties.
function et_R_AVG_Max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to et_R_AVG_Max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in uipanel5.
function uipanel5_SelectionChangeFcn(hObject, eventdata, handles)

            rb_LP_Selection_hdl   = findobj(gcbf, 'Tag', 'rb_LP_Selection');
            rb_LP_Selection_Value = get ( rb_LP_Selection_hdl, 'Value'); 
            
            rb_User_Selection_hdl   = findobj(gcbf, 'Tag', 'rb_User_Selection');
            rb_User_Selection_Value = get ( rb_User_Selection_hdl, 'Value');
            
            rb_Number_of_Sentences_for_RHO_1_hdl   = findobj(gcbf, 'Tag', 'rb_Number_of_Sentences_for_RHO_1');
            rb_Number_of_Sentences_for_RHO_1 = get ( rb_Number_of_Sentences_for_RHO_1_hdl, 'Value');

            rb_Number_of_Sentences_for_RHO_2_hdl   = findobj(gcbf, 'Tag', 'rb_Number_of_Sentences_for_RHO_2');
            rb_Number_of_Sentences_for_RHO_2 = get ( rb_Number_of_Sentences_for_RHO_2_hdl, 'Value');
            
            
            if    ( rb_LP_Selection_Value   == 1 )
                
                % LP Mode Section
                    et_R_AVG_Min_hdl     = findobj(gcbf, 'Tag', 'et_R_AVG_Min'); 
                    set ( et_R_AVG_Min_hdl, 'Enable', 'on');

                    et_R_AVG_Steps_hdl   = findobj(gcbf, 'Tag', 'et_R_AVG_Steps'); 
                    set ( et_R_AVG_Steps_hdl, 'Enable', 'on');

                    et_R_AVG_Max_hdl     = findobj(gcbf, 'Tag', 'et_R_AVG_Max'); 
                    set ( et_R_AVG_Max_hdl, 'Enable', 'on');
                
                % User Mode Section
                    et_Power_1_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Power_1_for_RHO');
                    set ( et_Power_1_for_RHO_hdl, 'Enable', 'off' );

                    et_Coefficient_1_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Coefficient_1_for_RHO');
                    set ( et_Coefficient_1_for_RHO_hdl, 'Enable', 'off' );

                    et_Power_2_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Power_2_for_RHO');
                    set ( et_Power_2_for_RHO_hdl, 'Enable', 'off' );

                    et_Coefficient_2_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Coefficient_2_for_RHO');
                    set ( et_Coefficient_2_for_RHO_hdl, 'Enable', 'off' );
                
                
            elseif( rb_User_Selection_Value == 1 )
                
                % LP Mode Section
                    et_R_AVG_Min_hdl     = findobj(gcbf, 'Tag', 'et_R_AVG_Min'); 
                    set ( et_R_AVG_Min_hdl, 'Enable', 'off');

                    et_R_AVG_Steps_hdl   = findobj(gcbf, 'Tag', 'et_R_AVG_Steps'); 
                    set ( et_R_AVG_Steps_hdl, 'Enable', 'off');

                    et_R_AVG_Max_hdl     = findobj(gcbf, 'Tag', 'et_R_AVG_Max'); 
                    set ( et_R_AVG_Max_hdl, 'Enable', 'off');
                
                % User Mode Section
                    if ( rb_Number_of_Sentences_for_RHO_1 == 1 )
                        et_Power_1_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Power_1_for_RHO');
                        set ( et_Power_1_for_RHO_hdl, 'Enable', 'on' );

                        et_Coefficient_1_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Coefficient_1_for_RHO');
                        set ( et_Coefficient_1_for_RHO_hdl, 'Enable', 'on' );

                        et_Power_2_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Power_2_for_RHO');
                        set ( et_Power_2_for_RHO_hdl, 'Enable', 'off' );

                        et_Coefficient_2_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Coefficient_2_for_RHO');
                        set ( et_Coefficient_2_for_RHO_hdl, 'Enable', 'off' );
                        
                    elseif ( rb_Number_of_Sentences_for_RHO_2 == 1)                        
                        et_Power_1_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Power_1_for_RHO');
                        set ( et_Power_1_for_RHO_hdl, 'Enable', 'on' );

                        et_Coefficient_1_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Coefficient_1_for_RHO');
                        set ( et_Coefficient_1_for_RHO_hdl, 'Enable', 'on' );

                        et_Power_2_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Power_2_for_RHO');
                        set ( et_Power_2_for_RHO_hdl, 'Enable', 'on' );

                        et_Coefficient_2_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Coefficient_2_for_RHO');
                        set ( et_Coefficient_2_for_RHO_hdl, 'Enable', 'on' );
                        
                    end
            end


% --- Executes when selected object is changed in uipanel14.
function uipanel14_SelectionChangeFcn(hObject, eventdata, handles)

            rb_LP_Selection_hdl   = findobj(gcbf, 'Tag', 'rb_LP_Selection');
            rb_LP_Selection_Value = get ( rb_LP_Selection_hdl, 'Value'); 
            
            rb_User_Selection_hdl   = findobj(gcbf, 'Tag', 'rb_User_Selection');
            rb_User_Selection_Value = get ( rb_User_Selection_hdl, 'Value');
            
            rb_Number_of_Sentences_for_RHO_1_hdl   = findobj(gcbf, 'Tag', 'rb_Number_of_Sentences_for_RHO_1');
            rb_Number_of_Sentences_for_RHO_1 = get ( rb_Number_of_Sentences_for_RHO_1_hdl, 'Value');

            rb_Number_of_Sentences_for_RHO_2_hdl   = findobj(gcbf, 'Tag', 'rb_Number_of_Sentences_for_RHO_2');
            rb_Number_of_Sentences_for_RHO_2 = get ( rb_Number_of_Sentences_for_RHO_2_hdl, 'Value');
            
            
            if    ( rb_LP_Selection_Value   == 1 )
                
                % LP Mode Section
                    et_R_AVG_Min_hdl     = findobj(gcbf, 'Tag', 'et_R_AVG_Min'); 
                    set ( et_R_AVG_Min_hdl, 'Enable', 'on');

                    et_R_AVG_Steps_hdl   = findobj(gcbf, 'Tag', 'et_R_AVG_Steps'); 
                    set ( et_R_AVG_Steps_hdl, 'Enable', 'on');

                    et_R_AVG_Max_hdl     = findobj(gcbf, 'Tag', 'et_R_AVG_Max'); 
                    set ( et_R_AVG_Max_hdl, 'Enable', 'on');
                
                % User Mode Section
                    et_Power_1_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Power_1_for_RHO');
                    set ( et_Power_1_for_RHO_hdl, 'Enable', 'off' );

                    et_Coefficient_1_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Coefficient_1_for_RHO');
                    set ( et_Coefficient_1_for_RHO_hdl, 'Enable', 'off' );

                    et_Power_2_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Power_2_for_RHO');
                    set ( et_Power_2_for_RHO_hdl, 'Enable', 'off' );

                    et_Coefficient_2_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Coefficient_2_for_RHO');
                    set ( et_Coefficient_2_for_RHO_hdl, 'Enable', 'off' );
                
                
            elseif( rb_User_Selection_Value == 1 )
                
                % LP Mode Section
                    et_R_AVG_Min_hdl     = findobj(gcbf, 'Tag', 'et_R_AVG_Min'); 
                    set ( et_R_AVG_Min_hdl, 'Enable', 'off');

                    et_R_AVG_Steps_hdl   = findobj(gcbf, 'Tag', 'et_R_AVG_Steps'); 
                    set ( et_R_AVG_Steps_hdl, 'Enable', 'off');

                    et_R_AVG_Max_hdl     = findobj(gcbf, 'Tag', 'et_R_AVG_Max'); 
                    set ( et_R_AVG_Max_hdl, 'Enable', 'off');
                
                % User Mode Section
                    if ( rb_Number_of_Sentences_for_RHO_1 == 1 )
                        et_Power_1_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Power_1_for_RHO');
                        set ( et_Power_1_for_RHO_hdl, 'Enable', 'on' );

                        et_Coefficient_1_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Coefficient_1_for_RHO');
                        set ( et_Coefficient_1_for_RHO_hdl, 'Enable', 'on' );

                        et_Power_2_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Power_2_for_RHO');
                        set ( et_Power_2_for_RHO_hdl, 'Enable', 'off' );

                        et_Coefficient_2_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Coefficient_2_for_RHO');
                        set ( et_Coefficient_2_for_RHO_hdl, 'Enable', 'off' );
                        
                    elseif ( rb_Number_of_Sentences_for_RHO_2 == 1)                        
                        et_Power_1_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Power_1_for_RHO');
                        set ( et_Power_1_for_RHO_hdl, 'Enable', 'on' );

                        et_Coefficient_1_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Coefficient_1_for_RHO');
                        set ( et_Coefficient_1_for_RHO_hdl, 'Enable', 'on' );

                        et_Power_2_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Power_2_for_RHO');
                        set ( et_Power_2_for_RHO_hdl, 'Enable', 'on' );

                        et_Coefficient_2_for_RHO_hdl   = findobj(gcbf, 'Tag', 'et_Coefficient_2_for_RHO');
                        set ( et_Coefficient_2_for_RHO_hdl, 'Enable', 'on' );
                        
                    end
            end