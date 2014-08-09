module Data.Bukkit.Bukkit where

import Data.Bukkit.Types

class Bukkit a where
  getWorld :: String -> a -> WorldObj
