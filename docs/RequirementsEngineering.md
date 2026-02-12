# SysML V2 Requirements Engineering Guide

## Overview

This guide provides a comprehensive introduction to requirements engineering using SysML V2. The project demonstrates best practices for capturing, organizing, and managing system requirements.

## Requirements Engineering in SysML V2

### What is Requirements Engineering?

Requirements engineering is the process of defining, documenting, and maintaining requirements. It involves:
- **Elicitation**: Gathering requirements from stakeholders
- **Analysis**: Understanding and refining requirements
- **Specification**: Documenting requirements clearly
- **Validation**: Ensuring requirements meet stakeholder needs
- **Management**: Tracking and maintaining requirements throughout the project lifecycle

### SysML V2 Requirements Modeling

SysML V2 provides powerful constructs for requirements modeling:

#### 1. Requirement Definitions
Requirement definitions are reusable templates that define the structure and properties of requirements.

```sysml
requirement def BaseRequirement {
    attribute reqId : String;
    attribute priority : String;
    attribute status : String;
    attribute verificationMethod : String;
}
```

#### 2. Requirement Instances
Requirement instances are specific requirements based on definitions.

```sysml
requirement sysReq001 : FunctionalRequirement {
    doc /* The system shall provide user authentication */
    attribute reqId = "SYS-FUNC-001";
    attribute priority = "Critical";
}
```

#### 3. Requirement Relationships

SysML V2 supports several types of requirement relationships:

- **satisfy**: Indicates that a requirement satisfies another requirement
- **refine**: Indicates that a requirement refines another requirement
- **derive**: Indicates that a requirement is derived from another requirement
- **require**: Indicates a dependency between requirements

Example:
```sysml
requirement sysReq001 {
    satisfy stakeholderReq001;  // Traces to stakeholder requirement
}
```

## Project Structure

```
learningsysml/
├── src/
│   ├── MainRequirementsModel.sysml      # Main integration model
│   ├── requirements/
│   │   └── RequirementDefinitions.sysml  # Base requirement definitions
│   ├── stakeholders/
│   │   └── StakeholderRequirements.sysml # High-level stakeholder needs
│   └── systems/
│       └── SystemRequirements.sysml      # Detailed system requirements
├── docs/
│   ├── RequirementsEngineering.md       # This guide
│   └── SysMLV2Syntax.md                 # SysML V2 syntax reference
└── models/
    └── (generated models and diagrams)
```

## Requirements Hierarchy

### 1. Stakeholder Requirements (STAKEHOLDER-xxx)

High-level requirements that capture stakeholder needs and expectations.

**Purpose**: Define "what" stakeholders need and "why" they need it

**Example**:
- STAKEHOLDER-001: The system shall be easy to use
- STAKEHOLDER-002: The system shall be reliable and available 24/7

**Attributes**:
- stakeholder: Who has this need
- need: What they need
- benefit: Why they need it

### 2. System Requirements (SYS-xxx)

Detailed technical requirements derived from stakeholder requirements.

#### 2.1 Functional Requirements (SYS-FUNC-xxx)

Define what the system must do.

**Example**:
- SYS-FUNC-001: The system shall provide user authentication
- SYS-FUNC-002: The system shall log all user activities

#### 2.2 Performance Requirements (SYS-PERF-xxx)

Define system performance characteristics.

**Example**:
- SYS-PERF-101: The system shall respond within 2 seconds
- SYS-PERF-102: The system shall support 1000 concurrent users

#### 2.3 Safety Requirements (SYS-SAFE-xxx)

Define system safety and security characteristics.

**Example**:
- SYS-SAFE-201: The system shall prevent unauthorized data access
- SYS-SAFE-202: The system shall encrypt all sensitive data

#### 2.4 Interface Requirements (SYS-INT-xxx)

Define system interfaces and interactions.

**Example**:
- SYS-INT-301: The system shall provide a REST API
- SYS-INT-302: The system shall support standard web browsers

## Requirement Traceability

Traceability ensures that:
1. All stakeholder needs are addressed by system requirements
2. All system requirements can be traced back to stakeholder needs
3. Changes can be impact-analyzed
4. Requirements coverage can be verified

### Traceability Matrix Example

| Stakeholder Req | System Req | Type | Description |
|----------------|------------|------|-------------|
| STAKEHOLDER-001 | SYS-FUNC-001 | Functional | User authentication |
| STAKEHOLDER-001 | SYS-PERF-101 | Performance | Response time |
| STAKEHOLDER-002 | SYS-PERF-103 | Performance | System uptime |
| STAKEHOLDER-004 | SYS-SAFE-201 | Safety | Data security |

## Verification Methods

Each requirement should specify how it will be verified:

1. **Testing**: Unit, integration, system, or acceptance testing
2. **Analysis**: Mathematical or simulation analysis
3. **Inspection**: Code review or document inspection
4. **Demonstration**: Showing the system meets the requirement

## Best Practices

1. **Keep requirements atomic**: Each requirement should address one thing
2. **Make requirements testable**: Include measurable criteria
3. **Use consistent numbering**: Follow a systematic ID scheme
4. **Maintain traceability**: Link system requirements to stakeholder needs
5. **Track status**: Keep requirement status up to date
6. **Document rationale**: Explain why requirements exist
7. **Prioritize requirements**: Use priority levels (Critical, High, Medium, Low)
8. **Version control**: Track changes to requirements over time

## Getting Started

1. **Review the model files**: Start with `MainRequirementsModel.sysml`
2. **Understand the hierarchy**: See how requirements flow from stakeholder to system
3. **Follow the traceability**: Use satisfy relationships to see connections
4. **Extend the model**: Add your own requirements following the patterns
5. **Validate completeness**: Ensure all stakeholder needs are addressed

## Next Steps

- Add more specific requirements for your domain
- Create use cases that reference requirements
- Define system architecture that satisfies requirements
- Set up verification and validation procedures
- Establish requirements management processes

## Resources

- SysML V2 Specification: [https://www.omg.org/spec/SysML/](https://www.omg.org/spec/SysML/)
- SysML V2 Release: [https://github.com/Systems-Modeling/SysML-v2-Release](https://github.com/Systems-Modeling/SysML-v2-Release)
- Requirements Engineering Body of Knowledge (REBOK)
