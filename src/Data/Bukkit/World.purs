module Data.Bukkit.World where

import Data.Bukkit.Java
import Data.Bukkit.Types

class World a where
  getPlayers :: a -> [PlayerObj]
  strikeLightning :: forall b. LocationObj -> a -> Unit
