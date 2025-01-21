/*
 * TextHive Core API
 *
 * TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.
 *
 * The version of the OpenAPI document: 1.1.0
 * Contact: developers@texthive.khulnasoft.com
 * Generated by: https://konfigthis.com
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Texthive.Net.Client.OpenAPIDateConverter;

namespace Texthive.Net.Model
{
    /// <summary>
    /// Represents a customer account within the Sent platform, including messaging channel configurations and credentials
    /// </summary>
    [DataContract(Name = "Customer")]
    public partial class Customer : IEquatable<Customer>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="Customer" /> class.
        /// </summary>
        /// <param name="id">Unique identifier for the customer.</param>
        /// <param name="name">Name of the customer organization.</param>
        /// <param name="sendingPhoneNumber">Primary phone number used for sending messages.</param>
        /// <param name="smsMessagingProfileId">Identifier for the SMS messaging profile.</param>
        /// <param name="smsBearerToken">Bearer token for authenticating SMS requests.</param>
        /// <param name="createdAt">Timestamp when the customer account was created.</param>
        /// <param name="updatedAt">Timestamp when the customer account was last updated.</param>
        public Customer(string id = default(string), string name = default(string), string sendingPhoneNumber = default(string), string smsMessagingProfileId = default(string), string smsBearerToken = default(string), DateTime createdAt = default(DateTime), DateTime updatedAt = default(DateTime))
        {
            this.Id = id;
            this.Name = name;
            this.SendingPhoneNumber = sendingPhoneNumber;
            this.SmsMessagingProfileId = smsMessagingProfileId;
            this.SmsBearerToken = smsBearerToken;
            this.CreatedAt = createdAt;
            this.UpdatedAt = updatedAt;
        }

        /// <summary>
        /// Unique identifier for the customer
        /// </summary>
        /// <value>Unique identifier for the customer</value>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public string Id { get; set; }

        /// <summary>
        /// Name of the customer organization
        /// </summary>
        /// <value>Name of the customer organization</value>
        [DataMember(Name = "name", EmitDefaultValue = false)]
        public string Name { get; set; }

        /// <summary>
        /// Primary phone number used for sending messages
        /// </summary>
        /// <value>Primary phone number used for sending messages</value>
        [DataMember(Name = "sendingPhoneNumber", EmitDefaultValue = false)]
        public string SendingPhoneNumber { get; set; }

        /// <summary>
        /// Identifier for the SMS messaging profile
        /// </summary>
        /// <value>Identifier for the SMS messaging profile</value>
        [DataMember(Name = "smsMessagingProfileId", EmitDefaultValue = false)]
        public string SmsMessagingProfileId { get; set; }

        /// <summary>
        /// Bearer token for authenticating SMS requests
        /// </summary>
        /// <value>Bearer token for authenticating SMS requests</value>
        [DataMember(Name = "smsBearerToken", EmitDefaultValue = false)]
        public string SmsBearerToken { get; set; }

        /// <summary>
        /// Timestamp when the customer account was created
        /// </summary>
        /// <value>Timestamp when the customer account was created</value>
        [DataMember(Name = "createdAt", EmitDefaultValue = false)]
        public DateTime CreatedAt { get; set; }

        /// <summary>
        /// Timestamp when the customer account was last updated
        /// </summary>
        /// <value>Timestamp when the customer account was last updated</value>
        [DataMember(Name = "updatedAt", EmitDefaultValue = false)]
        public DateTime UpdatedAt { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class Customer {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  SendingPhoneNumber: ").Append(SendingPhoneNumber).Append("\n");
            sb.Append("  SmsMessagingProfileId: ").Append(SmsMessagingProfileId).Append("\n");
            sb.Append("  SmsBearerToken: ").Append(SmsBearerToken).Append("\n");
            sb.Append("  CreatedAt: ").Append(CreatedAt).Append("\n");
            sb.Append("  UpdatedAt: ").Append(UpdatedAt).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as Customer);
        }

        /// <summary>
        /// Returns true if Customer instances are equal
        /// </summary>
        /// <param name="input">Instance of Customer to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(Customer input)
        {
            if (input == null)
            {
                return false;
            }
            return 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && 
                (
                    this.SendingPhoneNumber == input.SendingPhoneNumber ||
                    (this.SendingPhoneNumber != null &&
                    this.SendingPhoneNumber.Equals(input.SendingPhoneNumber))
                ) && 
                (
                    this.SmsMessagingProfileId == input.SmsMessagingProfileId ||
                    (this.SmsMessagingProfileId != null &&
                    this.SmsMessagingProfileId.Equals(input.SmsMessagingProfileId))
                ) && 
                (
                    this.SmsBearerToken == input.SmsBearerToken ||
                    (this.SmsBearerToken != null &&
                    this.SmsBearerToken.Equals(input.SmsBearerToken))
                ) && 
                (
                    this.CreatedAt == input.CreatedAt ||
                    (this.CreatedAt != null &&
                    this.CreatedAt.Equals(input.CreatedAt))
                ) && 
                (
                    this.UpdatedAt == input.UpdatedAt ||
                    (this.UpdatedAt != null &&
                    this.UpdatedAt.Equals(input.UpdatedAt))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.Id != null)
                {
                    hashCode = (hashCode * 59) + this.Id.GetHashCode();
                }
                if (this.Name != null)
                {
                    hashCode = (hashCode * 59) + this.Name.GetHashCode();
                }
                if (this.SendingPhoneNumber != null)
                {
                    hashCode = (hashCode * 59) + this.SendingPhoneNumber.GetHashCode();
                }
                if (this.SmsMessagingProfileId != null)
                {
                    hashCode = (hashCode * 59) + this.SmsMessagingProfileId.GetHashCode();
                }
                if (this.SmsBearerToken != null)
                {
                    hashCode = (hashCode * 59) + this.SmsBearerToken.GetHashCode();
                }
                if (this.CreatedAt != null)
                {
                    hashCode = (hashCode * 59) + this.CreatedAt.GetHashCode();
                }
                if (this.UpdatedAt != null)
                {
                    hashCode = (hashCode * 59) + this.UpdatedAt.GetHashCode();
                }
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        public IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
