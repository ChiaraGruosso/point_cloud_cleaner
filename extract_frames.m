clear
clc

folder_video = 'C:\Users\Utente\Documents\Chiara\Università\VP\Progetto/'; % inserire percorso cartella che contiene video (finisce con /)
video_name = 'VID20220922112118'; % cambiare nome dei video (senza estensione)
video_path = [folder_video video_name '.mp4']; % estensione mp4
frames_path = 'C:\Users\Utente\Documents\Chiara\Università\VP\Progetto\frames_3/'; % inserire percorso cartella che contettà le immagini estratte

% Check if folder exists. If not, make dir
if not(isfolder(frames_path))
    mkdir(frames_path)
end

v = VideoReader(video_path);

num_frame=1;

while hasFrame(v)
    frame = readFrame(v);
    imwrite(frame, [frames_path num2str(num_frame) '.png']); % salvo l'immagine con num progressivo
    num_frame = num_frame + 1;
end
disp('Fine estrazione frame!')