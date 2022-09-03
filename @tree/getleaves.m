function IDs = getleaves(obj)
%GETLEAVES Gets the leaves indices of a tree
    if isnan(obj.IDsLeaves)
        IDs = [];
        for i = 1:length(obj.Node)
            if obj.isleaf(i)
                IDs = [IDs, i];
            end
        end
        obj.IDsLeaves = IDs;
    else
        IDs = obj.IDsLeaves;
    end
end