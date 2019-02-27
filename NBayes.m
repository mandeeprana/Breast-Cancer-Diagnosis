% NAIVE BAYES CLASSIFIER
function [pv, id ] = NBayes(X, y, TestX, distr)
distr='normal';
distr='kernel';
yu=unique(y);
nc=length(yu); % number of classes
ni=size(X,2); % independent variables
ns=length(TestX); % test set
% compute class probability
for i=1:nc
    fy(i)=sum(double(y==yu(i)))/length(y);
end
switch distr
    case 'normal'
        % normal distribution
        % parameters from training set
        for i=1:nc
            xi=X((y==yu(i)),:);
            mu(i,:)=mean(xi,1);
            sigma(i,:)=std(xi,1);
        end
        % probability for test set
        for j=1:ns
            fu=normcdf(ones(nc,1)*u(j,:),mu,sigma);
            P(j,:)=fy.*prod(fu,2)';
        end

    case 'kernel'
        % kernel distribution
        % probability of test set estimated from training set
        for i=1:nc
            for k=1:ni
                xi=X(y==yu(i),k);
                ui=TestX(:,k);
                fuStruct(i,k).f=ksdensity(xi,ui);
            end
        end
        % re-structure
        for i=1:ns
            for j=1:nc
                for k=1:ni
                    fu(j,k)=fuStruct(j,k).f(i);
                end
            end
            P(i,:)=fy.*prod(fu,2)';
        end
    otherwise
        disp('invalid distribution stated')
        return
end
% get predicted output for test set
[pv0,id]=max(P,[],2);
for i=1:length(id)
    pv(i,1)=yu(id(i));
end
end

