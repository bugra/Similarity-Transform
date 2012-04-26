clear all; close all; clc

%%%% NEED TO CHANGE PATH NAMES

% For functions of Dirk Jan Kroon
currentPath = 'C:\Users\Bugra\Documents\MATLAB\Poly\MedicalSegmentation\demon_registration_version_8f';
addpath(genpath(currentPath))
% For data of Dirk Jan Kroon
dataPath = 'C:\Users\Bugra\Documents\MATLAB\Poly\MedicalSegmentation\demon_registration_version_8f\AnnulusData_wrong';
addpath(genpath(dataPath))
 
load ls_valve_t11;
Istatic = ls_valve;

load ls_valve_t21;
Imoving = ls_valve; 


optionStruct = struct('SigmaFluid',4,'Similarity','p','Registration','S','NumofIterations',1);
[ls_annulus,Bx,By,Bz,Fx,Fy,Fz,tM] = register_volumes(Imoving,Istatic,optionStruct);

% % % % % % % % % % % % %  FOR VISUALIZATION PURPOSES % % % % % %
% % % Ireg = ls_annulus;
% % % bwIstatic = Istatic;
% % % bwImoving = Imoving;
% % % bwIreg = Ireg;
% % % bwIstatic(bwIstatic>=-1) = 0;
% % % bwIstatic(bwIstatic<-1) = 1;
% % % bwImoving(bwImoving>=-1) = 0;
% % % bwImoving(bwImoving<-1) = 1;
% % % bwIreg(bwIreg>=-1) = 0;
% % % bwIreg(bwIreg<-1) = 1;
% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % 
% % % showcs3(bwIstatic)
% % % 
% % % % isoStatic = isosurface(permute(bwIstatic, [2 1 3]), 0);
% % % isoStatic = isosurface(bwIstatic, 0);
% % % isoMoving = isosurface(bwImoving, 0);
% % % isoRegister = isosurface(bwIreg, 0);
% % % h1 = patch(isoStatic);set(h1,'facecolor','r','EdgeColor','none','FaceLighting','gouraud', 'AmbientStrength',1,'DiffuseStrength',1,'SpecularStrength',1,'FaceAlpha', 0.3);reducepatch(h1, 0.1);
% % % h2 = patch(isoMoving);set(h2,'facecolor','g','EdgeColor','none','FaceLighting','gouraud', 'AmbientStrength',1,'DiffuseStrength',1,'SpecularStrength',1,'FaceAlpha', 0.3);reducepatch(h2, 0.1);
% % % h3 = patch(isoRegister);set(h3,'facecolor','b','EdgeColor','none','FaceLighting','gouraud', 'AmbientStrength',1,'DiffuseStrength',1,'SpecularStrength',1,'FaceAlpha', 0.3);reducepatch(h3, 0.1);
% % % light('Position',[1 0 0],'Style','infinite');view(3);drawnow;hold off
% % % 
% % % showcs3(uint8(Istatic),[]);title('Istatic');
% % % showcs3(uint8(Imoving),[]);title('Imoving');
% % % showcs3(uint8(Ireg),[]);title('Registered Image');
% % % showcs3(uint8(diff1),[]); title('Difference Between Istatic and Imoving');
% % % showcs3(uint8(diff2),[]);title('Difference Between Istatic and Ireg');
