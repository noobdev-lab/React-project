#!/bin/bash
# Usage: create-component ComponentName

if [ -z "$1" ]; then
  echo "Usage: $0 ComponentName"
  exit 1
fi

COMPONENT_NAME="$1"
COMPONENTS_DIR="./app/front-end/src/components"  # Adjust if your components folder is different
FOLDER_NAME="$COMPONENTS_DIR/$COMPONENT_NAME"

mkdir -p "$FOLDER_NAME"

JSX_FILE="$FOLDER_NAME/${COMPONENT_NAME}.jsx"
SASS_FILE="$FOLDER_NAME/${COMPONENT_NAME}.sass"
INDEX_FILE="$FOLDER_NAME/index.js"

cat > "$JSX_FILE" <<EOL
import React, { useState } from 'react';
import './${COMPONENT_NAME}.sass';

const $COMPONENT_NAME = () => {
  const [state, setState] = useState(null);

  return (
    <div className="${COMPONENT_NAME}">
      $COMPONENT_NAME component
    </div>
  );
};

export default $COMPONENT_NAME;
EOL

touch "$SASS_FILE"

cat > "$INDEX_FILE" <<EOL
export { default } from './${COMPONENT_NAME}';
EOL

echo "Created React component '$COMPONENT_NAME' in folder '$FOLDER_NAME':"
echo "  $JSX_FILE"
echo "  $SASS_FILE"
echo "  $INDEX_FILE"

