/*
TextHive Core API

TextHive is a unified messaging API that enables developers to seamlessly send messages across multiple channels including SMS and WhatsApp. It provides programmatic management of customer accounts, messaging capabilities with intelligent routing, message delivery, and template management. The API supports creating, updating, and managing customer profiles, sending messages using templates, retrieving contact information, and handling templates across different messaging channels.

API version: 1.1.0
Contact: developers@texthive.khulnasoft.com
*/

// Code generated by Konfig (https://konfigthis.com); DO NOT EDIT.

package texthive


import (
	"context"
	"net/http"
	"net/url"
)

func prepareRequestBefore(
	ctx context.Context,
	path string, method string,
	postBody interface{},
	headerParams map[string]string,
	queryParams url.Values,
	formParams url.Values,
	formFiles []formFile) {
}

func prepareRequestAfter(
	httpRequest *http.Request,
	ctx context.Context) {
}