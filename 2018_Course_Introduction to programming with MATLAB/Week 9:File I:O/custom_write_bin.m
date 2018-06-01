function custom_write_bin(d1,d2,d3,d4,filename) % the input vectors can be of any type, but they will be converted into the specified datatypes
fid = fopen(filename,'w+');
if fid < 0
   fprintf('error opening file\n');
   return;
end
n1 = length(d1(:));
n2 = length(d2(:));
n3 = length(d3(:));
fwrite(fid,[n1,n2,n3],'int16'); % different data types
fwrite(fid,d1,'char');          
fwrite(fid,d2,'single');
fwrite(fid,d3,'int32');
fwrite(fid,d4,'single');
fclose(fid);

