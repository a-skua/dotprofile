---
allowed-tools: Bash, Read
description: Take and analyze screenshot
---

## Task
Take a screenshot and analyze what's visible on screen based on the user's question.

## Usage Examples
```bash
/ss 何が映ってる？           # General screen analysis
/ss Slackの返信文考えて      # Help with specific content
/ss この画面のボタンの位置    # UI element identification
/ss エラーメッセージ解析     # Error analysis
```

## Screenshot Strategy
Two main approaches:
1. **Interactive selection** (recommended): User selects specific area with mouse
2. **Full screen capture**: Capture entire screen for analysis

## Interactive Screenshot Capture
For most cases, use interactive mode:
```bash
screencapture -i /tmp/ss_interactive_$(date +%Y%m%d_%H%M%S).png
```

Benefits:
- User selects exactly what they want analyzed
- No coordinate guessing or multiple attempts
- Space key toggles between area/window selection
- Escape key cancels if needed

## Fallback: Full Screen Capture
If interactive mode isn't suitable, capture the full screen:
```bash
screencapture /tmp/ss_full_$(date +%Y%m%d_%H%M%S).png
```

## Analysis Instructions
When the screenshot is captured, follow these steps:

1. **Read the image** using the Read tool
2. **Immediately check image quality** before any analysis:
   - If text is blurry, too small, or hard to read, STOP here
   - Inform the user about the quality issue immediately
   - Request a retake with specific guidance (closer view, larger area, etc.)
   - DO NOT proceed with analysis until quality is acceptable
3. **Only if quality is good, analyze the content** based on the user's instruction
4. **Provide comprehensive analysis** covering:
   - Direct answer to the user's question
   - Relevant context from what's visible
   - Suggestions for next steps if applicable

## Quality Improvement Cycle
If the screenshot quality is insufficient:
- **Notify the user**: "The text in this area appears blurry/small - I can see [what you can see] but some details are hard to read"
- **Suggest retake**: "Would you like to take another screenshot focusing more closely on [specific area]?"
- **Guide the process**: Help user get better results on the next attempt

## Advanced Features

### Manual Region Capture
When specific region capture is needed:
1. Check display resolution for multi-monitor setups:
   ```bash
   system_profiler SPDisplaysDataType | grep Resolution
   osascript -e "tell application \"Finder\" to get bounds of window of desktop"
   ```
2. Identify target coordinates (x,y,width,height)
3. Capture the region:
   ```bash
   screencapture -R x,y,width,height /tmp/ss_region_$(date +%Y%m%d_%H%M%S).png
   ```
4. Read and analyze the focused region screenshot

### Common Issues
- **Interactive mode preferred**: Use `-i` flag for better targeting
- **Multi-monitor setups**: Content may be on secondary display
- **High-DPI displays**: Retina scaling affects coordinates
