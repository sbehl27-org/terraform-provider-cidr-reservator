package provider

import (
	"context"
	"github.com/hashicorp/terraform-plugin-sdk/v2/diag"
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
)

func New(version string) func() *schema.Provider {
	return func() *schema.Provider {
		return &schema.Provider{
			Schema: map[string]*schema.Schema{
				"reservator-bucket": {
					Type:     schema.TypeString,
					Required: true,
				},
			},
			ResourcesMap: map[string]*schema.Resource{
				"network-request": resourceServer(),
			},
			ConfigureContextFunc: providerConfigure,
		}
	}
}

func providerConfigure(ctx context.Context, data *schema.ResourceData) (interface{}, diag.Diagnostics) {
	cidrProviderBucket := data.Get("cidr_provider_bucket").(string)
	var diags diag.Diagnostics
	if cidrProviderBucket == "" {
		return nil, diag.Errorf("cidr_provider_bucket is not set!")
	}

	return cidrProviderBucket, diags
}
