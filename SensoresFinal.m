clear all
contadorLoop=-1;
warning('off')
X1 = [0.1;0.9;0.9;0.1;0.1];
Y1 = [0.1;0.1;0.9;0.9;0.1];
Z1 = [0;0;0;0;0];

X = [0;1;1;0;0];
Y = [0;0;1;1;0];
Z = [0;0;0;0;0];

figure;
hold on;
plot3(X,Y,Z);   % draw a square in the xy plane with z = 0
plot3(X,Y,Z+1); % draw a square in the xy plane with z = 1
plot3(X1,Y1,Z1+0.1);   % draw a square in the xy plane with z = 0
plot3(X1,Y1,Z1+0.9); % draw a square in the xy plane with z = 1
set(gca,'View',[-60,20]); % set the azimuth and elevation of the plot
for k=1:length(X)-1
    plot3([X(k);X(k)],[Y(k);Y(k)],[0;1]);
    plot3([X1(k);X1(k)],[Y1(k);Y1(k)],[0.1;0.9]);
end
fileIDD = fopen('sensores.txt','w');
fclose(fileIDD);
tic;
checkState=toc;
while 1
    fileID = fopen('sensores.txt','a');
    while 1 
        a=arduino('COM8', 'Uno', 'Libraries', 'PaulStoffregen/OneWire');
        sensorCh = addon(a, 'PaulStoffregen/OneWire', 'D4');
        contadorLoop=contadorLoop+1;
        
        addr1 = sensorCh.AvailableAddresses{1};
        reset(sensorCh);
        write(sensorCh, addr1, hex2dec('44'), true);
        reset(sensorCh);
        write(sensorCh, addr1, hex2dec('BE'));
        data1=read(sensorCh, addr1,9);
        tim=toc;

        addr2 = sensorCh.AvailableAddresses{2};
        reset(sensorCh);
        write(sensorCh, addr2, hex2dec('44'), true);
        reset(sensorCh);
        write(sensorCh, addr2, hex2dec('BE'));
        data2=read(sensorCh, addr2,9);
        b=toc;

        addr3 = sensorCh.AvailableAddresses{3};
        reset(sensorCh);
        write(sensorCh, addr3, hex2dec('44'), true);
        reset(sensorCh);
        write(sensorCh, addr3, hex2dec('BE'));
        data3=read(sensorCh, addr3,9);
        v=toc;

        addr4 = sensorCh.AvailableAddresses{4};
        reset(sensorCh);
        write(sensorCh, addr4, hex2dec('44'), true);
        reset(sensorCh);
        write(sensorCh, addr4, hex2dec('BE'));
        data4=read(sensorCh, addr4,9);
        d=toc;

        addr5 = sensorCh.AvailableAddresses{5};
        reset(sensorCh);
        write(sensorCh, addr5, hex2dec('44'), true);
        reset(sensorCh);
        write(sensorCh, addr5, hex2dec('BE'));
        data5=read(sensorCh, addr5,9);
        e=toc;

        sensorPCM = addon(a, 'PaulStoffregen/OneWire', 'D7');

        addr6 = sensorPCM.AvailableAddresses{1};
        reset(sensorPCM);
        write(sensorPCM, addr6, hex2dec('44'), true);
        reset(sensorPCM);
        write(sensorPCM, addr6, hex2dec('BE'));
        data6=read(sensorPCM, addr6,9);
        f=toc;

        addr7 = sensorPCM.AvailableAddresses{2};
        reset(sensorPCM);
        write(sensorPCM, addr7, hex2dec('44'), true);
        reset(sensorPCM);
        write(sensorPCM, addr7, hex2dec('BE'));
        data7=read(sensorPCM, addr7,9);
        g=toc;

        addr8 = sensorPCM.AvailableAddresses{3};
        reset(sensorPCM);
        write(sensorPCM, addr8, hex2dec('44'), true);
        reset(sensorPCM);
        write(sensorPCM, addr8, hex2dec('BE'));
        data8=read(sensorPCM, addr8,9);
        h=toc;

        addr9 = sensorPCM.AvailableAddresses{4};
        reset(sensorPCM);
        write(sensorPCM, addr9, hex2dec('44'), true);
        reset(sensorPCM);
        write(sensorPCM, addr9, hex2dec('BE'));
        data9=read(sensorPCM, addr9,9);
        i=toc;

        addr10 = sensorPCM.AvailableAddresses{5};
        reset(sensorPCM);
        write(sensorPCM, addr10, hex2dec('44'), true);
        reset(sensorPCM);
        write(sensorPCM, addr10, hex2dec('BE'));
        data10=read(sensorPCM, addr10,9);
        j=toc;

        addr11 = sensorPCM.AvailableAddresses{6};
        reset(sensorPCM);
        write(sensorPCM, addr11, hex2dec('44'), true);
        reset(sensorPCM);
        write(sensorPCM, addr11, hex2dec('BE'));
        data11=read(sensorPCM, addr11,9);
        k=toc;

        addr12 = sensorPCM.AvailableAddresses{7};
        reset(sensorPCM);
        write(sensorPCM, addr12, hex2dec('44'), true);
        reset(sensorPCM);
        write(sensorPCM, addr12, hex2dec('BE'));
        data12=read(sensorPCM, addr12,9);
        l=toc;

        addr13 = sensorPCM.AvailableAddresses{8};
        reset(sensorPCM);
        write(sensorPCM, addr13, hex2dec('44'), true);
        reset(sensorPCM);
        write(sensorPCM, addr13, hex2dec('BE'));
        data13=read(sensorPCM, addr13,9);
        m=toc;

        addr14 = sensorPCM.AvailableAddresses{9};
        reset(sensorPCM);
        write(sensorPCM, addr14, hex2dec('44'), true);
        reset(sensorPCM);
        write(sensorPCM, addr14, hex2dec('BE'));
        data14=read(sensorPCM, addr14,9);
        n=toc;

        addr15 = sensorPCM.AvailableAddresses{10};
        reset(sensorPCM);
        write(sensorPCM, addr15, hex2dec('44'), true);
        reset(sensorPCM);
        write(sensorPCM, addr15, hex2dec('BE'));
        data15=read(sensorPCM, addr15,9);
        o=toc;

        sensorHor = addon(a, 'PaulStoffregen/OneWire', 'D8');


        addr16 = sensorHor.AvailableAddresses{1};
        reset(sensorHor);
        write(sensorHor, addr16, hex2dec('44'), true);
        reset(sensorHor);
        write(sensorHor, addr16, hex2dec('BE'));
        data16=read(sensorHor,addr16,9);
        p=toc;

        addr17 = sensorHor.AvailableAddresses{2};
        reset(sensorHor);
        write(sensorHor, addr17, hex2dec('44'), true);
        reset(sensorHor);
        write(sensorHor, addr17, hex2dec('BE'));
        data17=read(sensorHor,addr17,9);
        q=toc;

        addr18 = sensorHor.AvailableAddresses{3};
        reset(sensorHor);
        write(sensorHor, addr18, hex2dec('44'), true);
        reset(sensorHor);
        write(sensorHor, addr18, hex2dec('BE'));
        data18=read(sensorHor,addr18,9);
        r=toc;

        crc1 = data1(9);
        crc2 = data2(9);
        crc3 = data3(9);
        crc4 = data4(9);
        crc5 = data5(9);
        crc6 = data6(9);
        crc7 = data7(9);
        crc8 = data8(9);
        crc9 = data9(9);
        crc10 = data10(9);
        crc11 = data11(9);
        crc12 = data12(9);
        crc13 = data13(9);
        crc14 = data14(9);
        crc15 = data15(9);
        crc16 = data16(9);
        crc17 = data17(9);
        crc18 = data18(9);


        raw1 = bitshift(data1(2),8)+data1(1);
        raw2 = bitshift(data2(2),8)+data2(1);
        raw3 = bitshift(data3(2),8)+data3(1);
        raw4 = bitshift(data5(2),8)+data4(1);
        raw5 = bitshift(data5(2),8)+data5(1);
        raw6 = bitshift(data6(2),8)+data6(1);
        raw7 = bitshift(data7(2),8)+data7(1);
        raw8 = bitshift(data8(2),8)+data8(1);
        raw9 = bitshift(data9(2),8)+data9(1);
        raw10 = bitshift(data10(2),8)+data10(1);
        raw11 = bitshift(data11(2),8)+data11(1);
        raw12 = bitshift(data12(2),8)+data12(1);
        raw13 = bitshift(data13(2),8)+data13(1);
        raw14 = bitshift(data14(2),8)+data14(1);
        raw15 = bitshift(data15(2),8)+data15(1);
        raw16 = bitshift(data16(2),8)+data16(1);
        raw17 = bitshift(data17(2),8)+data17(1);
        raw18 = bitshift(data18(2),8)+data18(1);

        raw1 = bitand(raw1, hex2dec('fffC'));
        raw2 = bitand(raw2, hex2dec('fffC'));
        raw3 = bitand(raw3, hex2dec('fffC'));
        raw4 = bitand(raw4, hex2dec('fffC'));
        raw5 = bitand(raw5, hex2dec('fffC'));
        raw6 = bitand(raw6, hex2dec('fffC'));
        raw7 = bitand(raw7, hex2dec('fffC'));
        raw8 = bitand(raw8, hex2dec('fffC'));
        raw9 = bitand(raw9, hex2dec('fffC'));
        raw10 = bitand(raw10, hex2dec('fffC'));
        raw11 = bitand(raw11, hex2dec('fffC'));
        raw12 = bitand(raw12, hex2dec('fffC'));
        raw13 = bitand(raw13, hex2dec('fffC'));
        raw14 = bitand(raw14, hex2dec('fffC'));
        raw15 = bitand(raw15, hex2dec('fffC'));
        raw16 = bitand(raw16, hex2dec('fffC'));
        raw17 = bitand(raw17, hex2dec('fffC'));
        raw18 = bitand(raw18, hex2dec('fffC'));

        raw1 = typecast(uint16(raw1), 'int16');
        raw2 = typecast(uint16(raw2), 'int16');
        raw3 = typecast(uint16(raw3), 'int16');
        raw4 = typecast(uint16(raw4), 'int16');
        raw5 = typecast(uint16(raw5), 'int16');
        raw6 = typecast(uint16(raw6), 'int16');
        raw7 = typecast(uint16(raw7), 'int16');
        raw8 = typecast(uint16(raw8), 'int16');
        raw9 = typecast(uint16(raw9), 'int16');
        raw10 = typecast(uint16(raw10), 'int16');
        raw11 = typecast(uint16(raw11), 'int16');
        raw12 = typecast(uint16(raw12), 'int16');
        raw13 = typecast(uint16(raw13), 'int16');
        raw14 = typecast(uint16(raw14), 'int16');
        raw15 = typecast(uint16(raw15), 'int16');
        raw16 = typecast(uint16(raw16), 'int16');
        raw17 = typecast(uint16(raw17), 'int16');
        raw18 = typecast(uint16(raw18), 'int16');




        celsius1 = double(raw1) / 16.0;
            if str2double(celsius1)<20
                c='bo';
            elseif ((20<celsius1)&&(celsius1<30))
                c='go';
            elseif ((30<celsius1)&&(celsius1<40))
                c='mo';
            else
                c='ro';
            end
            plot3(0.5,0.5,0.5,c)
            fprintf('Sensor %s is at %s at clesius %d seconds.\n','A',num2str(celsius1),tim)
            fprintf(fileID,'%s\n %s\n %s\n %s\n %s\n',[' ',num2str(tim),' ',num2str(celsius1),' A']);
        celsius2 = double(raw2) / 16.0;
            if (celsius2<20)
                c='bo';
            elseif ((20<celsius2)&&(celsius2<30))
                c='go';
            elseif ((30<celsius2)&&(celsius2<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.6,0.2,0.5,c)
        fprintf('Sensor %s is at %s at clesius %d seconds.\n','B',num2str(celsius2),b)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(b),' ',num2str(celsius2),' B']);

        celsius3 = double(raw3) / 16.0;
            if (celsius3<20)
                c='bo';
            elseif ((20<celsius3)&&(celsius3<30))
                c='go';
            elseif ((30<celsius3)&&(celsius3<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.4,0.2,0.5,c)
        fprintf('Sensor %s is at %s at clesius %d seconds.\n','C',num2str(celsius3),v)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(v),' ',num2str(celsius3),' C']);

        celsius4 = double(raw4) / 16.0;
            if (celsius4<20)
                c='bo';
            elseif ((20<celsius4)&&(celsius4<30))
                c='go';
            elseif ((30<celsius4)&&(celsius4<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.6,0.8,0.5,c)
        fprintf('Sensor %s is at %s at clesius %d seconds.\n','D',num2str(celsius4),d)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(d),' ',num2str(celsius4),' D']);

        celsius5 = double(raw5) / 16.0;
            if (celsius5<20)
                c='bo';
            elseif ((20<celsius5)&&(celsius5<30))
                c='go';
            elseif ((30<celsius5)&&(celsius5<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.4,0.8,0.5,c)
        fprintf('Sensor %s is at %s at celsius %d seconds.\n','E',num2str(celsius5),e)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(e),num2str(celsius5),' E']);

        celsius6 = double(raw6) / 16.0;
            if (celsius6<20)
                c='bo';
            elseif ((20<celsius6)&&(celsius6<30))
                c='go';
            elseif ((30<celsius6)&&(celsius6<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.95,0.1,0.1,c)
        fprintf('Sensor %s is at %s at celsius %d seconds.\n','F',num2str(celsius6),f)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(f),' ',num2str(celsius6),' F']);


        celsius7 = double(raw7) / 16.0;
            if (celsius7<20)
                c='bo';
            elseif ((20<celsius7)&&(celsius7<30))
                c='go';
            elseif ((30<celsius7)&&(celsius7<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.05,0.1,0.1,c)
        fprintf('Sensor %s is at %s at celsius %d seconds.\n','G',num2str(celsius7),g)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(g),' ',num2str(celsius7),' G']);

        celsius8 = double(raw8) / 16.0;
            if (celsius8<20)
                c='bo';
            elseif ((20<celsius8)&&(celsius8<30))
                c='go';
            elseif ((30<celsius8)&&(celsius8<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.95,0.8,0.1,c)
        fprintf('Sensor %s is at %s at celsius %d seconds.\n','H',num2str(celsius8),h)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(h),' ',num2str(celsius8),' H']);

        celsius9 = double(raw9) / 16.0;
            if (celsius9<20)
                c='bo';
            elseif ((20<celsius9)&&(celsius9<30))
                c='go';
            elseif ((30<celsius9)&&(celsius9<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.05,0.8,0.1,c)
        fprintf('Sensor %s is at %s at %d seconds.\n','I',num2str(celsius9),i)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(i),' ',num2str(celsius9),' I']);

        celsius10 = double(raw10) / 16.0;
            if (celsius10<20)
                c='bo';
            elseif ((20<celsius10)&&(celsius10<30))
                c='go';
            elseif ((30<celsius10)&&(celsius10<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.5,0.5,0.1,c)
        fprintf('Sensor %s is at %s at celsius %d seconds.\n','J',num2str(celsius10),j)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(j),' ',num2str(celsius10),' J']);

        celsius11 = double(raw11) / 16.0;
            if (celsius11<20)
                c='bo';
            elseif ((20<celsius11)&&(celsius11<30))
                c='go';
            elseif ((30<celsius11)&&(celsius11<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.95,0.1,0.9,c)
        fprintf('Sensor %s is at %s at celsius %d seconds.\n','K',num2str(celsius11),k)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(k),' ',num2str(celsius11),' K']);

        celsius12= double(raw12) / 16.0;
            if (celsius12<20)
                c='bo';
            elseif ((20<celsius12)&&(celsius12<30))
                c='go';
            elseif ((30<celsius12)&&(celsius12<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.05,0.1,0.9,c)
        fprintf('Sensor %s is at %s at celsius %d seconds.\n','L',num2str(celsius12),l)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(l),' ',num2str(celsius12),' L']);

        celsius13 = double(raw13) / 16.0;
            if (celsius13<20)
                c='bo';
            elseif ((20<celsius13)&&(celsius13<30))
                c='go';
            elseif ((30<celsius13)&&(celsius13<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.95,0.8,0.9,c)
        fprintf('Sensor %s is at %s at celsius %d seconds.\n','M',num2str(celsius13),m)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(m),' ',num2str(celsius13),' M']);

        celsius14 = double(raw14) / 16.0;
            if (celsius14<20)
                c='bo';
            elseif ((20<celsius14)&&(celsius14<30))
                c='go';
            elseif ((30<celsius14)&&(celsius14<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.05,0.8,0.9,c)
        fprintf('Sensor %s is at %s at celsius %d seconds.\n','N',num2str(celsius14),n)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(n),' ',num2str(celsius14),' N']);


        celsius15 = double(raw15) / 16.0;
            if (celsius15<20)
                c='bo';
            elseif ((20<celsius15)&&(celsius15<30))
                c='go';
            elseif ((30<celsius15)&&(celsius15<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.5,0.5,0.9,c)
        fprintf('Sensor %s is at %s at celsius %d seconds.\n','O',num2str(celsius15),o)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(o),' ',num2str(celsius15),' O']);

        celsius16 = double(raw16) / 16.0;
            if (celsius16<20)
                c='bo';
            elseif ((20<celsius16)&&(celsius16<30))
                c='go';
            elseif ((30<celsius16)&&(celsius16<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.5,-0.1,0.9,c)
        fprintf('Sensor %s is at %s celsius %d seconds.\n','P',num2str(celsius16),p)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(p),' ',num2str(celsius16),' P']);

        celsius17 = double(raw17) / 16.0;
            if (celsius17<20)
                c='bo';
            elseif ((20<celsius17)&&(celsius17<30))
                c='go';
            elseif ((30<celsius17)&&(celsius17<40))
                c='mo';
            else
                c='ro';
            end
        plot3(1.1,0.5,0.9,c)
        fprintf('Sensor %s is at %s celsius %d seconds.\n','Q',num2str(celsius17),q)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(q),' ',num2str(celsius17),' Q']);

        celsius18 = double(raw17) / 16.0;
            if (celsius18<20)
                c='bo';
            elseif ((20<celsius18)&&(celsius18<30))
                c='go';
            elseif ((30<celsius18)&&(celsius18<40))
                c='mo';
            else
                c='ro';
            end
        plot3(0.5,1.1,0.9,c)
        fprintf('Sensor %s is at %s celsius at %d seconds.\n','R',num2str(celsius18),r)
        fprintf(fileID,'%s\n %s\n %s\n %s\n',[num2str(r),' ',num2str(celsius18),' R']);
        title(['Time at: ',num2str(r),' seconds'])
        pause(5) %ajuste de delay 
        clear sensorCh
        clear sensorPCM
        clear sensorHor
        clear a
        checkState=toc;
        %if checkState>60*contLoop
            %break
        if checkState>50 %variable
            break
        end   
    end
fclose(fileID);
break %puede comentarse
end
