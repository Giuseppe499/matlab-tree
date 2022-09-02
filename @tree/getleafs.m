function IDs = getleafs(obj)
    if isnan(obj.IDsLeafs)
        IDs = [];
        for i = 1:length(obj.Node)
            if obj.isleaf(i)
                IDs = [IDs, i];
            end
        end
        obj.IDsLeafs = IDs;
    else
        IDs = obj.IDsLeafs;
    end
end