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
    /// Request model for sending a message to a contact using a template
    /// </summary>
    [DataContract(Name = "SendMessageToContactRequest")]
    public partial class SendMessageToContactRequest : IEquatable<SendMessageToContactRequest>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SendMessageToContactRequest" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected SendMessageToContactRequest() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="SendMessageToContactRequest" /> class.
        /// </summary>
        /// <param name="customerId">Unique identifier of the customer (required).</param>
        /// <param name="contactId">Unique identifier of the contact (required).</param>
        /// <param name="templateId">Unique identifier of the message template (required).</param>
        public SendMessageToContactRequest(string customerId = default(string), string contactId = default(string), string templateId = default(string))
        {
            // to ensure "customerId" is required (not null)
            if (customerId == null)
            {
                throw new ArgumentNullException("customerId is a required property for SendMessageToContactRequest and cannot be null");
            }
            this.CustomerId = customerId;
            // to ensure "contactId" is required (not null)
            if (contactId == null)
            {
                throw new ArgumentNullException("contactId is a required property for SendMessageToContactRequest and cannot be null");
            }
            this.ContactId = contactId;
            // to ensure "templateId" is required (not null)
            if (templateId == null)
            {
                throw new ArgumentNullException("templateId is a required property for SendMessageToContactRequest and cannot be null");
            }
            this.TemplateId = templateId;
        }

        /// <summary>
        /// Unique identifier of the customer
        /// </summary>
        /// <value>Unique identifier of the customer</value>
        [DataMember(Name = "customerId", IsRequired = true, EmitDefaultValue = true)]
        public string CustomerId { get; set; }

        /// <summary>
        /// Unique identifier of the contact
        /// </summary>
        /// <value>Unique identifier of the contact</value>
        [DataMember(Name = "contactId", IsRequired = true, EmitDefaultValue = true)]
        public string ContactId { get; set; }

        /// <summary>
        /// Unique identifier of the message template
        /// </summary>
        /// <value>Unique identifier of the message template</value>
        [DataMember(Name = "templateId", IsRequired = true, EmitDefaultValue = true)]
        public string TemplateId { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SendMessageToContactRequest {\n");
            sb.Append("  CustomerId: ").Append(CustomerId).Append("\n");
            sb.Append("  ContactId: ").Append(ContactId).Append("\n");
            sb.Append("  TemplateId: ").Append(TemplateId).Append("\n");
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
            return this.Equals(input as SendMessageToContactRequest);
        }

        /// <summary>
        /// Returns true if SendMessageToContactRequest instances are equal
        /// </summary>
        /// <param name="input">Instance of SendMessageToContactRequest to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SendMessageToContactRequest input)
        {
            if (input == null)
            {
                return false;
            }
            return 
                (
                    this.CustomerId == input.CustomerId ||
                    (this.CustomerId != null &&
                    this.CustomerId.Equals(input.CustomerId))
                ) && 
                (
                    this.ContactId == input.ContactId ||
                    (this.ContactId != null &&
                    this.ContactId.Equals(input.ContactId))
                ) && 
                (
                    this.TemplateId == input.TemplateId ||
                    (this.TemplateId != null &&
                    this.TemplateId.Equals(input.TemplateId))
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
                if (this.CustomerId != null)
                {
                    hashCode = (hashCode * 59) + this.CustomerId.GetHashCode();
                }
                if (this.ContactId != null)
                {
                    hashCode = (hashCode * 59) + this.ContactId.GetHashCode();
                }
                if (this.TemplateId != null)
                {
                    hashCode = (hashCode * 59) + this.TemplateId.GetHashCode();
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
