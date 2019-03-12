function [efn]=efficency(act,meas)

    efn = abs(meas - act)./abs(act).*100;

end