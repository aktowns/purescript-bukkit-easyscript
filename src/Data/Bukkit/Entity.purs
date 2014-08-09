module Data.Bukkit.Entity where

import Data.Bukkit.Types

class EntityType a where
  lookup  :: String -> EntityTypeObj

class Entity a where
  getType :: a -> EntityTypeObj
