using System.Numerics;


namespace Modding_Helper.Interface;
public struct FCSModItemSettings
{
    public string Description;
    public CellLevel CellLevel;
    public Vector3 ConstructableSize;
    public Vector3 ConstructableCenter;
    public bool HasGlass;
    public bool AllowedOutside;
    public bool AllowedInBase;
    public bool AllowedOnGround;
    public bool AllowedOnWall;
    public bool RotationEnabled;
    public bool AllowedOnCeiling;
    public bool AllowedInSub;
    public bool AllowedOnConstructables;
    public decimal ItemCost;
    public TechCategory TechCategory = TechCategory.InteriorModule;
    public TechGroup TechGroup = TechGroup.InteriorModules;

    public string MODNAME;
    internal bool AllowedOnBase;
    internal bool AllowOnRigidBody;
    internal bool HasAnimations;
    internal bool HasBashAnimation;
    internal float DrawTime;
    internal float DropTime;
    internal float HolsterTime;
    internal bool HasFirstAnimation;


    public FCSModItemSettings(string modName)
    {
        MODNAME = modName;
    }
}

public enum CellLevel
{
    Near,
    Medium,
    Far,
    VeryFar,
    Batch = 10,
    Global = 100
}

public enum TechGroup
{
    Resources,
    Survival,
    Personal,
    Machines,
    Constructor,
    Workbench,
    VehicleUpgrades,
    MapRoomUpgrades,
    Cyclops,
    BasePieces,
    ExteriorModules,
    InteriorPieces,
    InteriorModules,
    Miscellaneous,
    Uncategorized
}

public enum TechCategory
{
    BasicMaterials,
    AdvancedMaterials,
    Electronics,
    Water,
    CookedFood,
    CuredFood,
    Equipment,
    Tools,
    Machines,
    Constructor,
    Workbench,
    VehicleUpgrades,
    MapRoomUpgrades,
    Cyclops,
    CyclopsUpgrades,
    BasePiece,
    BaseRoom,
    BaseWall,
    ExteriorModule,
    ExteriorLight,
    ExteriorOther,
    InteriorPiece,
    InteriorRoom,
    InteriorModule,
    Misc,
    MiscHullplates
}

