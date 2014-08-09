module Data.Bukkit.Java where

import Control.Monad.Eff

foreign import data JavaList   :: *

foreign import importPackages
  "function importPackages () {            \
  \ importPackage(org.bukkit)              \
  \ importPackage(org.bukkit.entity)       \
  \ importPackage(org.bukkit.inventory)    \
  \ importPackage(org.bukkit.event)        \
  \ importPackage(org.bukkit.event.player) \
  \ importPackage(org.bukkit.event.block)  \
  \ importPackage(org.bukkit.event.entity) \
  \ importPackage(org.bukkit.util)         \
  \ importPackage(org.bukkit.potion)       \
  \}" :: forall eff. Eff eff Unit

foreign import javaListToArray
  "function javaListToArray(xs) { \
  \  var iter = a.iterator();     \
  \  var output = [];             \
  \  while (iter.hasNext()) {     \
  \    output.push(iter.next());  \
  \  }                            \
  \  return output;               \
  \}" :: forall a b. a -> [b]
