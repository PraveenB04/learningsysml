# SysML V2 Project Configuration

## Project Information

**Project Name**: Learning SysML V2 - Requirements Engineering  
**Version**: 1.0.0  
**SysML Version**: 2.0  
**Focus Area**: Requirements Engineering  
**Status**: Active Development  

## Project Purpose

This project serves as a comprehensive example and learning resource for requirements engineering using SysML V2. It demonstrates:

- How to structure requirements in a SysML V2 project
- Best practices for requirement modeling
- Traceability between stakeholder and system requirements
- Organization of requirements by type and domain

## Model Organization

### Requirements Packages

1. **RequirementDefinitions** (`src/requirements/RequirementDefinitions.sysml`)
   - Base requirement definitions
   - Reusable requirement templates
   - Common attributes and structures

2. **StakeholderRequirements** (`src/stakeholders/StakeholderRequirements.sysml`)
   - High-level stakeholder needs
   - Business objectives
   - User expectations

3. **SystemRequirements** (`src/systems/SystemRequirements.sysml`)
   - Detailed technical requirements
   - Functional, performance, safety, and interface requirements
   - Traceability to stakeholder requirements

4. **MainRequirementsModel** (`src/MainRequirementsModel.sysml`)
   - Integration point for all requirements
   - Requirement groupings
   - Overall project structure

## Requirement Numbering Scheme

- **STAKEHOLDER-xxx**: Stakeholder requirements (001-999)
- **SYS-FUNC-xxx**: Functional requirements (001-999)
- **SYS-PERF-xxx**: Performance requirements (101-199)
- **SYS-SAFE-xxx**: Safety requirements (201-299)
- **SYS-INT-xxx**: Interface requirements (301-399)

## Status Values

Requirements can have the following status values:
- **Draft**: Initial creation, not yet reviewed
- **Under Review**: Being reviewed by stakeholders
- **Approved**: Accepted and ready for implementation
- **Implemented**: Implemented in the system
- **Verified**: Tested and verified
- **Rejected**: Not accepted

## Priority Levels

- **Critical**: Must be implemented, system cannot function without it
- **High**: Important for system success
- **Medium**: Desirable but not essential
- **Low**: Nice to have, can be deferred

## Verification Methods

- **Testing**: Unit, integration, system, or acceptance testing
- **Analysis**: Mathematical or simulation analysis
- **Inspection**: Code review or document inspection
- **Demonstration**: Showing the system meets the requirement
- **Audit**: Formal compliance verification

## Development Workflow

1. **Requirements Elicitation**: Gather stakeholder needs
2. **Requirements Analysis**: Analyze and refine requirements
3. **Requirements Specification**: Document in SysML V2
4. **Requirements Verification**: Define verification methods
5. **Requirements Validation**: Ensure they meet stakeholder needs
6. **Requirements Management**: Track changes and maintain traceability

## File Extensions

- `.sysml`: SysML V2 model files
- `.md`: Documentation in Markdown format

## Tools and Environment

### Recommended Tools
- SysML V2 Pilot Implementation
- Eclipse Papyrus (with SysML V2 plugin)
- Visual Studio Code (for text editing)
- Git (for version control)

### Model Validation
Models can be validated using:
- SysML V2 syntax checker
- Requirement traceability analysis
- Completeness checks

## Quality Criteria

Requirements must be:
- **Clear**: Unambiguous and understandable
- **Complete**: All necessary information included
- **Consistent**: No conflicts with other requirements
- **Traceable**: Linked to source and derived requirements
- **Verifiable**: Can be tested or validated
- **Feasible**: Technically and economically achievable
- **Necessary**: Supports project objectives

## Change Management

When modifying requirements:
1. Update the requirement in the appropriate model file
2. Update related documentation
3. Check and update traceability links
4. Update status as appropriate
5. Document the change rationale
6. Review impact on dependent requirements

## Future Enhancements

Planned additions to the project:
- Use case models referencing requirements
- Component architecture satisfying requirements
- Test cases linked to requirements
- Requirement validation scenarios
- Additional requirement types (maintainability, portability)
- Derived requirements from system analysis

## Contact and Support

This is an educational project for learning SysML V2.

For questions about SysML V2:
- Visit the official SysML website: https://sysml.org/
- Check the SysML V2 specification: https://www.omg.org/spec/SysML/
- Explore the GitHub repository: https://github.com/Systems-Modeling/SysML-v2-Release
