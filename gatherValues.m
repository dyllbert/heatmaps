picture = imread('https://raw.githubusercontent.com/dyllbert/heatmaps/main/apartment.jpg');
try
    for kk = 1:50
        imshow(picture)
        [x,y] = ginput(1);
        X(kk) = x;
        Y(kk) = y;
        close
        promt_wifi = 'What is the BYU wifi strength? (Without negative sign)23  \n';
        strength(kk) = -input(promt_wifi);
    end
catch
    %do nothing
    warning('Improper Value asisgned as wifi strength, ending collection loop');
end
strength = strength';
X = X';
Y = Y';
