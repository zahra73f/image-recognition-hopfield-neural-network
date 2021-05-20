%load data
first_person=imread('subject01.normal');
second_person=imread('subject02.normal');
third_person=imread('subject03.normal');
fourth_person=imread('subject04.normal');
fifth_person=imread('subject05.normal');
sixth_person=imread('subject06.normal');
seventh_person=imread('subject07.normal');

%convert to 32*32
first_person=imresize(first_person,[32 32]);
second_person=imresize(second_person,[32 32]);
third_person=imresize(third_person,[32 32]);
fourth_person=imresize(fourth_person,[32 32]);
fifth_person=imresize(fifth_person,[32 32]);
sixth_person=imresize(sixth_person,[32 32]);
seventh_person=imresize(seventh_person,[32 32]);
alldata(:,:,1)=first_person;
alldata(:,:,2)=second_person;
alldata(:,:,3)=third_person;
alldata(:,:,4)=fourth_person;
alldata(:,:,5)=fifth_person;
alldata(:,:,6)=sixth_person;
alldata(:,:,7)=seventh_person;

%conver to vector
vector1=first_person(:);
vector2=second_person(:);
vector3=third_person(:);
vector4=fourth_person(:);
vector5=fifth_person(:);
vector6=sixth_person(:);
vector7=seventh_person(:);
%convert to binary
mat1=dec2bin(vector1);
mat2=dec2bin(vector2);
mat3=dec2bin(vector3);
mat4=dec2bin(vector4);
mat5=dec2bin(vector5);
mat6=dec2bin(vector6);
mat7=dec2bin(vector7);
% mat7=decimalToBinaryVector(vector7);
% hopfield
%%net1
v1=str2num(mat1(:,1));
v1(v1==0)=-1;
v2=str2num(mat2(:,1));
v2(v2==0)=-1;
v3=str2num(mat3(:,1));
v3(v3==0)=-1;
v4=str2num(mat4(:,1));
v4(v4==0)=-1;
v5=str2num(mat5(:,1));
v5(v5==0)=-1;
v6=str2num(mat6(:,1));
v6(v6==0)=-1;
v7=str2num(mat7(:,1));
v7(v7==0)=-1;
T=[v1' ;
    v2' ;
    v3' ;
    v4' ;
    v5' ;
    v6' ;
    v7' ;]';
net1 = newhop(T);

%%net2

v1=str2num(mat1(:,2));
v1(v1==0)=-1;
v2=str2num(mat2(:,2));
v2(v2==0)=-1;
v3=str2num(mat3(:,2));
v3(v3==0)=-1;
v4=str2num(mat4(:,2));
v4(v4==0)=-1;
v5=str2num(mat5(:,2));
v5(v5==0)=-1;
v6=str2num(mat6(:,2));
v6(v6==0)=-1;
v7=str2num(mat7(:,2));
v7(v7==0)=-1;

T2=[v1' ;
    v2' ;
    v3' ;
    v4' ;
    v5' ;
    v6' ;
    v7' ;]';

net2 = newhop(T2);

%%net3
v1=str2num(mat1(:,3));
v1(v1==0)=-1;
v2=str2num(mat2(:,3));
v2(v2==0)=-1;
v3=str2num(mat3(:,3));
v3(v3==0)=-1;
v4=str2num(mat4(:,3));
v4(v4==0)=-1;
v5=str2num(mat5(:,3));
v5(v5==0)=-1;
v6=str2num(mat6(:,3));
v6(v6==0)=-1;
v7=str2num(mat7(:,3));
v7(v7==0)=-1;

T3=[v1' ;
    v2' ;
    v3' ;
    v4' ;
    v5' ;
    v6' ;
    v7' ;]';
net3 = newhop(T3);

%%net4
v1=str2num(mat1(:,4));
v1(v1==0)=-1;
v2=str2num(mat2(:,4));
v2(v2==0)=-1;
v3=str2num(mat3(:,4));
v3(v3==0)=-1;
v4=str2num(mat4(:,4));
v4(v4==0)=-1;
v5=str2num(mat5(:,4));
v5(v5==0)=-1;
v6=str2num(mat6(:,4));
v6(v6==0)=-1;
v7=str2num(mat7(:,4));
v7(v7==0)=-1;

T4=[v1' ;
    v2' ;
    v3' ;
    v4' ;
    v5' ;
    v6' ;
    v7' ;]';

net4 = newhop(T4);

%net5

v1=str2num(mat1(:,5));
v1(v1==0)=-1;
v2=str2num(mat2(:,5));
v2(v2==0)=-1;
v3=str2num(mat3(:,5));
v3(v3==0)=-1;
v4=str2num(mat4(:,5));
v4(v4==0)=-1;
v5=str2num(mat5(:,5));
v5(v5==0)=-1;
v6=str2num(mat6(:,5));
v6(v6==0)=-1;
v7=str2num(mat7(:,5));
v7(v7==0)=-1;
T5=[v1' ;
    v2' ;
    v3' ;
    v4' ;
    v5' ;
    v6' ;
    v7' ;]';

net5 = newhop(T5);
%net6

v1=str2num(mat1(:,6));
v1(v1==0)=-1;
v2=str2num(mat2(:,6));
v2(v2==0)=-1;
v3=str2num(mat3(:,6));
v3(v3==0)=-1;
v4=str2num(mat4(:,6));
v4(v4==0)=-1;
v5=str2num(mat5(:,6));
v5(v5==0)=-1;
v6=str2num(mat6(:,6));
v6(v6==0)=-1;
v7=str2num(mat7(:,6));
v7(v7==0)=-1;

T6=[v1' ;
    v2' ;
    v3' ;
    v4' ;
    v5' ;
    v6' ;
    v7' ;]';

net6 = newhop(T6);
%net7

v1=str2num(mat1(:,7));
v1(v1==0)=-1;
v2=str2num(mat2(:,7));
v2(v2==0)=-1;
v3=str2num(mat3(:,7));
v3(v3==0)=-1;
v4=str2num(mat4(:,7));
v4(v4==0)=-1;
v5=str2num(mat5(:,7));
v5(v5==0)=-1;
v6=str2num(mat6(:,7));
v6(v6==0)=-1;
v7=str2num(mat7(:,7));
v7(v7==0)=-1;

T7=[v1' ;
    v2' ;
    v3' ;
    v4' ;
    v5' ;
    v6' ;
    v7' ;]';
net7 = newhop(T7);
%net8
v1=str2num(mat1(:,8));
v1(v1==0)=-1;
v2=str2num(mat2(:,8));
v2(v2==0)=-1;
v3=str2num(mat3(:,8));
v3(v3==0)=-1;
v4=str2num(mat4(:,8));
v4(v4==0)=-1;
v5=str2num(mat5(:,8));
v5(v5==0)=-1;
v6=str2num(mat6(:,8));
v6(v6==0)=-1;
v7=str2num(mat7(:,8));
v7(v7==0)=-1;

T8=[v1' ;
    v2' ;
    v3' ;
    v4' ;
    v5' ;
    v6' ;
    v7' ;]';
net8 = newhop(T8);

%%load test data
test1_one=imread('subject01.wink');
test1_two=imread('subject01.surprised');
test1_three=imread('subject01.sleepy');
test1_four=imread('subject01.sad');
test1_five=imread('subject01.rightlight');
test1_six=imread('subject01.noglasses');
test1_seven=imread('subject01.leftlight');
test1_eight=imread('subject01.happy');
test1_nine=imread('subject01.glasses');
test1_ten=imread('subject01.centerlight');

% test=imresize(test1_one,[32 32]);
% test_vec=test(:);
% test1_mat1=dec2bin(test_vec);
% test=[];
% test_vec=[];

test=imresize(test1_one,[32 32]);
test_vec=test(:);
test1_mat(:,:,1)=decimalToBinaryVector(test_vec);
test=[];
test_vec=[];

test=imresize(test1_two,[32 32]);
test_vec=test(:);
test1_mat(:,:,2)=decimalToBinaryVector(test_vec);
test=[];
test_vec=[];

test=imresize(test1_three,[32 32]);
test_vec=test(:);
test1_mat(:,:,3)=decimalToBinaryVector(test_vec);
test=[];
test_vec=[];

test=imresize(test1_four,[32 32]);
test_vec=test(:);
test1_mat(:,:,4)=decimalToBinaryVector(test_vec);
test=[];
test_vec=[];

test=imresize(test1_five,[32 32]);
test_vec=test(:);
test1_mat(:,:,5)=decimalToBinaryVector(test_vec);
test=[];
test_vec=[];

test=imresize(test1_six,[32 32]);
test_vec=test(:);
test1_mat(:,:,6)=decimalToBinaryVector(test_vec);
test=[];
test_vec=[];

test=imresize(test1_seven,[32 32]);
test_vec=test(:);
test1_mat(:,:,7)=decimalToBinaryVector(test_vec);
test=[];
test_vec=[];

test=imresize(test1_eight,[32 32]);
test_vec=test(:);
test1_mat(:,:,8)=decimalToBinaryVector(test_vec);
test=[];
test_vec=[];

test=imresize(test1_nine,[32 32]);
test_vec=test(:);
test1_mat(:,:,9)=decimalToBinaryVector(test_vec);
test=[];
test_vec=[];

test=imresize(test1_ten,[32 32]);
test_vec=test(:);
test1_mat(:,:,10)=decimalToBinaryVector(test_vec);
test=[];
test_vec=[];

%%test
% test=imread('subject02.sleepy');
% test=imresize(test,[32 32]);
% test_vec=test(:);
% test_mat=dec2bin(test_vec);
test1_mat(test1_mat==0)=-1;
for j=1:10
%   test_mat=test1_mat(j,:,:);
%   test_mat=reshape(test_mat,1024,8);
for i=1:8
t1=test1_mat(:,i,j);
% t1=str2num(t1);
Ai = {t1};
if i==1
[Y,Pf,Af] = sim(net1,{1 5},{},Ai);
test_result(:,i)=Y{1};
end
if i==2
[Y,Pf,Af] = sim(net2,{1 5},{},Ai);
test_result(:,i)=Y{1};
end
if i==3
[Y,Pf,Af] = sim(net3,{1 5},{},Ai);
test_result(:,i)=Y{1};
end
if i==4
[Y,Pf,Af] = sim(net4,{1 5},{},Ai);
test_result(:,i)=Y{1};
end
if i==5
[Y,Pf,Af] = sim(net5,{1 5},{},Ai);
test_result(:,i)=Y{1};
end
if i==6
[Y,Pf,Af] = sim(net6,{1 5},{},Ai);
test_result(:,i)=Y{1};
end
if i==7
[Y,Pf,Af] = sim(net7,{1 5},{},Ai);
test_result(:,i)=Y{1};
end
if i==8
[Y,Pf,Af] = sim(net8,{1 5},{},Ai);
test_result(:,i)=Y{1};
end
end
test_result(test_result>0)=1;
test_result(test_result<=0)=0;
test_str= num2str(test_result);
test_dec= bin2dec(test_str);
mat_testr=reshape(test_dec,32,32);
%D=sqrt(sum(sum((uint8(mat_testr)-first_person).*(uint8(mat_testr)-first_person))));
for i=1:7
    hh=reshape(alldata(:,:,i),32,32);
    d(i,j)=sqrt(sum(sum((uint8(mat_testr)-hh).*(uint8(mat_testr)-hh))));
end

% [a(j) b(j)]=min(d(j));

test_result=[];
test_str=[]
test_dec=[];
    
mat_testr=[];
end
for r=1:10
[a(r) b(r)]=min(d(:,r));
end
