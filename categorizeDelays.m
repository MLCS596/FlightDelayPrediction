num=zeros(3,1);
num(1)=size(find(m==0),1);
num(2)=size(find(m==1),1);
num(3)=size(find(m==2),1);
%{strcat('On-time ', num2str(num(1))),strcat('Delayed ', num2str(num(2))),strcat('Cancelled ', num2str(num(3)))}
pie(num)
delays=zeros(5,1);
delays(1)=sum(TONTIME.CARRIER_DELAY);
delays(2)=sum(TONTIME.WEATHER_DELAY);
delays(3)=sum(TONTIME.NAS_DELAY);
delays(4)=sum(TONTIME.SECURITY_DELAY);
delays(5)=sum(TONTIME.LATE_AIRCRAFT_DELAY);
pie(delays);