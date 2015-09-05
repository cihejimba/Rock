//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by the Rock.CodeGeneration project
//     Changes to this file will be lost when the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
// <copyright>
// Copyright 2013 by the Spark Development Network
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// </copyright>
//
using System;
using System.Collections.Generic;


namespace Rock.Client
{
    /// <summary>
    /// Base client model for Group that only includes the non-virtual fields. Use this for PUT/POSTs
    /// </summary>
    public partial class GroupEntity
    {
        /// <summary />
        public int Id { get; set; }

        /// <summary />
        public bool? AddUserAccountsDuringSync { get; set; }

        /// <summary />
        public bool? AllowGuests { get; set; }

        /// <summary />
        public int? CampusId { get; set; }

        /// <summary />
        public string Description { get; set; }

        /// <summary />
        public int? ExitSystemEmailId { get; set; }

        /// <summary />
        public Guid? ForeignGuid { get; set; }

        /// <summary />
        public string ForeignKey { get; set; }

        /// <summary />
        public int GroupTypeId { get; set; }

        /// <summary />
        public bool IsActive { get; set; }

        /// <summary />
        public bool IsPublic { get; set; }

        /// <summary />
        public bool IsSecurityRole { get; set; }

        /// <summary />
        public bool IsSystem { get; set; }

        /// <summary />
        public bool? MustMeetRequirementsToAddMember { get; set; }

        /// <summary />
        public string Name { get; set; }

        /// <summary />
        public int Order { get; set; }

        /// <summary />
        public int? ParentGroupId { get; set; }

        /// <summary />
        public int? ScheduleId { get; set; }

        /// <summary />
        public int? SyncDataViewId { get; set; }

        /// <summary />
        public int? WelcomeSystemEmailId { get; set; }

        /// <summary />
        public Guid Guid { get; set; }

        /// <summary />
        public int? ForeignId { get; set; }

        /// <summary>
        /// Copies the base properties from a source Group object
        /// </summary>
        /// <param name="source">The source.</param>
        public void CopyPropertiesFrom( Group source )
        {
            this.Id = source.Id;
            this.AddUserAccountsDuringSync = source.AddUserAccountsDuringSync;
            this.AllowGuests = source.AllowGuests;
            this.CampusId = source.CampusId;
            this.Description = source.Description;
            this.ExitSystemEmailId = source.ExitSystemEmailId;
            this.ForeignGuid = source.ForeignGuid;
            this.ForeignKey = source.ForeignKey;
            this.GroupTypeId = source.GroupTypeId;
            this.IsActive = source.IsActive;
            this.IsPublic = source.IsPublic;
            this.IsSecurityRole = source.IsSecurityRole;
            this.IsSystem = source.IsSystem;
            this.MustMeetRequirementsToAddMember = source.MustMeetRequirementsToAddMember;
            this.Name = source.Name;
            this.Order = source.Order;
            this.ParentGroupId = source.ParentGroupId;
            this.ScheduleId = source.ScheduleId;
            this.SyncDataViewId = source.SyncDataViewId;
            this.WelcomeSystemEmailId = source.WelcomeSystemEmailId;
            this.Guid = source.Guid;
            this.ForeignId = source.ForeignId;

        }
    }

    /// <summary>
    /// Client model for Group that includes all the fields that are available for GETs. Use this for GETs (use GroupEntity for POST/PUTs)
    /// </summary>
    public partial class Group : GroupEntity
    {
        /// <summary />
        public Campus Campus { get; set; }

        /// <summary />
        public SystemEmail ExitSystemEmail { get; set; }

        /// <summary />
        public ICollection<GroupLocation> GroupLocations { get; set; }

        /// <summary />
        public ICollection<GroupRequirement> GroupRequirements { get; set; }

        /// <summary />
        public ICollection<Group> Groups { get; set; }

        /// <summary />
        public GroupType GroupType { get; set; }

        /// <summary />
        public ICollection<GroupMember> Members { get; set; }

        /// <summary />
        public Schedule Schedule { get; set; }

        /// <summary />
        public DataView SyncDataView { get; set; }

        /// <summary />
        public SystemEmail WelcomeSystemEmail { get; set; }

        /// <summary />
        public DateTime? CreatedDateTime { get; set; }

        /// <summary />
        public DateTime? ModifiedDateTime { get; set; }

        /// <summary />
        public int? CreatedByPersonAliasId { get; set; }

        /// <summary />
        public int? ModifiedByPersonAliasId { get; set; }

        /// <summary>
        /// NOTE: Attributes are only populated when ?loadAttributes is specified. Options for loadAttributes are true, false, 'simple', 'expanded' 
        /// </summary>
        public Dictionary<string, Rock.Client.Attribute> Attributes { get; set; }

        /// <summary>
        /// NOTE: AttributeValues are only populated when ?loadAttributes is specified. Options for loadAttributes are true, false, 'simple', 'expanded' 
        /// </summary>
        public Dictionary<string, Rock.Client.AttributeValue> AttributeValues { get; set; }
    }
}
