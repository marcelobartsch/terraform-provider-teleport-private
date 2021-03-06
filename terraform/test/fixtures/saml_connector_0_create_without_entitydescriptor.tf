resource "teleport_saml_connector" "test" {
    metadata = {
        name    = "test"
        expires = "2022-10-12T07:20:50Z"
        labels  = {
            example = "yes"
        }
    }

    spec = {
        attributes_to_roles = [{
            name = "groups"
            roles = ["admin"]
            value = "okta-admin"
        }]

        acs = "https://example.com/v1/webapi/saml/acs"
    }
}