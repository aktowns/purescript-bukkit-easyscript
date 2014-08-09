# Module Documentation

## Module Data.Bukkit.Bukkit

### Type Classes

    class Bukkit a where
      getWorld :: String -> a -> WorldObj


## Module Data.Bukkit.Entity

### Type Classes

    class Entity a where
      getType :: a -> EntityTypeObj

    class EntityType a where
      lookup :: String -> EntityTypeObj


## Module Data.Bukkit.Java

### Types

    data JavaList :: *


### Values

    importPackages :: forall eff. Eff eff Unit

    javaListToArray :: forall a b. a -> [b]


## Module Data.Bukkit.Location

### Type Classes

    class Location a where
      getX :: Number
      getY :: Number
      getZ :: Number


## Module Data.Bukkit.Player

### Type Classes

    class Player a where
      isOnline :: a -> Boolean
      sendMessage :: String -> a -> Unit
      teleport :: LocationObj -> a -> Unit
      getWorld :: WorldObj -> a


## Module Data.Bukkit.Types

### Types

    data EntityTypeObj :: *

    data LocationObj :: *

    data PlayerObj :: *

    data WorldObj :: *


## Module Data.Bukkit.World

### Type Classes

    class World a where
      getPlayers :: a -> [PlayerObj]
      strikeLightning :: forall b. LocationObj -> a -> Unit