import os

# Set on the earliest possible moment
os.environ['PYTEST_RUNNING'] = 'true'

# from cooking_core.accounts.tests.fixtures import *  # noqa: F401, F403, E402
from app.core.tests.fixtures import *  # noqa: F401, F403, E402
from app.todo.tests.fixtures import *  # noqa: F401, F403, E402
