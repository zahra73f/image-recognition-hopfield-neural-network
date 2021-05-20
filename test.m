test1(:,:,1)=imread('subject01.wink');
test1(:,:,2)=imread('subject01.surprised');
test1(:,:,3)=imread('subject01.sleepy');
test1(:,:,4)=imread('subject01.sad');
test1(:,:,5)=imread('subject01.rightlight');
test1(:,:,6)=imread('subject01.noglasses');
test1(:,:,7)=imread('subject01.leftlight');
test1(:,:,8)=imread('subject01.happy');
test1(:,:,9)=imread('subject01.glasses');
test1(:,:,10)=imread('subject01.centerlight');
%%class 2
test1(:,:,11)=imread('subject02.wink');
test1(:,:,12)=imread('subject02.surprised');
test1(:,:,13)=imread('subject02.sleepy');
test1(:,:,14)=imread('subject02.sad');
test1(:,:,15)=imread('subject02.rightlight');
test1(:,:,16)=imread('subject02.noglasses');
test1(:,:,17)=imread('subject02.leftlight');
test1(:,:,18)=imread('subject02.happy');
test1(:,:,19)=imread('subject02.glasses');
test1(:,:,20)=imread('subject02.centerlight');

%%class 3

test1(:,:,21)=imread('subject03.wink');
test1(:,:,22)=imread('subject03.surprised');
test1(:,:,23)=imread('subject03.sleepy');
test1(:,:,24)=imread('subject03.sad');
test1(:,:,25)=imread('subject03.rightlight');
test1(:,:,26)=imread('subject03.noglasses');
test1(:,:,27)=imread('subject03.leftlight');
test1(:,:,28)=imread('subject03.happy');
test1(:,:,29)=imread('subject03.glasses');
test1(:,:,30)=imread('subject03.centerlight');

%% class 4

test1(:,:,31)=imread('subject04.wink');
test1(:,:,32)=imread('subject04.surprised');
test1(:,:,33)=imread('subject04.sleepy');
test1(:,:,34)=imread('subject04.sad');
test1(:,:,35)=imread('subject04.rightlight');
test1(:,:,36)=imread('subject04.noglasses');
test1(:,:,37)=imread('subject04.leftlight');
test1(:,:,38)=imread('subject04.happy');
test1(:,:,39)=imread('subject04.glasses');
test1(:,:,40)=imread('subject04.centerlight');
%class 5

test1(:,:,41)=imread('subject05.wink');
test1(:,:,42)=imread('subject05.surprised');
test1(:,:,43)=imread('subject05.sleepy');
test1(:,:,44)=imread('subject05.sad');
test1(:,:,45)=imread('subject05.rightlight');
test1(:,:,46)=imread('subject05.noglasses');
test1(:,:,47)=imread('subject05.leftlight');
test1(:,:,48)=imread('subject05.happy');
test1(:,:,49)=imread('subject05.glasses');
test1(:,:,50)=imread('subject05.centerlight');
%class 6
test1(:,:,51)=imread('subject06.wink');
test1(:,:,52)=imread('subject06.surprised');
test1(:,:,53)=imread('subject06.sleepy');
test1(:,:,54)=imread('subject06.sad');
test1(:,:,55)=imread('subject06.rightlight');
test1(:,:,56)=imread('subject06.noglasses');
test1(:,:,57)=imread('subject06.leftlight');
test1(:,:,58)=imread('subject06.happy');
test1(:,:,59)=imread('subject06.glasses');
test1(:,:,60)=imread('subject06.centerlight');
%% class 7
test1(:,:,61)=imread('subject07.wink');
test1(:,:,62)=imread('subject07.surprised');
test1(:,:,63)=imread('subject07.sleepy');
test1(:,:,64)=imread('subject07.sad');
test1(:,:,65)=imread('subject07.rightlight');
test1(:,:,66)=imread('subject07.noglasses');
test1(:,:,67)=imread('subject07.leftlight');
test1(:,:,68)=imread('subject07.happy');
test1(:,:,69)=imread('subject07.glasses');
test1(:,:,70)=imread('subject07.centerlight');
% test=imresize(test1_one,[32 32]);
% test_vec=test(:);
% test1_mat1=dec2bin(test_vec);
% test=[];
% test_vec=[];
for j=1:70
test2=imresize(test1(:,:,j),[32 32]);
% figure ;
% 
% imshow(test1(:,:,j));
test_vec=test2(:);
test1_mat(:,:,j)=decimalToBinaryVector(test_vec);
test2=[];
test_vec=[];
end
% test=imresize(test1_two,[32 32]);
% test_vec=test(:);
% test1_mat(:,:,2)=decimalToBinaryVector(test_vec);
% test=[];
% test_vec=[];
% 
% test=imresize(test1_three,[32 32]);
% test_vec=test(:);
% test1_mat(:,:,3)=decimalToBinaryVector(test_vec);
% test=[];
% test_vec=[];
% 
% test=imresize(test1_four,[32 32]);
% test_vec=test(:);
% test1_mat(:,:,4)=decimalToBinaryVector(test_vec);
% test=[];
% test_vec=[];
% 
% test=imresize(test1_five,[32 32]);
% test_vec=test(:);
% test1_mat(:,:,5)=decimalToBinaryVector(test_vec);
% test=[];
% test_vec=[];
% 
% test=imresize(test1_six,[32 32]);
% test_vec=test(:);
% test1_mat(:,:,6)=decimalToBinaryVector(test_vec);
% test=[];
% test_vec=[];
% 
% test=imresize(test1_seven,[32 32]);
% test_vec=test(:);
% test1_mat(:,:,7)=decimalToBinaryVector(test_vec);
% test=[];
% test_vec=[];
% 
% test=imresize(test1_eight,[32 32]);
% test_vec=test(:);
% test1_mat(:,:,8)=decimalToBinaryVector(test_vec);
% test=[];
% test_vec=[];
% 
% test=imresize(test1_nine,[32 32]);
% test_vec=test(:);
% test1_mat(:,:,9)=decimalToBinaryVector(test_vec);
% test=[];
% test_vec=[];
% 
% test=imresize(test1_ten,[32 32]);
% test_vec=test(:);
% test1_mat(:,:,10)=decimalToBinaryVector(test_vec);
% test=[];
% test_vec=[];

%%test
% test=imread('subject02.sleepy');
% test=imresize(test,[32 32]);
% test_vec=test(:);
% test_mat=dec2bin(test_vec);
test1_mat(test1_mat==0)=-1;
for j=1:70
%   test_mat=test1_mat(:,:,j);
%   test_mat=reshape(test_mat,1024,8);
%   mmm=test_mat;
%   mmm(mmm==-1)=0;
%   mmm=num2str(mmm);
%   mmm=bin2dec(mmm);
%   mmmm=reshape(mmm,32,32);
%   mm=imresize(mmmm,[243 320]);
test22=imresize(test1(:,:,j),[32 32]);
  figure ,
    set(gcf, 'Position', get(0,'Screensize'));
    
    subplot(1,3,1), imshow(test22); title('test Image');
for i=1:8
t1=test1_mat(:,i,j);
% t1=str2num(t1);

if i==1
 Ai = {t1};
[Y,Pf,Af] = net1({1 5},{},Ai);
test_result(:,i)=Y{1};
end
if i==2
    Ai = {t1};
[Y,Pf,Af] = net2({1 5},{},Ai);
test_result(:,i)=Y{1};
end
if i==3
    Ai = {t1};
[Y,Pf,Af] = net3({1 5},{},Ai);
test_result(:,i)=Y{1};
end
if i==4
    Ai = {t1};
[Y,Pf,Af] = net4({1 5},{},Ai);
test_result(:,i)=Y{1};
end
if i==5
    Ai = {t1};
[Y,Pf,Af] = net5({1 5},{},Ai);
test_result(:,i)=Y{1};
end
if i==6
    Ai = {t1};
[Y,Pf,Af] = net6({1 5},{},Ai);
test_result(:,i)=Y{1};
end
if i==7
    Ai = {t1};
[Y,Pf,Af] = net7({1 5},{},Ai);
test_result(:,i)=Y{1};
end
if i==8
    Ai = {t1};
[Y,Pf,Af] = net8({1 5},{},Ai);
test_result(:,i)=Y{1};
end
end
test_result(test_result>0)=1;
test_result(test_result<=0)=0;
% test_str= num2str(test_result);
test_dec= binaryVectorToDecimal(test_result);
mat_testr=reshape(test_dec,32,32);
% mm2=imresize(mat_testr,[243 320]);
mm=uint8(mat_testr);
 subplot(1,3,2);
 imshow(mm); 
 title('Retrieved image');
% imshow(mat_testr);
%D=sqrt(sum(sum((uint8(mat_testr)-first_person).*(uint8(mat_testr)-first_person))));
for f=1:7
    hh=reshape(alldata(:,:,f),32,32);
    d(f,j)=norm(mat_testr-double(hh));
    %d(f,j)=sqrt(sum(sum((mat_testr-double(hh)).*(mat_testr-double(hh)))));
    hh=[];
end
[s s1]=min(d(:,j));
hhh=reshape(alldata(:,:,s1),32,32);

subplot(1,3,3), imshow(hhh); title('most mached normal image');


test_result=[];
test_str=[]
test_dec=[];
% mat_testr=[];
mat_testr=[];
end
for r=1:70
[a(r) b(r)]=min(d(:,r));
end
label_class=ones(1,70);
label_class(1,10:20)=2;
label_class(1,20:30)=3;
label_class(1,30:40)=4;
label_class(1,40:50)=5;
label_class(1,50:60)=6;
label_class(1,60:70)=7;
acc=sum(label_class==b)/70;
