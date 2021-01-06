module Web.FrontController where

import           IHP.RouterPrelude
import           Web.Controller.Prelude
import           Web.View.Layout        (defaultLayout)

-- Controller Imports
import           Web.Controller.Static
import           Web.Controller.Todos

instance FrontController WebApplication where
    controllers =
        [ startPage WelcomeAction
        -- Generator Marker
        , parseRoute @TodosController
        ]

instance InitControllerContext WebApplication where
    initContext = do
        setLayout defaultLayout

instance CanRoute TodosController where
    parseRoute' = do
        string "/foo"
        endOfInput
        pure TodosCompletedAction

instance HasPath TodosController where
    pathTo TodosCompletedAction = "/foo"
