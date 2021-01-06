module Web.Types where

import           Generated.Types
import           IHP.ModelSupport
import           IHP.Prelude

data WebApplication = WebApplication deriving (Eq, Show)


data StaticController = WelcomeAction deriving (Eq, Show, Data)

data TodosController
    = TodosAction
    | TodosCompletedAction
    | NewTodoAction
    | ShowTodoAction { todoId :: !(Id Todo) }
    | CreateTodoAction
    | EditTodoAction { todoId :: !(Id Todo) }
    | UpdateTodoAction { todoId :: !(Id Todo) }
    | DeleteTodoAction { todoId :: !(Id Todo) }
    deriving (Eq, Show, Data)
