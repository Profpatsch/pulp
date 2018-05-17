module Pulp.Gitignore where

foreign import data Gitignore :: Type

type Filter = String
-- Could use e.g. `Node.Path`
type FilePath = String

-- | Create a gitignore object by giving it a list of patterns.
-- | The patterns are defined in the `.gitignore` documentation
-- | of the git manual.
-- | Each line in the `.gitignore` file is one pattern.
foreign import create :: Array Filter -> Gitignore

-- | Given a filepath return whether it is ignored.
-- |
-- | See `filter` for constraints on the `FilePath`.
foreign import ignores :: FilePath -> Gitignore -> Boolean

-- | Return the files which are *not* ignored by this gitignore.
-- |
-- | **Notice** that `FilePaths` should be in the form returned
-- | by `Node.Path.concat` (joined and normalized, no leading `./`)
-- | and relative to the directory of the git ignore rules.
foreign import filter :: Array FilePath -> Gitignore -> Array FilePath

