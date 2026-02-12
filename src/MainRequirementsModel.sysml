/**
 * SysML V2 Main Requirements Model
 * This is the root model that integrates all requirement packages
 * and demonstrates requirement traceability
 */

package MainRequirementsModel {
    
    // Import all requirement packages
    import RequirementDefinitions::*;
    import StakeholderRequirements::*;
    import SystemRequirements::*;
    
    doc /*
     * Main Requirements Model for Learning SysML V2
     * 
     * This model demonstrates a complete requirements engineering approach using SysML V2.
     * It includes:
     * - Requirement definitions (base types)
     * - Stakeholder requirements (high-level needs)
     * - System requirements (detailed specifications)
     * - Requirement relationships (satisfy, refine, derive)
     * 
     * Requirements Hierarchy:
     * 1. Stakeholder Requirements (STAKEHOLDER-xxx)
     *    - Capture stakeholder needs and expectations
     *    - Focus on "what" and "why"
     * 
     * 2. System Requirements (SYS-xxx)
     *    - Functional Requirements (SYS-FUNC-xxx)
     *    - Performance Requirements (SYS-PERF-xxx)
     *    - Safety Requirements (SYS-SAFE-xxx)
     *    - Interface Requirements (SYS-INT-xxx)
     * 
     * Traceability:
     * - System requirements are traced to stakeholder requirements using 'satisfy' relationships
     * - This ensures all system requirements support stakeholder needs
     * - Requirements can be verified through specified methods
     */
    
    /**
     * Requirement Group: User Experience
     * Groups requirements related to user interaction and experience
     */
    package UserExperienceRequirements {
        import SystemRequirements::sysReq001;
        import SystemRequirements::sysReq101;
        import SystemRequirements::sysReq301;
        import SystemRequirements::sysReq302;
        
        doc /*
         * This group contains all requirements related to user experience:
         * - Authentication (sysReq001)
         * - Response time (sysReq101)
         * - REST API (sysReq301)
         * - Browser support (sysReq302)
         */
    }
    
    /**
     * Requirement Group: Reliability
     * Groups requirements related to system reliability and availability
     */
    package ReliabilityRequirements {
        import SystemRequirements::sysReq003;
        import SystemRequirements::sysReq102;
        import SystemRequirements::sysReq103;
        
        doc /*
         * This group contains all requirements related to reliability:
         * - Data backup (sysReq003)
         * - Scalability (sysReq102)
         * - Uptime (sysReq103)
         */
    }
    
    /**
     * Requirement Group: Security and Compliance
     * Groups requirements related to security and regulatory compliance
     */
    package SecurityRequirements {
        import SystemRequirements::sysReq002;
        import SystemRequirements::sysReq201;
        import SystemRequirements::sysReq202;
        
        doc /*
         * This group contains all requirements related to security:
         * - Activity logging (sysReq002)
         * - Unauthorized access prevention (sysReq201)
         * - Data encryption (sysReq202)
         */
    }
}
