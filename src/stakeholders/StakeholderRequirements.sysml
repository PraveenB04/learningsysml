/**
 * SysML V2 Stakeholder Requirements
 * This package captures high-level stakeholder needs and expectations
 */

package StakeholderRequirements {
    
    import RequirementDefinitions::*;
    
    /**
     * Stakeholder requirement definition
     * Represents needs from the stakeholder perspective
     */
    requirement def StakeholderRequirement :> BaseRequirement {
        doc /* High-level requirements from stakeholder perspective */
        
        attribute stakeholder : String;
        attribute need : String;
        attribute benefit : String;
    }
    
    // Example Stakeholder Requirements
    
    requirement stakeholderReq001 : StakeholderRequirement {
        doc /* The system shall be easy to use for all user types */
        
        attribute reqId = "STAKEHOLDER-001";
        attribute stakeholder = "End Users";
        attribute need = "Intuitive user interface";
        attribute benefit = "Reduced training time and improved user satisfaction";
        attribute priority = "High";
        attribute status = "Approved";
        attribute verificationMethod = "User Testing";
    }
    
    requirement stakeholderReq002 : StakeholderRequirement {
        doc /* The system shall be reliable and available 24/7 */
        
        attribute reqId = "STAKEHOLDER-002";
        attribute stakeholder = "Business Operations";
        attribute need = "High system availability";
        attribute benefit = "Continuous business operations without interruption";
        attribute priority = "Critical";
        attribute status = "Approved";
        attribute verificationMethod = "Reliability Testing";
    }
    
    requirement stakeholderReq003 : StakeholderRequirement {
        doc /* The system shall be cost-effective to maintain */
        
        attribute reqId = "STAKEHOLDER-003";
        attribute stakeholder = "IT Department";
        attribute need = "Low maintenance overhead";
        attribute benefit = "Reduced operational costs";
        attribute priority = "Medium";
        attribute status = "Under Review";
        attribute verificationMethod = "Cost Analysis";
    }
    
    requirement stakeholderReq004 : StakeholderRequirement {
        doc /* The system shall comply with industry standards */
        
        attribute reqId = "STAKEHOLDER-004";
        attribute stakeholder = "Compliance Team";
        attribute need = "Regulatory compliance";
        attribute benefit = "Avoid legal issues and penalties";
        attribute priority = "Critical";
        attribute status = "Approved";
        attribute verificationMethod = "Compliance Audit";
    }
}
