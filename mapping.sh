#!/bin/bash
curl -XDELETE "http://192.168.99.100:9200/grantsdeduped"
curl -XPUT "http://192.168.99.100:9200/grantsdeduped" -d'
{
        "mappings": {
            "OpportunityForecastDetail_1_0": {
                "properties": {
                    "AdditionalInformationOnEligibility": {
                        "type": "text"
                    },
                    "AgencyCode": {
                        "type": "text"
                    },
                    "AgencyName": {
                        "type": "text"
                    },
                    "ArchiveDate": {
                        "type": "date",
                        "format": "MMddyyyy"
                    },
                    "AwardCeiling": {
                        "type": "long"
                    },
                    "AwardFloor": {
                        "type": "long"
                    },
                    "CFDANumbers": {
                        "type": "text"
                    },
                    "CategoryOfFundingActivity": {
                        "type": "text"
                    },
                    "CostSharingOrMatchingRequirement": {
                        "type": "text"
                    },
                    "Description": {
                        "type": "text",
                        "analyzer": "english"
                    },
                    "EligibleApplicants": {
                        "type": "text"
                    },
                    "EstimatedAwardDate": {
                        "type": "date",
                        "format": "MMddyyyy"
                    },
                    "EstimatedProjectStartDate": {
                        "type": "date",
                        "format": "MMddyyyy"
                    },
                    "EstimatedSynopsisCloseDate": {
                        "type": "date",
                        "format": "MMddyyyy"
                    },
                    "EstimatedSynopsisCloseDateExplanation": {
                        "type": "text"
                    },
                    "EstimatedSynopsisPostDate": {
                        "type": "date",
                        "format": "MMddyyyy"
                    },
                    "EstimatedTotalProgramFunding": {
                        "type": "long"
                    },
                    "ExpectedNumberOfAwards": {
                        "type": "integer"
                    },
                    "FiscalYear": {
                        "type": "short"
                    },
                    "FundingInstrumentType": {
                        "type": "text"
                    },
                    "GrantorContactEmail": {
                        "type": "text"
                    },
                    "GrantorContactEmailDescription": {
                        "type": "text"
                    },
                    "GrantorContactName": {
                        "type": "text"
                    },
                    "GrantorContactPhoneNumber": {
                        "type": "text"
                    },
                    "LastUpdatedDate": {
                        "type": "date",
                        "format": "MMddyyyy"
                    },
                    "OpportunityCategory": {
                        "type": "text"
                    },
                    "OpportunityID": {
                        "type": "text"
                    },
                    "OpportunityNumber": {
                        "type": "text"
                    },
                    "OpportunityTitle": {
                        "type": "text",
                        "analyzer": "english"
                    },
                    "PostDate": {
                        "type": "date",
                        "format": "MMddyyyy"

                    },
                    "Version": {
                        "type": "text"
                    }
                }
            },
            "OpportunitySynopsisDetail_1_0": {
                "properties": {
                    "AdditionalInformationOnEligibility": {
                        "type": "text"
                    },
                    "AdditionalInformationText": {
                        "type": "text"
                    },
                    "AdditionalInformationURL": {
                        "type": "text"
                    },
                    "AgencyCode": {
                        "type": "text"
                    },
                    "AgencyName": {
                        "type": "text"
                    },
                    "ArchiveDate": {
                        "type": "date",
                        "format": "MMddyyyy"
                    },
                    "AwardCeiling": {
                        "type": "long"
                    },
                    "AwardFloor": {
                        "type": "long"
                    },
                    "CFDANumbers": {
                        "type": "text"
                    },
                    "CategoryExplanation": {
                        "type": "text"
                    },
                    "CategoryOfFundingActivity": {
                        "type": "text"
                    },
                    "CloseDate": {
                        "type": "date",
                        "format": "MMddyyyy"
                    },
                    "CloseDateExplanation": {
                        "type": "text"
                    },
                    "CostSharingOrMatchingRequirement": {
                        "type": "text"
                    },
                    "Description": {
                        "type": "text",
                        "analyzer": "english"
                    },
                    "EligibleApplicants": {
                        "type": "text"
                    },
                    "EstimatedTotalProgramFunding": {
                        "type": "long"
                    },
                    "ExpectedNumberOfAwards": {
                        "type": "integer"
                    },
                    "FundingInstrumentType": {
                        "type": "text"
                    },
                    "GrantorContactEmail": {
                        "type": "text"
                    },
                    "GrantorContactEmailDescription": {
                        "type": "text"
                    },
                    "GrantorContactText": {
                        "type": "text"
                    },
                    "LastUpdatedDate": {
                        "type": "date",
                        "format": "MMddyyyy"
                    },
                    "OpportunityCategory": {
                        "type": "text"
                    },
                    "OpportunityCategoryExplanation": {
                        "type": "text"
                    },
                    "OpportunityID": {
                        "type": "text"
                    },
                    "OpportunityNumber": {
                        "type": "text"
                    },
                    "OpportunityTitle": {
                        "type": "text",
                        "analyzer": "english"
                    },
                    "PostDate": {
                        "type": "date",
                        "format": "MMddyyyy"

                    },
                    "Version": {
                        "type": "text"
                    }
                }
            }
        }
}'