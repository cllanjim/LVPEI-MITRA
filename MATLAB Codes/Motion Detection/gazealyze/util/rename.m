%--------------------------------------------------------------------------
% rename.m v1.05 >>> Christoph Berger / Martin Winkels 10.09.09
%--------------------------------------------------------------------------

%Das Programm sucht und vergleicht Header und Datenfiles der Viewpoint Eyetracker-Software
%Werden �bereinstimmungen im Timestamp gefunden wird das Datenfile
%umbenannt (Dateiname des Headerfiles) und in den renamed Ordner verschoben.

% Von Christoph Berger und Martin Winkels 

% Klinik und Poliklinik f�r Psychiatrie und Psychotherapie der Universit�t Rostock
% AG Emotion & Kognition

%--------------------------------------------------------------------------
% rename.m v1.05 >>> Christoph Berger / Martin Winkels 10.09.09 
%--------------------------------------------------------------------------


%Aufr�umen
clear;

%Pfad w�hlen wo die Daten- und Headerfiles liegen
pathraw = '\\Sr198056\share\Martin Winkels\Projekte\ProjektIlab\Daten\Marlies_ExpB\Viewpoint\raw\';

%Pfad w�hlen in den die fertigen Dateien verschoben werden sollen
pathrenamed ='\\Sr198056\share\Martin Winkels\Projekte\ProjektIlab\Daten\Marlies_ExpB\Viewpoint\renamed\';


%Einlesen der Daten in 2 Listen

%Liste f�r die Files die umbenannt werden m�ssen (Daten ohne Probandennamen)
list_file_data = dir(fullfile(pathraw,'200*-*'));
%Liste der Files deren Namen gelesen werden m�ssen (Header mit Probandennamen)
list_file_header = dir(fullfile(pathraw,'expB*'));

%Falls der Ordner nicht existiert, erstelle ihn
if ~(exist ([pathraw 'finished\'], 'dir'))

    mkdir ([pathraw 'finished\']);
end;

%Schleife �ber die Datenfiles
for idx_Data=1:length(list_file_data)

    %Lese/Importiere jeweils 1 File abh�ngig von idx_Data
    file_data = importdata(fullfile(pathraw,list_file_data(idx_Data,1).name));

    %Sicherheitsabfrage ob �berhaupt Daten vorhanden sind im File
    if length(file_data.textdata)>7

        %Ziehe die Timestamp-Informationen aus dem Datenfile
        TimeStampA=file_data.textdata{8,1};

        if findstr(TimeStampA, 'TimeValues') > 0

            %Gegenst�ck des Datenfiles wird in der Liste der Headerfiles
            %gesucht (Schleife �ber die Headerfiles)
            for idx_Header=1:length(list_file_header)

                %%Lese/Importiere jeweils 1 File abh�ngig von idx_Header
                file_Header = importdata(fullfile(pathraw,list_file_header(idx_Header,1).name));


                %Sicherheitsabfrage ob �berhaupt Daten vorhanden sind im File
                if length(file_Header.textdata)>7

                    %Ziehe die Timestamp-Informationen aus dem Headerfile
                    TimeStampB=file_Header.textdata{8,1};

                    %Vergleichen ob die beiden Timestamps gleich sind
                    TimeStampEqual = strcmp(TimeStampA, TimeStampB);

                    %Falls gleich...
                    if(TimeStampEqual == 1)

                        %Lese den Filenamen ein
                        selected_file=list_file_data(idx_Data,1).name;

                        %Kopiere das File in den neuen Ordner
                        copyfile(fullfile(pathraw,selected_file),pathrenamed);

                        %Abfrage ob File eine TXT endung aufweist
                        if (strfind('.txt',list_file_header(idx_Header,1).name ))

                            %Falls ja benenne das kopierte Datenfile um mit
                            %dem Dateinamen des Headerfiles
                            movefile(fullfile(pathrenamed,selected_file),(fullfile(pathrenamed,list_file_header(idx_Header,1).name)));
                        else
                            %Falls ja benenne das kopierte Datenfile um mit
                            %dem Dateinamen des Headerfiles und h�nge ein
                            %.txt an
                            movefile(fullfile(pathrenamed,selected_file),(fullfile(pathrenamed,[list_file_header(idx_Header,1).name '.txt'])));
                        end

                        %Verschiebe die bearbeiteten Header- und Datenfiles
                        %in den Ordner finished
                        movefile(fullfile(pathraw, list_file_header(idx_Header,1).name),[pathraw 'finished\' list_file_header(idx_Header,1).name ]);
                        movefile(fullfile(pathraw, selected_file),[pathraw 'finished\' selected_file]);

                        %Anzeigen das Files gefunden und bearbeitet wurden
                        disp (['Match between ', list_file_data(idx_Data,1).name,' and ',list_file_header(idx_Header,1).name, ' found! File has been moved and renamed!']);
                        disp (' ');

                        %Liste neu einlesen
                        list_file_header = dir(fullfile(pathraw,'expB*'));

                        %Schleife abbrechen da Files gefunden wurden
                        break;
                    end;
                end;
            end;
        end;
    end;
end;
%Anzeigen das fertig
disp ('All done!!!');
%aufr�umen
clear;
