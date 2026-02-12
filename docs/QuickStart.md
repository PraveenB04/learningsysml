# Quick Start Guide - SysML V2 Requirements Engineering

This guide will help you quickly get started with the SysML V2 requirements engineering project.

## 📋 What You'll Learn

In 10 minutes, you'll understand:
1. How to navigate the project structure
2. How to read SysML V2 requirement models
3. How to extend the requirements with your own examples
4. How traceability works in practice

## 🚀 Quick Start Steps

### Step 1: Understand the Project (2 minutes)

The project demonstrates requirements engineering using SysML V2. It contains:
- **4 stakeholder requirements** (what stakeholders need)
- **12 system requirements** (how the system will satisfy those needs)
- Complete traceability between requirements

### Step 2: Explore the Main Model (3 minutes)

Open `src/MainRequirementsModel.sysml` to see the big picture:

```sysml
package MainRequirementsModel {
    // This integrates all requirement packages
    import RequirementDefinitions::*;
    import StakeholderRequirements::*;
    import SystemRequirements::*;
    
    // Requirements are organized into logical groups
}
```

**Key Concepts:**
- `package`: Groups related elements
- `import`: Brings elements from other packages into scope
- Groups organize requirements by domain (User Experience, Reliability, Security)

### Step 3: Review Requirement Definitions (2 minutes)

Open `src/requirements/RequirementDefinitions.sysml`:

This file defines the **templates** for requirements. Think of it as a class hierarchy:

```
BaseRequirement (abstract)
├── FunctionalRequirement
├── NonFunctionalRequirement
│   └── PerformanceRequirement
├── SafetyRequirement
└── InterfaceRequirement
```

Each type has specific attributes. For example:
- FunctionalRequirement has `functionality`
- PerformanceRequirement has `metric`, `targetValue`, `unit`

### Step 4: See Stakeholder Requirements (3 minutes)

Open `src/stakeholders/StakeholderRequirements.sysml`:

Here's an example stakeholder requirement:

```sysml
requirement stakeholderReq001 : StakeholderRequirement {
    doc /* The system shall be easy to use for all user types */
    
    attribute reqId = "STAKEHOLDER-001";
    attribute stakeholder = "End Users";
    attribute need = "Intuitive user interface";
    attribute benefit = "Reduced training time";
    attribute priority = "High";
}
```

**What this means:**
- `stakeholderReq001`: The requirement name (identifier)
- `: StakeholderRequirement`: The type (template) it uses
- `doc /* ... */`: Human-readable description
- `attribute ... = "..."`: Specific values for this requirement

### Step 5: Explore System Requirements (3 minutes)

Open `src/systems/SystemRequirements.sysml`:

Here's an example that shows traceability:

```sysml
requirement sysReq001 : FunctionalRequirement {
    doc /* The system shall provide user authentication */
    
    attribute reqId = "SYS-FUNC-001";
    attribute functionality = "User Authentication";
    attribute priority = "Critical";
    
    // This links to stakeholder requirement
    satisfy stakeholderReq001;
}
```

**Key Point**: The `satisfy stakeholderReq001` line creates traceability!

### Step 6: View the Traceability (2 minutes)

Open `docs/TraceabilityMatrix.md` to see:
- Which system requirements satisfy which stakeholder requirements
- Coverage analysis (are all stakeholder needs addressed?)
- Verification methods for each requirement

## 🎯 Try It Yourself

### Exercise 1: Add a New Stakeholder Requirement

Edit `src/stakeholders/StakeholderRequirements.sysml` and add:

```sysml
requirement stakeholderReq005 : StakeholderRequirement {
    doc /* The system shall be accessible to users with disabilities */
    
    attribute reqId = "STAKEHOLDER-005";
    attribute stakeholder = "Accessibility Team";
    attribute need = "Accessible user interface";
    attribute benefit = "Inclusive design for all users";
    attribute priority = "High";
    attribute status = "Draft";
    attribute verificationMethod = "Accessibility Testing";
}
```

### Exercise 2: Add a System Requirement that Satisfies It

Edit `src/systems/SystemRequirements.sysml` and add:

```sysml
requirement sysReq303 : InterfaceRequirement {
    doc /* The system shall support screen readers */
    
    attribute reqId = "SYS-INT-303";
    attribute interfaceType = "Accessibility Interface";
    attribute protocol = "ARIA";
    attribute priority = "High";
    attribute status = "Draft";
    attribute verificationMethod = "Accessibility Audit";
    
    satisfy stakeholderReq005;
}
```

**Congratulations!** You've just added a new requirement with traceability.

## 📚 Next Steps

### Learn More
1. Read `docs/RequirementsEngineering.md` for deep dive into RE concepts
2. Study `docs/SysMLV2Syntax.md` for syntax details
3. Review `docs/ProjectConfiguration.md` for project standards

### Extend the Project
1. Add more requirements in each category
2. Create sub-requirements that refine existing ones
3. Add requirement groups for new domains
4. Link requirements to design elements (future work)

### Best Practices to Follow
1. **Use systematic IDs**: Follow the numbering scheme (STAKEHOLDER-xxx, SYS-FUNC-xxx, etc.)
2. **Write clear descriptions**: Make the `doc` comment explain what, not how
3. **Add traceability**: Always link system requirements to stakeholder requirements
4. **Specify verification**: Include how each requirement will be verified
5. **Track status**: Update status as requirements evolve

## 🔍 Common Patterns

### Pattern 1: Specialization Hierarchy
```sysml
// Base type
requirement def BaseReq { ... }

// Specialized type
requirement def SpecialReq :> BaseReq { ... }
```

### Pattern 2: Requirement Instance
```sysml
requirement myReq : RequirementType {
    doc /* Description */
    attribute name = value;
}
```

### Pattern 3: Traceability
```sysml
requirement systemReq {
    satisfy stakeholderReq;  // Satisfies stakeholder need
}
```

### Pattern 4: Grouping
```sysml
package RequirementGroup {
    import Requirements::req001;
    import Requirements::req002;
    doc /* Group description */
}
```

## ❓ FAQ

**Q: What's the difference between a requirement definition and a requirement instance?**  
A: A definition is a template (like a class), an instance is a specific requirement (like an object).

**Q: Why use `satisfy` instead of just comments?**  
A: `satisfy` creates formal traceability that can be analyzed by tools.

**Q: Can one system requirement satisfy multiple stakeholder requirements?**  
A: Yes! You can have multiple `satisfy` statements.

**Q: What if I want to add a new requirement type?**  
A: Define it in `RequirementDefinitions.sysml` by specializing BaseRequirement.

**Q: How do I know if my syntax is correct?**  
A: Use a SysML V2 tool or syntax checker. Manual validation involves checking:
- Matching braces { }
- Semicolons after attribute assignments
- Proper package imports
- Valid type references

## 🛠️ Tools to Explore

While you can read and edit `.sysml` files in any text editor, consider:

1. **SysML V2 Pilot Implementation**: Official reference implementation
2. **Eclipse Papyrus**: Visual modeling tool
3. **VS Code**: With syntax highlighting extensions
4. **Requirements Management Tools**: For larger projects

## ✅ Checklist for Success

Before you finish, make sure you can:
- [ ] Navigate the project directory structure
- [ ] Read and understand requirement definitions
- [ ] Identify stakeholder vs system requirements
- [ ] Follow traceability links (satisfy relationships)
- [ ] Add a new requirement following the patterns
- [ ] Understand the requirement numbering scheme
- [ ] Know where to find documentation

## 🎓 Learning Path

1. ✅ **Quick Start** (You are here!)
2. 📖 **Deep Dive**: Read full documentation
3. 🔨 **Practice**: Add 5+ requirements of your own
4. 🏗️ **Extend**: Create new requirement types
5. 🔗 **Integrate**: Link to use cases and architecture (advanced)

## 💡 Tips

- Start simple: Add one requirement at a time
- Follow existing patterns: Look at similar requirements for examples
- Maintain consistency: Use the same style and conventions
- Document thoroughly: Good documentation helps everyone
- Validate traceability: Ensure all system requirements link to stakeholder needs

## 📞 Getting Help

- Review example requirements in the project
- Check the documentation in `docs/`
- Search for SysML V2 resources online
- Experiment and learn by doing!

---

**Happy Modeling! 🚀**

Remember: Good requirements are the foundation of successful systems!
