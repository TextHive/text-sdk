/*
 * TextHive Core API
 * TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.
 *
 * The version of the OpenAPI document: 1.1.0
 * Contact: developers@texthive.khulnasoft.com
 *
 * NOTE: This class is auto generated by Konfig (https://konfigthis.com).
 * Do not edit the class manually.
 */


package com.texthive.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.time.OffsetDateTime;
import java.util.UUID;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import org.apache.commons.lang3.StringUtils;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.texthive.client.JSON;

/**
 * Response model containing template details
 */
@ApiModel(description = "Response model containing template details")@javax.annotation.Generated(value = "Generated by https://konfigthis.com")
public class ResponsesTemplateResponse {
  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private UUID id;

  public static final String SERIALIZED_NAME_CUSTOMER_ID = "customerId";
  @SerializedName(SERIALIZED_NAME_CUSTOMER_ID)
  private UUID customerId;

  public static final String SERIALIZED_NAME_NAME = "name";
  @SerializedName(SERIALIZED_NAME_NAME)
  private String name;

  /**
   * Category of the template (e.g., transactional, marketing)
   */
  @JsonAdapter(CategoryEnum.Adapter.class)
 public enum CategoryEnum {
    TRANSACTIONAL("transactional"),
    
    MARKETING("marketing"),
    
    ALERT("alert");

    private String value;

    CategoryEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static CategoryEnum fromValue(String value) {
      for (CategoryEnum b : CategoryEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<CategoryEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final CategoryEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public CategoryEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return CategoryEnum.fromValue(value);
      }
    }
  }

  public static final String SERIALIZED_NAME_CATEGORY = "category";
  @SerializedName(SERIALIZED_NAME_CATEGORY)
  private CategoryEnum category;

  public static final String SERIALIZED_NAME_RAW_BODY = "rawBody";
  @SerializedName(SERIALIZED_NAME_RAW_BODY)
  private String rawBody;

  public static final String SERIALIZED_NAME_WHATSAPP_TEMPLATE_NAME = "whatsappTemplateName";
  @SerializedName(SERIALIZED_NAME_WHATSAPP_TEMPLATE_NAME)
  private String whatsappTemplateName;

  /**
   * Approval status of WhatsApp template
   */
  @JsonAdapter(WhatsappTemplateStatusEnum.Adapter.class)
 public enum WhatsappTemplateStatusEnum {
    PENDING("pending"),
    
    APPROVED("approved"),
    
    REJECTED("rejected");

    private String value;

    WhatsappTemplateStatusEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static WhatsappTemplateStatusEnum fromValue(String value) {
      for (WhatsappTemplateStatusEnum b : WhatsappTemplateStatusEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<WhatsappTemplateStatusEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final WhatsappTemplateStatusEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public WhatsappTemplateStatusEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return WhatsappTemplateStatusEnum.fromValue(value);
      }
    }
  }

  public static final String SERIALIZED_NAME_WHATSAPP_TEMPLATE_STATUS = "whatsappTemplateStatus";
  @SerializedName(SERIALIZED_NAME_WHATSAPP_TEMPLATE_STATUS)
  private WhatsappTemplateStatusEnum whatsappTemplateStatus;

  public static final String SERIALIZED_NAME_CREATED_AT = "createdAt";
  @SerializedName(SERIALIZED_NAME_CREATED_AT)
  private OffsetDateTime createdAt;

  public static final String SERIALIZED_NAME_UPDATED_AT = "updatedAt";
  @SerializedName(SERIALIZED_NAME_UPDATED_AT)
  private OffsetDateTime updatedAt;

  public ResponsesTemplateResponse() {
  }

  public ResponsesTemplateResponse id(UUID id) {
    
    
    
    
    this.id = id;
    return this;
  }

   /**
   * Unique identifier of the template
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Unique identifier of the template")

  public UUID getId() {
    return id;
  }


  public void setId(UUID id) {
    
    
    
    this.id = id;
  }


  public ResponsesTemplateResponse customerId(UUID customerId) {
    
    
    
    
    this.customerId = customerId;
    return this;
  }

   /**
   * Customer ID associated with the template
   * @return customerId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Customer ID associated with the template")

  public UUID getCustomerId() {
    return customerId;
  }


  public void setCustomerId(UUID customerId) {
    
    
    
    this.customerId = customerId;
  }


  public ResponsesTemplateResponse name(String name) {
    
    
    
    
    this.name = name;
    return this;
  }

   /**
   * Template name
   * @return name
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Template name")

  public String getName() {
    return name;
  }


  public void setName(String name) {
    
    
    
    this.name = name;
  }


  public ResponsesTemplateResponse category(CategoryEnum category) {
    
    
    
    
    this.category = category;
    return this;
  }

   /**
   * Category of the template (e.g., transactional, marketing)
   * @return category
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Category of the template (e.g., transactional, marketing)")

  public CategoryEnum getCategory() {
    return category;
  }


  public void setCategory(CategoryEnum category) {
    
    
    
    this.category = category;
  }


  public ResponsesTemplateResponse rawBody(String rawBody) {
    
    
    
    
    this.rawBody = rawBody;
    return this;
  }

   /**
   * Template content with variable placeholders
   * @return rawBody
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Template content with variable placeholders")

  public String getRawBody() {
    return rawBody;
  }


  public void setRawBody(String rawBody) {
    
    
    
    this.rawBody = rawBody;
  }


  public ResponsesTemplateResponse whatsappTemplateName(String whatsappTemplateName) {
    
    
    
    
    this.whatsappTemplateName = whatsappTemplateName;
    return this;
  }

   /**
   * Associated WhatsApp template name if applicable
   * @return whatsappTemplateName
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Associated WhatsApp template name if applicable")

  public String getWhatsappTemplateName() {
    return whatsappTemplateName;
  }


  public void setWhatsappTemplateName(String whatsappTemplateName) {
    
    
    
    this.whatsappTemplateName = whatsappTemplateName;
  }


  public ResponsesTemplateResponse whatsappTemplateStatus(WhatsappTemplateStatusEnum whatsappTemplateStatus) {
    
    
    
    
    this.whatsappTemplateStatus = whatsappTemplateStatus;
    return this;
  }

   /**
   * Approval status of WhatsApp template
   * @return whatsappTemplateStatus
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Approval status of WhatsApp template")

  public WhatsappTemplateStatusEnum getWhatsappTemplateStatus() {
    return whatsappTemplateStatus;
  }


  public void setWhatsappTemplateStatus(WhatsappTemplateStatusEnum whatsappTemplateStatus) {
    
    
    
    this.whatsappTemplateStatus = whatsappTemplateStatus;
  }


  public ResponsesTemplateResponse createdAt(OffsetDateTime createdAt) {
    
    
    
    
    this.createdAt = createdAt;
    return this;
  }

   /**
   * Template creation timestamp
   * @return createdAt
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Template creation timestamp")

  public OffsetDateTime getCreatedAt() {
    return createdAt;
  }


  public void setCreatedAt(OffsetDateTime createdAt) {
    
    
    
    this.createdAt = createdAt;
  }


  public ResponsesTemplateResponse updatedAt(OffsetDateTime updatedAt) {
    
    
    
    
    this.updatedAt = updatedAt;
    return this;
  }

   /**
   * Last template update timestamp
   * @return updatedAt
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Last template update timestamp")

  public OffsetDateTime getUpdatedAt() {
    return updatedAt;
  }


  public void setUpdatedAt(OffsetDateTime updatedAt) {
    
    
    
    this.updatedAt = updatedAt;
  }

  /**
   * A container for additional, undeclared properties.
   * This is a holder for any undeclared properties as specified with
   * the 'additionalProperties' keyword in the OAS document.
   */
  private Map<String, Object> additionalProperties;

  /**
   * Set the additional (undeclared) property with the specified name and value.
   * If the property does not already exist, create it otherwise replace it.
   *
   * @param key name of the property
   * @param value value of the property
   * @return the ResponsesTemplateResponse instance itself
   */
  public ResponsesTemplateResponse putAdditionalProperty(String key, Object value) {
    if (this.additionalProperties == null) {
        this.additionalProperties = new HashMap<String, Object>();
    }
    this.additionalProperties.put(key, value);
    return this;
  }

  /**
   * Return the additional (undeclared) property.
   *
   * @return a map of objects
   */
  public Map<String, Object> getAdditionalProperties() {
    return additionalProperties;
  }

  /**
   * Return the additional (undeclared) property with the specified name.
   *
   * @param key name of the property
   * @return an object
   */
  public Object getAdditionalProperty(String key) {
    if (this.additionalProperties == null) {
        return null;
    }
    return this.additionalProperties.get(key);
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponsesTemplateResponse responsesTemplateResponse = (ResponsesTemplateResponse) o;
    return Objects.equals(this.id, responsesTemplateResponse.id) &&
        Objects.equals(this.customerId, responsesTemplateResponse.customerId) &&
        Objects.equals(this.name, responsesTemplateResponse.name) &&
        Objects.equals(this.category, responsesTemplateResponse.category) &&
        Objects.equals(this.rawBody, responsesTemplateResponse.rawBody) &&
        Objects.equals(this.whatsappTemplateName, responsesTemplateResponse.whatsappTemplateName) &&
        Objects.equals(this.whatsappTemplateStatus, responsesTemplateResponse.whatsappTemplateStatus) &&
        Objects.equals(this.createdAt, responsesTemplateResponse.createdAt) &&
        Objects.equals(this.updatedAt, responsesTemplateResponse.updatedAt)&&
        Objects.equals(this.additionalProperties, responsesTemplateResponse.additionalProperties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, customerId, name, category, rawBody, whatsappTemplateName, whatsappTemplateStatus, createdAt, updatedAt, additionalProperties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponsesTemplateResponse {\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    customerId: ").append(toIndentedString(customerId)).append("\n");
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    category: ").append(toIndentedString(category)).append("\n");
    sb.append("    rawBody: ").append(toIndentedString(rawBody)).append("\n");
    sb.append("    whatsappTemplateName: ").append(toIndentedString(whatsappTemplateName)).append("\n");
    sb.append("    whatsappTemplateStatus: ").append(toIndentedString(whatsappTemplateStatus)).append("\n");
    sb.append("    createdAt: ").append(toIndentedString(createdAt)).append("\n");
    sb.append("    updatedAt: ").append(toIndentedString(updatedAt)).append("\n");
    sb.append("    additionalProperties: ").append(toIndentedString(additionalProperties)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("id");
    openapiFields.add("customerId");
    openapiFields.add("name");
    openapiFields.add("category");
    openapiFields.add("rawBody");
    openapiFields.add("whatsappTemplateName");
    openapiFields.add("whatsappTemplateStatus");
    openapiFields.add("createdAt");
    openapiFields.add("updatedAt");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to ResponsesTemplateResponse
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (!ResponsesTemplateResponse.openapiRequiredFields.isEmpty()) { // has required fields but JSON object is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ResponsesTemplateResponse is not found in the empty JSON string", ResponsesTemplateResponse.openapiRequiredFields.toString()));
        }
      }
      if ((jsonObj.get("id") != null && !jsonObj.get("id").isJsonNull()) && !jsonObj.get("id").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `id` to be a primitive type in the JSON string but got `%s`", jsonObj.get("id").toString()));
      }
      if ((jsonObj.get("customerId") != null && !jsonObj.get("customerId").isJsonNull()) && !jsonObj.get("customerId").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `customerId` to be a primitive type in the JSON string but got `%s`", jsonObj.get("customerId").toString()));
      }
      if ((jsonObj.get("name") != null && !jsonObj.get("name").isJsonNull()) && !jsonObj.get("name").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `name` to be a primitive type in the JSON string but got `%s`", jsonObj.get("name").toString()));
      }
      if ((jsonObj.get("category") != null && !jsonObj.get("category").isJsonNull()) && !jsonObj.get("category").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `category` to be a primitive type in the JSON string but got `%s`", jsonObj.get("category").toString()));
      }
      if ((jsonObj.get("rawBody") != null && !jsonObj.get("rawBody").isJsonNull()) && !jsonObj.get("rawBody").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `rawBody` to be a primitive type in the JSON string but got `%s`", jsonObj.get("rawBody").toString()));
      }
      if ((jsonObj.get("whatsappTemplateName") != null && !jsonObj.get("whatsappTemplateName").isJsonNull()) && !jsonObj.get("whatsappTemplateName").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `whatsappTemplateName` to be a primitive type in the JSON string but got `%s`", jsonObj.get("whatsappTemplateName").toString()));
      }
      if ((jsonObj.get("whatsappTemplateStatus") != null && !jsonObj.get("whatsappTemplateStatus").isJsonNull()) && !jsonObj.get("whatsappTemplateStatus").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `whatsappTemplateStatus` to be a primitive type in the JSON string but got `%s`", jsonObj.get("whatsappTemplateStatus").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ResponsesTemplateResponse.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ResponsesTemplateResponse' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ResponsesTemplateResponse> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ResponsesTemplateResponse.class));

       return (TypeAdapter<T>) new TypeAdapter<ResponsesTemplateResponse>() {
           @Override
           public void write(JsonWriter out, ResponsesTemplateResponse value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             obj.remove("additionalProperties");
             // serialize additonal properties
             if (value.getAdditionalProperties() != null) {
               for (Map.Entry<String, Object> entry : value.getAdditionalProperties().entrySet()) {
                 if (entry.getValue() instanceof String)
                   obj.addProperty(entry.getKey(), (String) entry.getValue());
                 else if (entry.getValue() instanceof Number)
                   obj.addProperty(entry.getKey(), (Number) entry.getValue());
                 else if (entry.getValue() instanceof Boolean)
                   obj.addProperty(entry.getKey(), (Boolean) entry.getValue());
                 else if (entry.getValue() instanceof Character)
                   obj.addProperty(entry.getKey(), (Character) entry.getValue());
                 else if (entry.getValue() == null) {
                   obj.addProperty(entry.getKey(), (String) null);
                 } else {
                   obj.add(entry.getKey(), gson.toJsonTree(entry.getValue()).getAsJsonObject());
                 }
               }
             }
             elementAdapter.write(out, obj);
           }

           @Override
           public ResponsesTemplateResponse read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             // store additional fields in the deserialized instance
             ResponsesTemplateResponse instance = thisAdapter.fromJsonTree(jsonObj);
             for (Map.Entry<String, JsonElement> entry : jsonObj.entrySet()) {
               if (!openapiFields.contains(entry.getKey())) {
                 if (entry.getValue().isJsonPrimitive()) { // primitive type
                   if (entry.getValue().getAsJsonPrimitive().isString())
                     instance.putAdditionalProperty(entry.getKey(), entry.getValue().getAsString());
                   else if (entry.getValue().getAsJsonPrimitive().isNumber())
                     instance.putAdditionalProperty(entry.getKey(), entry.getValue().getAsNumber());
                   else if (entry.getValue().getAsJsonPrimitive().isBoolean())
                     instance.putAdditionalProperty(entry.getKey(), entry.getValue().getAsBoolean());
                   else
                     throw new IllegalArgumentException(String.format("The field `%s` has unknown primitive type. Value: %s", entry.getKey(), entry.getValue().toString()));
                 } else if (entry.getValue().isJsonArray()) {
                     instance.putAdditionalProperty(entry.getKey(), gson.fromJson(entry.getValue(), List.class));
                 } else { // JSON object
                     instance.putAdditionalProperty(entry.getKey(), gson.fromJson(entry.getValue(), HashMap.class));
                 }
               }
             }
             return instance;
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of ResponsesTemplateResponse given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of ResponsesTemplateResponse
  * @throws IOException if the JSON string is invalid with respect to ResponsesTemplateResponse
  */
  public static ResponsesTemplateResponse fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ResponsesTemplateResponse.class);
  }

 /**
  * Convert an instance of ResponsesTemplateResponse to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

