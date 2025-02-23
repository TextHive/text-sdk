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
    /// Detailed SMS contact information including validation and formatting details
    /// </summary>
    [DataContract(Name = "SMSPayload")]
    public partial class SMSPayload : IEquatable<SMSPayload>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SMSPayload" /> class.
        /// </summary>
        /// <param name="id">Unique identifier for the phone number record.</param>
        /// <param name="sentId">Sent platform identifier.</param>
        /// <param name="phoneNumber">Phone number in E.164 format.</param>
        /// <param name="countryCode">ISO country code for the phone number.</param>
        /// <param name="validNumber">Indicates if the phone number is valid for SMS delivery.</param>
        /// <param name="nationalFormat">Locally formatted version of the phone number.</param>
        /// <param name="payload">Additional payload information in JSON format.</param>
        public SMSPayload(string id = default(string), string sentId = default(string), string phoneNumber = default(string), string countryCode = default(string), bool validNumber = default(bool), string nationalFormat = default(string), string payload = default(string))
        {
            this.Id = id;
            this.SentId = sentId;
            this.PhoneNumber = phoneNumber;
            this.CountryCode = countryCode;
            this.ValidNumber = validNumber;
            this.NationalFormat = nationalFormat;
            this.Payload = payload;
        }

        /// <summary>
        /// Unique identifier for the phone number record
        /// </summary>
        /// <value>Unique identifier for the phone number record</value>
        [DataMember(Name = "id", EmitDefaultValue = false)]
        public string Id { get; set; }

        /// <summary>
        /// Sent platform identifier
        /// </summary>
        /// <value>Sent platform identifier</value>
        [DataMember(Name = "sentId", EmitDefaultValue = false)]
        public string SentId { get; set; }

        /// <summary>
        /// Phone number in E.164 format
        /// </summary>
        /// <value>Phone number in E.164 format</value>
        [DataMember(Name = "phoneNumber", EmitDefaultValue = false)]
        public string PhoneNumber { get; set; }

        /// <summary>
        /// ISO country code for the phone number
        /// </summary>
        /// <value>ISO country code for the phone number</value>
        [DataMember(Name = "countryCode", EmitDefaultValue = false)]
        public string CountryCode { get; set; }

        /// <summary>
        /// Indicates if the phone number is valid for SMS delivery
        /// </summary>
        /// <value>Indicates if the phone number is valid for SMS delivery</value>
        [DataMember(Name = "validNumber", EmitDefaultValue = true)]
        public bool ValidNumber { get; set; }

        /// <summary>
        /// Locally formatted version of the phone number
        /// </summary>
        /// <value>Locally formatted version of the phone number</value>
        [DataMember(Name = "nationalFormat", EmitDefaultValue = false)]
        public string NationalFormat { get; set; }

        /// <summary>
        /// Additional payload information in JSON format
        /// </summary>
        /// <value>Additional payload information in JSON format</value>
        [DataMember(Name = "payload", EmitDefaultValue = false)]
        public string Payload { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SMSPayload {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  SentId: ").Append(SentId).Append("\n");
            sb.Append("  PhoneNumber: ").Append(PhoneNumber).Append("\n");
            sb.Append("  CountryCode: ").Append(CountryCode).Append("\n");
            sb.Append("  ValidNumber: ").Append(ValidNumber).Append("\n");
            sb.Append("  NationalFormat: ").Append(NationalFormat).Append("\n");
            sb.Append("  Payload: ").Append(Payload).Append("\n");
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
            return this.Equals(input as SMSPayload);
        }

        /// <summary>
        /// Returns true if SMSPayload instances are equal
        /// </summary>
        /// <param name="input">Instance of SMSPayload to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(SMSPayload input)
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
                    this.SentId == input.SentId ||
                    (this.SentId != null &&
                    this.SentId.Equals(input.SentId))
                ) && 
                (
                    this.PhoneNumber == input.PhoneNumber ||
                    (this.PhoneNumber != null &&
                    this.PhoneNumber.Equals(input.PhoneNumber))
                ) && 
                (
                    this.CountryCode == input.CountryCode ||
                    (this.CountryCode != null &&
                    this.CountryCode.Equals(input.CountryCode))
                ) && 
                (
                    this.ValidNumber == input.ValidNumber ||
                    this.ValidNumber.Equals(input.ValidNumber)
                ) && 
                (
                    this.NationalFormat == input.NationalFormat ||
                    (this.NationalFormat != null &&
                    this.NationalFormat.Equals(input.NationalFormat))
                ) && 
                (
                    this.Payload == input.Payload ||
                    (this.Payload != null &&
                    this.Payload.Equals(input.Payload))
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
                if (this.SentId != null)
                {
                    hashCode = (hashCode * 59) + this.SentId.GetHashCode();
                }
                if (this.PhoneNumber != null)
                {
                    hashCode = (hashCode * 59) + this.PhoneNumber.GetHashCode();
                }
                if (this.CountryCode != null)
                {
                    hashCode = (hashCode * 59) + this.CountryCode.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.ValidNumber.GetHashCode();
                if (this.NationalFormat != null)
                {
                    hashCode = (hashCode * 59) + this.NationalFormat.GetHashCode();
                }
                if (this.Payload != null)
                {
                    hashCode = (hashCode * 59) + this.Payload.GetHashCode();
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
