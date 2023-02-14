function make_fig(W, U, mu, nsp)


%this stores the value of the possible dendritic (negative) rebound 
tmp = W(45,:,1); 
[B,ind]=sort(tmp);
%first we isolate putative channel location
tmp_2 = U(:,:,1);
[B,best_channels] = max(tmp_2);

subplot(2,3,1)
imagesc(W(:,ind,1))
title('Temporal Components')
xlabel('Unit number');
ylabel('Time (samples)');
caxis([-.1,.1])
% 
subplot(2,3,2)
plot(W(:,ind(1:10),1))
title('10 biggest rebound')
xlabel('Time (samples)')

% we make a local minima as U and W aren't always of the same size
min_len = min(length(best_channels),length(tmp));
tmp_local = tmp(1:min_len);
[B,ind_local]=sort(tmp_local);
% loc_min = min(tmp_local);
% loc_max = max(tmp_local);
% fprintf(loc_min)
% fprintf(loc_max)


subplot(1,3,3)
hold on
plot(tmp_local(ind_local),best_channels(ind_local),'b.')
plot(tmp_local(ind_local(1:10)),best_channels(ind_local(1:10)),'r.')
xlabel('Dendritic rebound amp.')
ylim([0,384])
ylabel('Cluster channel location')
legend('normal SU','Axons ?')
title('Axons vs Neurons')
% xlim([loc_min*1.5,loc_max*1.5]) 
% subplot(2,2,2)
% imagesc(U(:,:,1))
% title('Spatial Components')
% xlabel('Unit number');
% ylabel('Channel number');

subplot(2,3,4)
plot(mu)
ylim([0 100])
title('Unit Amplitudes')
xlabel('Unit number');
ylabel('Amplitude (arb. units)');

subplot(2,3,5)
semilogx(1+nsp, mu, '.')
ylim([0 100])
xlim([0 100])
title('Amp. / Spk Count')
xlabel('Spike Count');
ylabel('Amp. (arb. units)');
drawnow