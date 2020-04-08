clear all
fis = readfis('FLC');

%load rules from csv
rules = readtable('final_rules.csv');
rules = table2array(rules);
rules = string(rules);
rules = transpose(rules);
f = addRule(fis,rules);
writeFIS(f,'FLC_final');
