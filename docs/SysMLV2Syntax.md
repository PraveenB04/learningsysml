# SysML V2 Syntax Reference

## Introduction

This document provides a quick reference for SysML V2 syntax used in requirements engineering.

## Basic Elements

### Package

Packages organize model elements into namespaces.

```sysml
package MyPackage {
    // Package contents
}
```

### Import

Import brings elements from other packages into scope.

```sysml
import PackageName::*;              // Import all
import PackageName::ElementName;    // Import specific element
```

### Documentation

Documentation is added using `doc` comments.

```sysml
doc /* This is a documentation comment */
```

## Requirement Constructs

### Requirement Definition

Defines a reusable requirement type.

```sysml
requirement def RequirementName {
    doc /* Description of the requirement type */
    
    // Attributes
    attribute attrName : Type;
}
```

### Requirement Specialization

Create specialized requirement types using `:>` (specialization).

```sysml
requirement def SpecializedReq :> BaseReq {
    doc /* This requirement specializes BaseReq */
    
    // Additional attributes
    attribute newAttr : Type;
}
```

### Requirement Instance

Create a specific requirement instance.

```sysml
requirement reqName : RequirementType {
    doc /* Specific requirement description */
    
    attribute attrName = "value";
}
```

## Data Types

### Primitive Types

```sysml
String      // Text values
Real        // Floating-point numbers
Integer     // Whole numbers
Boolean     // true or false
```

### Attribute Declaration

```sysml
attribute name : Type;                  // Declaration
attribute name : Type = defaultValue;   // With default
```

## Relationships

### Satisfy

Indicates that an element satisfies a requirement.

```sysml
requirement childReq {
    satisfy parentReq;
}
```

### Refine

Indicates that a requirement refines another requirement.

```sysml
requirement detailedReq {
    refine abstractReq;
}
```

### Derive

Indicates that a requirement is derived from another.

```sysml
requirement derivedReq {
    derive sourceReq;
}
```

### Require

Indicates a dependency between requirements.

```sysml
requirement reqA {
    require reqB;  // reqA depends on reqB
}
```

## Abstract Elements

Abstract definitions cannot be instantiated directly.

```sysml
abstract requirement def AbstractReq {
    // Abstract definition
}
```

## Comments

### Single-line Comment

```sysml
// This is a single-line comment
```

### Multi-line Comment

```sysml
/*
 * This is a multi-line comment
 * It can span multiple lines
 */
```

### Documentation Comment

```sysml
doc /*
 * This is a documentation comment
 * It describes the purpose and usage of an element
 */
```

## Best Practices

### Naming Conventions

1. **Packages**: PascalCase (e.g., `RequirementDefinitions`)
2. **Requirement definitions**: PascalCase with "Requirement" suffix (e.g., `FunctionalRequirement`)
3. **Requirement instances**: camelCase with type prefix (e.g., `sysReq001`, `stakeholderReq001`)
4. **Attributes**: camelCase (e.g., `reqId`, `priorityLevel`)

### Requirement IDs

Use a systematic numbering scheme:
- `STAKEHOLDER-xxx`: Stakeholder requirements (001, 002, ...)
- `SYS-FUNC-xxx`: Functional requirements (001, 002, ...)
- `SYS-PERF-xxx`: Performance requirements (101, 102, ...)
- `SYS-SAFE-xxx`: Safety requirements (201, 202, ...)
- `SYS-INT-xxx`: Interface requirements (301, 302, ...)

### Structure Organization

```sysml
package WellOrganizedPackage {
    
    // 1. Imports at the top
    import OtherPackage::*;
    
    // 2. Documentation
    doc /* Package description */
    
    // 3. Definitions before instances
    requirement def MyRequirementDef {
        // ...
    }
    
    // 4. Instances
    requirement myReq : MyRequirementDef {
        // ...
    }
}
```

## Example: Complete Requirement

```sysml
package ExampleRequirements {
    
    import ScalarValues::*;
    
    // Define a requirement type
    requirement def PerformanceRequirement {
        doc /* Requirements related to system performance */
        
        attribute reqId : String;
        attribute metric : String;
        attribute targetValue : Real;
        attribute unit : String;
        attribute priority : String;
        attribute status : String;
    }
    
    // Create a specific requirement instance
    requirement responseTimeReq : PerformanceRequirement {
        doc /* The system shall respond to requests within 2 seconds */
        
        attribute reqId = "SYS-PERF-001";
        attribute metric = "Response Time";
        attribute targetValue = 2.0;
        attribute unit = "seconds";
        attribute priority = "High";
        attribute status = "Approved";
    }
}
```

## Common Patterns

### Requirement Hierarchy

```sysml
// Base requirement
requirement def BaseReq {
    attribute reqId : String;
}

// Specialized types
requirement def FunctionalReq :> BaseReq {
    attribute functionality : String;
}

requirement def NonFunctionalReq :> BaseReq {
    attribute qualityAttribute : String;
}

// Further specialization
requirement def PerformanceReq :> NonFunctionalReq {
    attribute metric : String;
}
```

### Traceability Pattern

```sysml
// Stakeholder requirement
requirement stakeholderReq {
    attribute reqId = "STAKEHOLDER-001";
}

// System requirement that satisfies stakeholder need
requirement sysReq {
    attribute reqId = "SYS-FUNC-001";
    satisfy stakeholderReq;
}

// Design element that satisfies system requirement
part designElement {
    satisfy sysReq;
}
```

### Requirement Grouping

```sysml
package RequirementGroup {
    
    // Import specific requirements
    import Requirements::req001;
    import Requirements::req002;
    import Requirements::req003;
    
    doc /*
     * This package groups related requirements
     * for easier management and traceability
     */
}
```

## Additional Resources

- **SysML V2 Language Specification**: Official language definition
- **SysML V2 Pilot Implementation**: Reference implementation
- **SysML V2 API & Services**: Tools for working with SysML V2 models

## Tips

1. Always use meaningful names for requirements
2. Include comprehensive documentation
3. Use consistent attribute naming
4. Maintain traceability with satisfy/refine/derive
5. Group related requirements in packages
6. Use abstract definitions for common patterns
7. Specify verification methods for each requirement
8. Keep requirement IDs unique and systematic
