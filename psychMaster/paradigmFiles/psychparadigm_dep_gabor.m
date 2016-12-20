function [conditionInfo,expInfo] = psychparadigm_dep_gabor(expInfo)
expInfo.paradigmName = 'dependent';

% use kbQueue's as they have high performance
expInfo.useKbQueue = false;
expInfo.enablePowermate = true;
expInfo.viewingDistance = 57;





%Lets add an experiment wide setting here:

expInfo.instructions = ['Try and align the white line \n' ...
                        'with the orientation of the pattern  \n'...
                        'you have just seen!' ];     
%This defines what function to call to draw the condition
%Crucial: requires the @ sign prefix.  Because it needs it to be a
%"function handle"
conditionInfo(1).trialFun=@dep_gabor_trial;
conditionInfo(1).giveFeedback = false;
conditionInfo(1).powermateSpeed = 2;
conditionInfo(1).powermateAccel = 3;

% %Condition definitions
%Condition 1, lets set some defaults:
conditionInfo(1).stimDuration     = 0.5; %approximate stimulus duration in seconds
conditionInfo(1).preStimDuration  = 1;  %Static time before stimulus change

conditionInfo(1).postStimDuration = 0;  %static time aftter stimulus change
conditionInfo(1).iti              = 1;     %Minimum Inter Trial Interval
conditionInfo(1).responseDuration  = 0;    %Post trial window for waiting for a response

conditionInfo(1).sigma             =2; %standard deviation of the gabor in degrees
conditionInfo(1).freq              =1; %frequency of the gabor in cycles per sigma. 
conditionInfo(1).nReps             = 7; %% number of trials to present this condition. 
conditionInfo(1).stimRadiusDeg     =   8;    %stimulus size in degree;

conditionInfo(1).contrast = 0.05;
conditionInfo(1).noiseSigma = .15;
conditionInfo(1).orientationSigma = 11.552; %standard dev of the stim orientation change  
%Implement arbitrary forward models. 
%conditionInfo(1).forwardModel = [ 1 0 ]; %Forward model
conditionInfo(1).label = 'Contrast: 0.05';

conditionInfo(2) = conditionInfo(1);
conditionInfo(2).contrast = 0.10 ;
conditionInfo(2).label = 'Contrast: 0.10';


end












