# Bottom Navigation Bar Implementation Guide

## Overview
This guide explains how the bottom navigation bar has been implemented in the RECO-MECHA Flutter app.

## Implementation Details

### Location
The bottom navigation bar has been added to the `Backdrop` widget in `lib/backdrop.dart`.

### Features Implemented

#### 1. **Bottom Navigation Bar**
- **Location**: Added to the `Scaffold` widget in `_BackdropState.build()` method
- **Items**: Four navigation items:
  - Home (house icon)
  - Categories (category icon)
  - Search (search icon)
  - Settings (settings icon)

#### 2. **State Management**
- **Variable**: `_selectedIndex` (int) - Tracks the currently selected tab
- **Initial Value**: 0 (Home tab is selected by default)
- **Update Method**: `_onBottomNavItemTapped(int index)` - Updates the selected index when a tab is tapped

#### 3. **Visual Highlighting**
The selected tab is visually highlighted through:
- **selectedItemColor**: Uses the app's primary color (blue) from the theme
- **unselectedItemColor**: Uses grey color for non-selected items
- **currentIndex**: The `_selectedIndex` variable determines which item is highlighted

### Code Structure

```dart
// State variable to track selected tab
int _selectedIndex = 0;

// Method to handle tab selection
void _onBottomNavItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
  // Navigation logic can be added here
}

// Bottom Navigation Bar widget
bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedIndex,
  onTap: _onBottomNavItemTapped,
  type: BottomNavigationBarType.fixed,
  selectedItemColor: Theme.of(context).colorScheme.primary,
  unselectedItemColor: Colors.grey,
  items: const <BottomNavigationBarItem>[
    // Navigation items...
  ],
),
```

## How It Works

1. **Initial State**: When the app loads, the Home tab (index 0) is selected and highlighted in blue.

2. **User Interaction**: When a user taps on any bottom navigation item:
   - The `onTap` callback triggers `_onBottomNavItemTapped(index)`
   - The method calls `setState()` to update `_selectedIndex`
   - The widget rebuilds with the new selected index
   - The newly selected item is highlighted in blue
   - The previously selected item changes to grey

3. **Visual Feedback**: 
   - Selected item: Shows in the app's primary color (blue)
   - Icon and label are both highlighted
   - Unselected items: Show in grey color

## Extending the Implementation

To add navigation logic for each tab:

```dart
void _onBottomNavItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
  
  // Add navigation logic
  switch (index) {
    case 0:
      // Navigate to Home
      break;
    case 1:
      // Navigate to Categories
      break;
    case 2:
      // Navigate to Search
      break;
    case 3:
      // Navigate to Settings
      break;
  }
}
```

## Testing

To test the bottom navigation:
1. Run the app
2. Login to reach the main screen
3. Tap on different bottom navigation items
4. Observe that the tapped item becomes highlighted in blue
5. Verify that previously selected items turn grey

## Customization Options

You can customize the bottom navigation by modifying:
- **Icons**: Change the `icon` property of each `BottomNavigationBarItem`
- **Labels**: Change the `label` property
- **Colors**: Modify `selectedItemColor` and `unselectedItemColor`
- **Type**: Change `type` to `BottomNavigationBarType.shifting` for a different animation
- **Number of items**: Add or remove `BottomNavigationBarItem` widgets

## Material Design Guidelines

This implementation follows Material Design guidelines for bottom navigation:
- Used between 3-5 destinations
- Clear, concise labels
- Icon + text label for clarity
- Visual feedback on selection
