module Data.Bukkit.Player where

import Data.Bukkit.Types

class Player a where
  isOnline    :: a -> Boolean
  sendMessage :: String -> a -> Unit
  teleport    :: LocationObj -> a -> Unit
  getWorld    :: WorldObj -> a
