%新建gui界面
function varargout = GUIzuoye7(varargin)
% GUIZUOYE7 MATLAB code for GUIzuoye7.fig
%      GUIZUOYE7, by itself, creates a new GUIZUOYE7 or raises the existing
%      singleton*.
%
%      H = GUIZUOYE7 returns the handle to a new GUIZUOYE7 or the handle to
%      the existing singleton*.
%
%      GUIZUOYE7('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIZUOYE7.M with the given input arguments.
%
%      GUIZUOYE7('Property','Value',...) creates a new GUIZUOYE7 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIzuoye7_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIzuoye7_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUIzuoye7

% Last Modified by GUIDE v2.5 05-May-2023 13:59:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIzuoye7_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIzuoye7_OutputFcn, ...
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


% --- Executes just before GUIzuoye7 is made visible.初始化函数
function GUIzuoye7_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure  当前控件的句柄
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 是一个以GUI中所有控件的Tag属性为字段的结构体，每个字段的取值就是对应控件的句柄.
%类似于C语言中指针，它是某个对象的唯一标识符，通过句柄就可以找到你需要的对象
% varargin   command line arguments to GUIzuoye7 (see VARARGIN)

% Choose default command line output for GUIzuoye7
handles.output = hObject;

set(handles.save,'Enable','off');
set(handles.exit,'Enable','off');
set(handles.reset,'Enable','off');
set(handles.g1,'Visible','off');
set(handles.g2,'Visible','off');

set(handles.n1,'Enable','off');
set(handles.n2,'Enable','off');
set(handles.n3,'Enable','off');
set(handles.f1,'Enable','off');
set(handles.f2,'Enable','off');
set(handles.f3,'Enable','off');


set(handles.slider5,'Enable','off');
set(handles.m1,'Enable','off');
set(handles.m2,'Enable','off');
set(handles.m3,'Enable','off');
set(handles.m4,'Enable','off');
set(handles.m5,'Enable','off');
set(handles.m6,'Enable','off');
set(handles.m7,'Enable','off');
set(handles.m8,'Enable','off');
set(handles.m9,'Enable','off');
set(handles.p1,'Enable','off');
set(handles.p2,'Enable','off');
set(handles.p3,'Enable','off');
set(handles.p4,'Enable','off');
set(handles.p5,'Enable','off');
set(handles.p6,'Enable','off');
set(handles.p7,'Enable','off');
set(handles.e1,'Enable','off');
set(handles.e2,'Enable','off');
set(handles.e3,'Enable','off');

set(handles.e5,'Enable','off');
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUIzuoye7 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIzuoye7_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%打开图像
% --- Executes on button press in load.
function load_Callback(hObject, eventdata, handles)
% hObject    handle to load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file path]=uigetfile({'*.jpg';'*.bmp';'*.jpeg';'*.png'}, '打开文件');%uigetfile图像用户界面模块
image=[path file];
image1=[path file];
handles.file=image;
if (file==0)
    warndlg('请选择一张图片...') ;
end
[fpath, fname, fext]=fileparts(file);
validex=({'.bmp','.jpg','.jpeg','.png'});
found=0;
for (x=1:length(validex))
   if (strcmpi(fext,validex{x}))
       found=1;
     
set(handles.save,'Enable','on');
set(handles.exit,'Enable','on');
set(handles.reset,'Enable','on');
set(handles.g1,'Visible','on');
set(handles.g2,'Visible','on');

set(handles.n1,'Enable','on');
set(handles.n2,'Enable','on');
set(handles.n3,'Enable','on');
set(handles.f1,'Enable','on');
set(handles.f2,'Enable','on');
set(handles.f3,'Enable','on');

set(handles.slider5,'Enable','on');
set(handles.m1,'Enable','on');
set(handles.m2,'Enable','on');
set(handles.m3,'Enable','on');
set(handles.m4,'Enable','on');
set(handles.m5,'Enable','on');
set(handles.m6,'Enable','on');
set(handles.m7,'Enable','on');
set(handles.m8,'Enable','on');
set(handles.m9,'Enable','on');
set(handles.p1,'Enable','on');
set(handles.p2,'Enable','on');
set(handles.p3,'Enable','on');
set(handles.p4,'Enable','on');
set(handles.p5,'Enable','on');
set(handles.p6,'Enable','on');
set(handles.p7,'Enable','on');
set(handles.e1,'Enable','on');
set(handles.e2,'Enable','on');
set(handles.e3,'Enable','on');

set(handles.e5,'Enable','on');

handles.img=imread(image);
handles.i=imread(image);
h = waitbar(0,'等待...');
steps = 100;

for step = 1:steps
    waitbar(step / steps)
end
close(h) 
axes(handles.g1); 
cla; 
imshow(handles.img);
axes(handles.g2); 
cla; 
imshow(handles.img);
guidata(hObject,handles);
break; 
end
end
if (found==0)
     errordlg('文件扩展名不正确，请从可用扩展名[.jpg、.jpeg、.bmp、.png]中选择文件','Image Format Error');
end
%退出
% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;
%保存
% --- Executes on button press in save.
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file path]= uiputfile('*.jpg','Save Image as');
save=[path file]; imwrite(handles.img,save,'jpg');
%清除
% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.img=handles.i;
axes(handles.g2); 
cla; 
imshow(handles.img);
guidata(hObject,handles);

%边缘检测sobel算子
% --- Executes on button press in m1.
function m1_Callback(hObject, eventdata, handles)
% hObject    handle to m1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mysize=size(handles.img);
if numel(mysize)>2
    handles.img=rgb2gray(handles.img);
end
handles.img=edge(handles.img,'sobel');
axes(handles.g2);
cla;
imshow(handles.img);
guidata(hObject,handles);

%边缘检测prewitt算子
% --- Executes on button press in m3.
function m3_Callback(hObject, eventdata, handles)
% hObject    handle to m3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mysize=size(handles.img);
if numel(mysize)>2
    handles.img=rgb2gray(handles.img);
end
handles.img=edge(handles.img,'prewitt');
axes(handles.g2);
cla;
imshow(handles.img);
guidata(hObject,handles);

%边缘检测canny算子
% --- Executes on button press in m5.
function m5_Callback(hObject, eventdata, handles)
% hObject    handle to m5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mysize=size(handles.img);
if numel(mysize)>2
    handles.img=rgb2gray(handles.img);
end
handles.img=edge(handles.img,'canny');
axes(handles.g2);
cla;
imshow(handles.img);
guidata(hObject,handles);

%边缘检测roberts算子
% --- Executes on button press in m2.
function m2_Callback(hObject, eventdata, handles)
% hObject    handle to m2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mysize=size(handles.img);
if numel(mysize)>2
    handles.img=rgb2gray(handles.img);
end
handles.img=edge(handles.img,'roberts');
axes(handles.g2);
cla;
imshow(handles.img);
guidata(hObject,handles);

%边缘检测log算子
% --- Executes on button press in m4.
function m4_Callback(hObject, eventdata, handles)
% hObject    handle to m4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mysize=size(handles.img);
if numel(mysize)>2
    handles.img=rgb2gray(handles.img);
end
handles.img=edge(handles.img,'log');
axes(handles.g2);
cla;
imshow(handles.img);
guidata(hObject,handles);


%高斯噪声
% --- Executes on button press in n1.
function n1_Callback(hObject, eventdata, handles)
% hObject    handle to n1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.img = imnoise(handles.img,'gaussian');
axes(handles.g2); 
cla; 
imshow(handles.img);
guidata(hObject,handles);
%泊松噪声
% --- Executes on button press in n2.
function n2_Callback(hObject, eventdata, handles)
% hObject    handle to n2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = waitbar(0,'等待...');
steps = 200;
for step = 1:steps
    waitbar(step / steps)
end
close(h) 
handles.img = imnoise(handles.img,'poisson');
    axes(handles.g2); cla; imshow(handles.img);
guidata(hObject,handles);
%椒盐噪声
% --- Executes on button press in n3.
function n3_Callback(hObject, eventdata, handles)
% hObject    handle to n3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.img = imnoise(handles.img,'salt & pepper',0.02);
axes(handles.g2); cla; imshow(handles.img);
guidata(hObject,handles);

% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%左右翻转
% --- Executes on button press in m8.
function m8_Callback(hObject, eventdata, handles)
% hObject    handle to m8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.img=fliplr(handles.img);
axes(handles.g2);
cla;
imshow(handles.img);
guidata(hObject,handles);
%上下翻转
% --- Executes on button press in m9.
function m9_Callback(hObject, eventdata, handles)
% hObject    handle to m9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.img=flipud(handles.img);
axes(handles.g2);
cla;
imshow(handles.img);
guidata(hObject,handles);

%灰度处理
% --- Executes on button press in m6.
function m6_Callback(hObject, eventdata, handles)
% hObject    handle to m6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.img = rgb2gray(handles.img);
axes(handles.g2);
cla;
imshow(handles.img);
guidata(hObject,handles);

%二值化
% --- Executes on button press in m7.
function m7_Callback(hObject, eventdata, handles)
% hObject    handle to m7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
thresh = graythresh(handles.img);     %自动确定二值化阈值
handles.img = im2bw(handles.img,thresh);
axes(handles.g2);
cla;
imshow(handles.img);
guidata(hObject,handles);

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%图形旋转
% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
rrv=(get(hObject,'Value'));
handles.rot=handles.img;
handles.rot=imrotate(handles.rot,rrv);%imrotate使图像旋转
axes(handles.g2); cla; imshow(handles.rot);
guidata(hObject,handles)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

%理想低通滤波器
% --- Executes on button press in p2.
function p2_Callback(hObject, eventdata, handles)
% hObject    handle to p2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mysize=size(handles.img);
if numel(mysize)>2
    handles.img = rgb2gray(handles.img);
end

I=handles.img;
I=im2double(I);
M=2*size(I,1);
N=2*size(I,2);
u=-M/2:(M/2-1);
v=-N/2:(N/2-1);
[U,V]=meshgrid(u,v);
D=sqrt(U.^2+V.^2);
D0=80;
H=double(D<=D0);
J=fftshift(fft2(I,size(H,1),size(H,2)));
K=J.*H;
L=ifft2(ifftshift(K));
L=L(1:size(I,1),1:size(I,2));
handles.img=L;

axes(handles.g2); 
cla; 
imshow(handles.img);
guidata(hObject,handles);

%巴特沃斯高通滤波器
% --- Executes on button press in p3.
function p3_Callback(hObject, eventdata, handles)
% hObject    handle to p3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mysize=size(handles.img);
if numel(mysize)>2
    handles.img = rgb2gray(handles.img);
end

I=handles.img;
I=im2double(I);
M=2*size(I,1);%滤波器行数
N=2*size(I,2);%滤波器列数
u=-M/2:(M/2-1);
v=-N/2:(N/2-1);
[U,V]=meshgrid(u,v);
D=sqrt(U.^2+V.^2);
D0=30;%截止频率
n=6;%巴特沃斯滤波器阶数
H=1./(1+(D0./D).^(2*n));
J=fftshift(fft2(I,size(H,1),size(H,2)));
K=J.*H;
L=ifft2(ifftshift(K));
L=L(1:size(I,1),1:size(I,2));
handles.img=L;

axes(handles.g2); 
cla; 
imshow(handles.img);
guidata(hObject,handles);

%带阻滤波器
% --- Executes on button press in p4.
function p4_Callback(hObject, eventdata, handles)
% hObject    handle to p4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mysize=size(handles.img);
if numel(mysize)>2
    handles.img = rgb2gray(handles.img);
end

I=handles.img;
I=imnoise(I,'gaussian',0,0.01);
I=im2double(I);
M=2*size(I,1);%滤波器行数
N=2*size(I,2);%滤波器列数
u=-M/2:(M/2-1);
v=-N/2:(N/2-1);
[U,V]=meshgrid(u,v);
D=sqrt(U.^2+V.^2);
D0=50;%滤波器D0
W=30;%滤波器带宽
H=double(or(D<(D0-W/2),D>D0+W/2));
J=fftshift(fft2(I,size(H,1),size(H,2)));
K=J.*H;
L=ifft2(ifftshift(K));
L=L(1:size(I,1),1:size(I,2));
handles.img=L;

axes(handles.g2); 
cla; 
imshow(handles.img);
guidata(hObject,handles);

%同态滤波器
% --- Executes on button press in p5.
function p5_Callback(hObject, eventdata, handles)
% hObject    handle to p5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mysize=size(handles.img);
if numel(mysize)>2
    handles.img = rgb2gray(handles.img);
end

I=handles.img;
J=log(im2double(I)+1);
K=fft2(J);
n=5;
D0=0.1*pi;
rh=0.7;
rl=0.4;
[row, column]=size(J);
for i=1:row
    for j=i:column
        D1(i,j)=sqrt(i^2+j^2);
        H(i,j)=rl+(rh/(1+(D0/D1(i,j))^(2*n)));
    end
end
L=K.*H;
M=ifft2(L);
N=exp(M)-1;
handles.img=N;

axes(handles.g2); 
cla; 
imshow(handles.img);
guidata(hObject,handles);
%均值滤波
% --- Executes on button press in f1.
function f1_Callback(hObject, eventdata, handles)
% hObject    handle to f1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h=fspecial('average');
handles.img=imfilter(handles.img,h,'replicate');
axes(handles.g2); cla; imshow(handles.img)
guidata(hObject,handles);
%高斯滤波
% --- Executes on button press in f2.
function f2_Callback(hObject, eventdata, handles)
% hObject    handle to f2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hsize=[8 8]; sigma=1.7;%hsize是滤波器尺寸，sigma是标准差
h=fspecial('gaussian',hsize,sigma);%fspecial生成滤波器
handles.img=imfilter(handles.img,h,'replicate');%imfilter滤波，控制滤波运算的选项类型'replicate'
axes(handles.g2); cla; imshow(handles.img);
guidata(hObject,handles);
%中值滤波
% --- Executes on button press in f3.
function f3_Callback(hObject, eventdata, handles)
% hObject    handle to f3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
r=medfilt2(handles.img(:,:,1));%执行二维中值滤波
g=medfilt2(handles.img(:,:,2));
b=medfilt2(handles.img(:,:,3)); 
handles.img=cat(3,r,g,b);%cat构造三维数组
axes(handles.g2); cla; imshow(handles.img);
guidata(hObject,handles);

%骨架提取
% --- Executes on button press in p1.
function p1_Callback(hObject, eventdata, handles)
% hObject    handle to p1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = rgb2gray(handles.img);
handles.img= imbinarize(a);%将图像转换为二值图像
handles.img= bwmorph(handles.img,'skel',Inf);%lnf该操作被重复执行直到图像不再发生变化为止
axes(handles.g2);
cla;
imshow(handles.img);
guidata(hObject,handles);





%傅里叶变换
% --- Executes on button press in p6.
function p6_Callback(hObject, eventdata, handles)
% hObject    handle to p6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mysize = size(handles.img);
if numel(mysize) > 2
    handles.img = rgb2gray(handles.img);
end

I = handles.img;
K = fft2(I);%傅里叶变换
K = fftshift(K);%平移
L = abs(K/256); %频谱图
handles.img = uint8(L);

axes(handles.g2); 
cla; 
imshow(handles.img);
guidata(hObject,handles)

%离散余弦变换
% --- Executes on button press in p7.
function p7_Callback(hObject, eventdata, handles)
% hObject    handle to p7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mysize = size(handles.img);
if numel(mysize) > 2
    handles.img = rgb2gray(handles.img);
end
I = handles.img;
I = im2double(I);
J = dct2(I);
handles.img = log(abs(J));
handles.img = J;

axes(handles.g2); 
cla; 
imshow(handles.img);
guidata(hObject,handles)


% hsv
function e1_Callback(hObject, eventdata, handles)
% hObject    handle to e1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.img= rgb2hsv(handles.img);
axes(handles.g2);
cla;
imshow(handles.img);
guidata(hObject,handles);
% --- Executes on button press in e2.
function e2_Callback(hObject, eventdata, handles)
% hObject    handle to e2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.img= rgb2lab(handles.img);
axes(handles.g2);
cla;
imshow(handles.img);
guidata(hObject,handles);


% --- Executes on button press in e3.
function e3_Callback(hObject, eventdata, handles)
% hObject    handle to e3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
scale_facto = 0.5;
handles.img= imresize(handles.img, scale_facto);
axes(handles.g2);
cla;
imshow(handles.img);
guidata(hObject,handles);


% --- Executes on button press in e5.
function e5_Callback(hObject, eventdata, handles)
% hObject    handle to e5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% 获取当前图像
img = handles.img;


img_half = imresize(img, 0.1);


handles.img = imresize(img_half, 2, 'bicubic');

% 显示处理后的图像
axes(handles.g2);
cla;
imshow(handles.img);


% 更新handles并保存数据
guidata(hObject, handles);
