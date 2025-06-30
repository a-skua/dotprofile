# /ss - Smart Screenshot Analysis

Takes a screenshot and analyzes it using AI to answer questions about what's on screen.

## Usage

```bash
/ss [instruction]
```

## Arguments

- `instruction` - What you want to know about the screenshot (required)

## Examples

```bash
/ss "What should I click in this menu?"
/ss "What does this error message mean?"
/ss "How do I configure this setting?"
/ss "What's the next step in this n8n workflow?"
```

## How it works

1. **Automatic Screenshot**: Takes a full-screen capture
2. **AI Analysis**: Claude Code analyzes the image
3. **Smart Cropping**: Identifies and focuses on relevant screen areas
4. **Contextual Help**: Provides specific guidance based on what's shown

## Implementation

The command uses these core components:

- `screencapture` for macOS screenshot capture
- Claude Code's image analysis capabilities
- Automatic coordinate estimation for focused analysis
- Temporary file management with auto-cleanup

## Installation

1. Save the implementation scripts:
   - `ss_command.sh` - Main bash script
   - `ss_analyze.py` - Python analysis engine

2. Make them executable:
   ```bash
   chmod +x ss_command.sh ss_analyze.py
   ```

3. Use directly:
   ```bash
   ./ss_analyze.py "your question here"
   ```

## Technical Details

- **Platform**: macOS only (requires `screencapture`)
- **Dependencies**: Python 3.x, Claude Code CLI
- **Temp Files**: Stored in `/tmp` with timestamp naming
- **Auto-cleanup**: Temporary files are automatically removed

## Use Cases

- **GUI Navigation**: "Which button should I click?"
- **Error Diagnosis**: "What does this error mean?"
- **Configuration Help**: "How do I set this up?"
- **Workflow Guidance**: "What's the next step?"
- **Version Differences**: Get help with UI that differs from standard documentation