# Learning SysML V2 - Requirements Engineering

A comprehensive SysML V2 project demonstrating requirements engineering best practices with a focus on requirement modeling, traceability, and system specification.

## 📋 Overview

This project provides a complete example of requirements engineering using SysML V2, the next-generation systems modeling language. It demonstrates how to:

- Define reusable requirement types and templates
- Capture stakeholder needs and expectations
- Specify detailed system requirements
- Establish traceability between requirements
- Organize requirements into logical groups
- Document verification methods

## 🏗️ Project Structure

```
learningsysml/
├── src/
│   ├── MainRequirementsModel.sysml           # Main integration model
│   ├── requirements/
│   │   └── RequirementDefinitions.sysml      # Base requirement definitions
│   ├── stakeholders/
│   │   └── StakeholderRequirements.sysml     # High-level stakeholder needs
│   └── systems/
│       └── SystemRequirements.sysml          # Detailed system requirements
├── docs/
│   ├── RequirementsEngineering.md            # Comprehensive RE guide
│   └── SysMLV2Syntax.md                      # SysML V2 syntax reference
├── models/
│   └── (Generated models and diagrams)
└── README.md
```

## 🚀 Getting Started

### 1. Explore the Requirements Model

Start by reviewing the main requirements model:
- **MainRequirementsModel.sysml**: See how all requirements are integrated
- **RequirementDefinitions.sysml**: Understand the base requirement types
- **StakeholderRequirements.sysml**: Review high-level stakeholder needs
- **SystemRequirements.sysml**: Examine detailed system specifications

### 2. Understand the Hierarchy

The project follows a standard requirements hierarchy:

```
Stakeholder Requirements (STAKEHOLDER-xxx)
    ↓ satisfy
System Requirements (SYS-xxx)
    ├── Functional (SYS-FUNC-xxx)
    ├── Performance (SYS-PERF-xxx)
    ├── Safety (SYS-SAFE-xxx)
    └── Interface (SYS-INT-xxx)
```

### 3. Learn the Concepts

Read the documentation to understand requirements engineering:
- **docs/RequirementsEngineering.md**: Complete guide to RE with SysML V2
- **docs/SysMLV2Syntax.md**: Quick reference for SysML V2 syntax

## 📚 Key Concepts

### Requirement Definitions

Define reusable requirement templates:

```sysml
requirement def FunctionalRequirement :> BaseRequirement {
    doc /* Functional requirements specify system behavior */
    attribute functionality : String;
}
```

### Requirement Instances

Create specific requirements:

```sysml
requirement sysReq001 : FunctionalRequirement {
    doc /* The system shall provide user authentication */
    attribute reqId = "SYS-FUNC-001";
    attribute priority = "Critical";
    satisfy stakeholderReq001;
}
```

### Traceability

Link requirements to show relationships:

```sysml
requirement sysReq {
    satisfy stakeholderReq;  // Satisfies stakeholder need
}
```

## 🎯 Requirements Coverage

The project includes examples of:

### Stakeholder Requirements (4)
- User experience and usability
- System reliability and availability
- Cost-effectiveness and maintenance
- Regulatory compliance

### System Requirements (12)
- **Functional** (3): Authentication, logging, backup
- **Performance** (3): Response time, scalability, uptime
- **Safety** (2): Security, encryption
- **Interface** (2): REST API, browser support

## 🔗 Traceability Matrix

| Stakeholder | System Requirements | Category |
|-------------|---------------------|----------|
| STAKEHOLDER-001 | SYS-FUNC-001, SYS-PERF-101, SYS-INT-301, SYS-INT-302 | User Experience |
| STAKEHOLDER-002 | SYS-FUNC-003, SYS-PERF-102, SYS-PERF-103 | Reliability |
| STAKEHOLDER-003 | (Future requirements) | Maintainability |
| STAKEHOLDER-004 | SYS-FUNC-002, SYS-SAFE-201, SYS-SAFE-202 | Compliance |

## 📖 Documentation

- **[Requirements Engineering Guide](docs/RequirementsEngineering.md)**: Comprehensive guide to RE with SysML V2
- **[SysML V2 Syntax Reference](docs/SysMLV2Syntax.md)**: Quick reference for language syntax

## 🛠️ Tools

To work with SysML V2 models, you can use:

1. **SysML V2 Pilot Implementation**: Reference implementation from OMG
2. **Eclipse Papyrus**: Modeling tool with SysML V2 support
3. **Text editors**: Any editor for viewing/editing .sysml files

## 📝 Best Practices Demonstrated

1. ✅ **Systematic requirement IDs**: Consistent numbering scheme
2. ✅ **Comprehensive documentation**: Every requirement documented
3. ✅ **Requirement traceability**: Links between requirements
4. ✅ **Verification methods**: Specified for each requirement
5. ✅ **Logical grouping**: Requirements organized by domain
6. ✅ **Status tracking**: Status attribute for each requirement
7. ✅ **Priority levels**: Priority assigned to all requirements

## 🎓 Learning Path

1. **Basics**: Review requirement definitions and understand types
2. **Stakeholder Focus**: Study how stakeholder needs are captured
3. **System Details**: Examine detailed system requirements
4. **Traceability**: Follow satisfy relationships between requirements
5. **Organization**: See how requirements are grouped and structured
6. **Extension**: Add your own requirements following the patterns

## 🤝 Contributing

This is a learning project. Feel free to:
- Add more requirement examples
- Extend the requirement hierarchy
- Create additional documentation
- Improve the model structure

## 📚 Resources

- [SysML V2 Official Site](https://www.omg.org/spec/SysML/)
- [SysML V2 GitHub Repository](https://github.com/Systems-Modeling/SysML-v2-Release)
- [Systems Modeling Language](https://sysml.org/)

## 📄 License

This project is for educational purposes.

---

**Happy Learning! 🚀** 
