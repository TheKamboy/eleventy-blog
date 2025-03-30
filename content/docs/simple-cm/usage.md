---
title: SCM - Usage
description: Simple Console Menu's Documentation
date: 
tags: ["documentation", "go"]
---

---
**Table of Contents:**
- [SCM: Usage](#scm-usage)
	- [Yes or No Menu `[1.0+]`](#yes-or-no-menu-10)
	- [Selection Menu `[1.0+]`](#selection-menu-10)
	- [Multi Selection Menu `[2.0+]`](#multi-selection-menu-20)
---

# SCM: Usage

## Yes or No Menu `[1.0+]`

Prompts the user with a question that can be answered with **Yes** or **No**.

<!-- Code Block rendering is bugged as shit lol, but easily fixable other than -->
```go
type YesNoMenu struct {
 	// The Title
	Title          string
	// The Description
	Description    string 
	// Changes the separator between the number and the
	// option title (default: >)
	Separatorstyle string 
}
```

How to use:

```go
// You don't need to add anything to make it
yesno := cmenu.YesNoMenu{}

getoption := yesno.Show()
```

If statement:

```go
if getoption == "y" {
	println("selected yes")
} else {
	println("selected no")
}
```

## Selection Menu `[1.0+]`

Gives the user multiple options to choose from.

```go
type SelectionMenu struct {
	// The Title
	Title              string 
	// The Descriptions
	Description        string
	// Options (starts at 1)
	Options            []string
	// Changes the separator between the number and the
	// option title (default: >)
	Separatorstyle     string
}
```

How to use:

```go
// You only need the options to make a menu
menu := cmenu.SelectionMenu{
	Options: []string{
		// 1
		"Option 1", 
		// 2
		"Option 2", 
		// 3
		"Option 3"
	},
}

getoption := menu.Show()
```

Option index starts at `1`, so this is how it is used in an If statement:

```go
if getoption == 1 {
	println("selected option 1")
} else if getoption == 2 {
	println("selected option 2")
}
```

## Multi Selection Menu `[2.0+]`

This is the same as the Selection Menu, but allows the user to select multiple options.

```go
type MultiSelectionMenu struct {
	// The Title
	Title           string 
	// The Description
	Description     string 
	// Options
	Options         []string 
	// Changes the separator between the number and the 
	// option title (default: >)
	Separatorstyle  string 
	// Shows how to exit menu
	ShowControlsMSG bool 
}
```

How to use:

```go
// You only need the options to make a menu
menu := cmenu.MultiSelectionMenu{
	Options: []string{
		// 1
		"Option 1", 
		// 2
		"Option 2", 
		// 3
		"Option 3"
	},
}

getoption := menu.Show()
```

For Loop *and* If statement:

```go
for i := 0; i < len(getoption); i++ {
	if getoption[i] == "Option 1" {
		println("selected option 1")
	}
}
```

---
[Click here to go back.](./index.md)