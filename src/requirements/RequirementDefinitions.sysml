/**
 * SysML V2 Requirement Definitions
 * This package defines the fundamental requirement structure for the system
 */

package RequirementDefinitions {
    
    // Import standard SysML library elements
    import ScalarValues::*;
    
    /**
     * Abstract base requirement definition
     * All requirements in the system should derive from this
     */
    abstract requirement def BaseRequirement {
        doc /* Base requirement that all system requirements inherit from */
        
        attribute reqId : String;
        attribute priority : String;
        attribute status : String;
        attribute verificationMethod : String;
    }
    
    /**
     * Functional requirement definition
     * Describes what the system must do
     */
    requirement def FunctionalRequirement :> BaseRequirement {
        doc /* Functional requirements specify system behavior and functions */
        
        attribute functionality : String;
    }
    
    /**
     * Non-functional requirement definition
     * Describes system quality attributes
     */
    requirement def NonFunctionalRequirement :> BaseRequirement {
        doc /* Non-functional requirements specify quality attributes like performance, reliability */
        
        attribute qualityAttribute : String;
        attribute measurementCriteria : String;
    }
    
    /**
     * Performance requirement definition
     */
    requirement def PerformanceRequirement :> NonFunctionalRequirement {
        doc /* Performance requirements specify system speed, throughput, and efficiency */
        
        attribute metric : String;
        attribute targetValue : Real;
        attribute unit : String;
    }
    
    /**
     * Safety requirement definition
     */
    requirement def SafetyRequirement :> BaseRequirement {
        doc /* Safety requirements ensure system operates safely */
        
        attribute hazardId : String;
        attribute safetyLevel : String;
        attribute mitigationStrategy : String;
    }
    
    /**
     * Interface requirement definition
     */
    requirement def InterfaceRequirement :> BaseRequirement {
        doc /* Interface requirements specify system interactions with external entities */
        
        attribute interfaceType : String;
        attribute protocol : String;
    }
}
