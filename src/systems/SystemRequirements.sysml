/**
 * SysML V2 System Requirements
 * This package defines detailed system-level requirements derived from stakeholder needs
 */

package SystemRequirements {
    
    import RequirementDefinitions::*;
    import StakeholderRequirements::*;
    
    // Functional Requirements
    
    requirement sysReq001 : FunctionalRequirement {
        doc /* The system shall provide user authentication */
        
        attribute reqId = "SYS-FUNC-001";
        attribute functionality = "User Authentication";
        attribute priority = "Critical";
        attribute status = "Approved";
        attribute verificationMethod = "Integration Testing";
        
        // This requirement satisfies stakeholder requirement 001
        satisfy stakeholderReq001;
    }
    
    requirement sysReq002 : FunctionalRequirement {
        doc /* The system shall log all user activities */
        
        attribute reqId = "SYS-FUNC-002";
        attribute functionality = "Activity Logging";
        attribute priority = "High";
        attribute status = "Approved";
        attribute verificationMethod = "System Testing";
        
        satisfy stakeholderReq004;
    }
    
    requirement sysReq003 : FunctionalRequirement {
        doc /* The system shall provide data backup capabilities */
        
        attribute reqId = "SYS-FUNC-003";
        attribute functionality = "Data Backup";
        attribute priority = "High";
        attribute status = "Approved";
        attribute verificationMethod = "System Testing";
        
        satisfy stakeholderReq002;
    }
    
    // Performance Requirements
    
    requirement sysReq101 : PerformanceRequirement {
        doc /* The system shall respond to user requests within 2 seconds */
        
        attribute reqId = "SYS-PERF-101";
        attribute qualityAttribute = "Response Time";
        attribute measurementCriteria = "95th percentile response time";
        attribute metric = "Response Time";
        attribute targetValue = 2.0;
        attribute unit = "seconds";
        attribute priority = "High";
        attribute status = "Approved";
        attribute verificationMethod = "Performance Testing";
        
        satisfy stakeholderReq001;
    }
    
    requirement sysReq102 : PerformanceRequirement {
        doc /* The system shall support at least 1000 concurrent users */
        
        attribute reqId = "SYS-PERF-102";
        attribute qualityAttribute = "Scalability";
        attribute measurementCriteria = "Concurrent user capacity";
        attribute metric = "Concurrent Users";
        attribute targetValue = 1000.0;
        attribute unit = "users";
        attribute priority = "High";
        attribute status = "Approved";
        attribute verificationMethod = "Load Testing";
        
        satisfy stakeholderReq002;
    }
    
    requirement sysReq103 : PerformanceRequirement {
        doc /* The system shall achieve 99.9% uptime */
        
        attribute reqId = "SYS-PERF-103";
        attribute qualityAttribute = "Availability";
        attribute measurementCriteria = "System uptime percentage";
        attribute metric = "Uptime";
        attribute targetValue = 99.9;
        attribute unit = "percent";
        attribute priority = "Critical";
        attribute status = "Approved";
        attribute verificationMethod = "Reliability Testing";
        
        satisfy stakeholderReq002;
    }
    
    // Safety Requirements
    
    requirement sysReq201 : SafetyRequirement {
        doc /* The system shall prevent unauthorized data access */
        
        attribute reqId = "SYS-SAFE-201";
        attribute hazardId = "HAZ-001";
        attribute safetyLevel = "Critical";
        attribute mitigationStrategy = "Multi-factor authentication and role-based access control";
        attribute priority = "Critical";
        attribute status = "Approved";
        attribute verificationMethod = "Security Testing";
        
        satisfy stakeholderReq004;
    }
    
    requirement sysReq202 : SafetyRequirement {
        doc /* The system shall encrypt all sensitive data */
        
        attribute reqId = "SYS-SAFE-202";
        attribute hazardId = "HAZ-002";
        attribute safetyLevel = "High";
        attribute mitigationStrategy = "AES-256 encryption for data at rest and in transit";
        attribute priority = "Critical";
        attribute status = "Approved";
        attribute verificationMethod = "Security Audit";
        
        satisfy stakeholderReq004;
    }
    
    // Interface Requirements
    
    requirement sysReq301 : InterfaceRequirement {
        doc /* The system shall provide a REST API */
        
        attribute reqId = "SYS-INT-301";
        attribute interfaceType = "REST API";
        attribute protocol = "HTTPS";
        attribute priority = "High";
        attribute status = "Approved";
        attribute verificationMethod = "Interface Testing";
        
        satisfy stakeholderReq001;
    }
    
    requirement sysReq302 : InterfaceRequirement {
        doc /* The system shall support standard web browsers */
        
        attribute reqId = "SYS-INT-302";
        attribute interfaceType = "Web Browser";
        attribute protocol = "HTTP/HTTPS";
        attribute priority = "High";
        attribute status = "Approved";
        attribute verificationMethod = "Compatibility Testing";
        
        satisfy stakeholderReq001;
    }
}
